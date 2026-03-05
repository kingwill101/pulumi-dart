import 'dart:io';

import 'package:mysql_client/mysql_client.dart';
import 'package:pulumi/automation.dart' as automation;

Future<void> main(List<String> args) async {
  final destroy = args.isNotEmpty && args.first == 'destroy';
  final stackName = Platform.environment['PULUMI_STACK'] ?? 'dev1';
  final passphrase =
      Platform.environment['PULUMI_CONFIG_PASSPHRASE'] ?? 'pulumi-dart-dev';
  final awsRegion = Platform.environment['AWS_REGION']?.trim() ?? 'us-east-1';

  final workDir = '${Directory.current.path}/.inline-database-migration';
  final stack = await automation.LocalWorkspace.createOrSelectInlineStack(
    automation.InlineProgramArgs(
      stackName: stackName,
      projectName: 'databaseMigration',
      workDir: workDir,
      description: 'Pulumi Dart inline database migration example',
      program: _inlineProgramSource(),
    ),
    options: automation.LocalWorkspaceOptions(
      environmentVariables: <String, String>{
        'PULUMI_CONFIG_PASSPHRASE': passphrase,
      },
    ),
  );

  stdout.writeln('Created/Selected stack "$stackName"');
  await _ensureInlineAwsDependency(workDir);
  await stack.workspace.installPlugin('aws', 'v7.20.0');
  stdout.writeln('Successfully installed AWS plugin');

  await stack.setConfig('aws:region', awsRegion);
  stdout.writeln('Successfully set config');
  stdout.writeln('Starting refresh');
  await stack.refresh();
  stdout.writeln('Refresh succeeded!');

  if (destroy) {
    stdout.writeln('Starting stack destroy');
    await stack.destroy(yes: true, skipPreview: true);
    stdout.writeln('Stack successfully destroyed');
    return;
  }

  stdout.writeln('Starting update');
  await stack.up();
  stdout.writeln('Update succeeded!');

  final outputs = await stack.outputs(showSecrets: true);
  final host = '${outputs['host'] ?? ''}'.trim();
  final dbName = '${outputs['dbName'] ?? ''}'.trim();
  final dbUser = '${outputs['dbUser'] ?? ''}'.trim();
  final dbPass = '${outputs['dbPass'] ?? ''}';
  if (host.isEmpty || dbName.isEmpty || dbUser.isEmpty || dbPass.isEmpty) {
    stderr.writeln('failed to read required database outputs');
    exitCode = 1;
    return;
  }

  stdout.writeln('host: $host');
  await _runMigration(
    host: host,
    dbName: dbName,
    dbUser: dbUser,
    dbPass: dbPass,
  );
}

Future<void> _runMigration({
  required String host,
  required String dbName,
  required String dbUser,
  required String dbPass,
}) async {
  MySQLConnection? conn;
  try {
    conn = await _connectWithRetry(
      host: host,
      dbName: dbName,
      dbUser: dbUser,
      dbPass: dbPass,
    );

    stdout.writeln('creating table...');
    await conn.execute('''
CREATE TABLE IF NOT EXISTS hello_pulumi(
  id int(9) NOT NULL,
  color varchar(14) NOT NULL,
  PRIMARY KEY(id)
)
''');
    stdout.writeln('table created!');

    stdout.writeln('inserting initial rows...');
    await conn.execute('''
INSERT IGNORE INTO hello_pulumi (id, color)
VALUES
  (1, 'Purple'),
  (2, 'Violet'),
  (3, 'Plum')
''');
    stdout.writeln('rows inserted!');

    stdout.writeln('querying to verify data...');
    final result = await conn.execute(
      'SELECT COUNT(*) AS count FROM hello_pulumi',
    );
    final row = result.rows.isEmpty ? null : result.rows.first;
    final count = row == null ? '0' : (row.assoc()['count'] ?? '0');
    stdout.writeln('$count rows read!');
    stdout.writeln('database, tables, and rows successfuly configured!');
  } finally {
    await conn?.close();
  }
}

Future<MySQLConnection> _connectWithRetry({
  required String host,
  required String dbName,
  required String dbUser,
  required String dbPass,
}) async {
  Object? lastError;
  for (var i = 0; i < 30; i++) {
    try {
      final conn = await MySQLConnection.createConnection(
        host: host,
        port: 3306,
        userName: dbUser,
        password: dbPass,
        databaseName: dbName,
        secure: false,
      );
      await conn.connect();
      return conn;
    } catch (error) {
      lastError = error;
      await Future<void>.delayed(const Duration(seconds: 10));
    }
  }
  throw StateError('failed to connect to db after retries: $lastError');
}

Future<void> _ensureInlineAwsDependency(String workDir) async {
  final pubspec = File('$workDir/pubspec.yaml');
  if (!await pubspec.exists()) {
    return;
  }
  final content = await pubspec.readAsString();
  if (content.contains('pulumi_aws:')) {
    return;
  }
  final updated = content.replaceFirst(
    'dependencies:\n',
    'dependencies:\n  pulumi_aws: ^7.20.0\n',
  );
  await pubspec.writeAsString(updated);
}

String _inlineProgramSource() {
  return '''
import 'package:pulumi/pulumi.dart';
import 'package:pulumi_aws/pulumi_aws.dart' as aws;

class DatabaseMigrationStack extends Stack {
  late final Output<Object?> host;
  late final Output<Object?> dbName;
  late final Output<Object?> dbUser;
  late final Output<Object?> dbPass;

  DatabaseMigrationStack() : super('database-migration-stack') {
    final defaultVpc = Output.create(
      aws.ec2.getVpc(aws.ec2.GetVpcArgs(default_: Input.fromValue(true))),
    );

    final subnetIds = Input.fromOutput(
      defaultVpc.apply((vpcFuture) async {
        final vpc = await vpcFuture;
        final subnets = await aws.ec2.getSubnets(
          aws.ec2.GetSubnetsArgs(
            filters: Input.fromValue(<aws.ec2.GetSubnetsFilter>[
              aws.ec2.GetSubnetsFilter(
                name: Input.fromValue('vpc-id'),
                values: Input.fromValue(<String>[vpc.id]),
              ),
            ]),
          ),
        );
        return subnets.ids;
      }),
    );

    final subnetGroup = aws.rds.SubnetGroup(
      'dbsubnet',
      aws.rds.SubnetGroupArgs(
        subnetIds: subnetIds,
      ),
    );

    final securityGroup = aws.ec2.SecurityGroup(
        'web-sg',
        aws.ec2.SecurityGroupArgs(
          vpcId: Input.fromOutput(
            defaultVpc.apply((vpcFuture) async => (await vpcFuture).id),
          ),
          egress: Input.fromValue(<aws.ec2.SecurityGroupEgressArgs>[
            aws.ec2.SecurityGroupEgressArgs(
              protocol: Input.fromValue('-1'),
              fromPort: Input.fromValue(0),
              toPort: Input.fromValue(0),
              cidrBlocks: Input.fromValue(<String>['0.0.0.0/0']),
            ),
          ]),
          ingress: Input.fromValue(<aws.ec2.SecurityGroupIngressArgs>[
            aws.ec2.SecurityGroupIngressArgs(
              protocol: Input.fromValue('-1'),
              fromPort: Input.fromValue(0),
              toPort: Input.fromValue(0),
              cidrBlocks: Input.fromValue(<String>['0.0.0.0/0']),
            ),
          ]),
        ),
      );

    const databaseName = 'hellosql';
    const databaseUser = 'hellosql';
    const databasePass = 'hellosql';

    final cluster = aws.rds.Cluster(
      'db',
      aws.rds.ClusterArgs(
        engine: Input.fromValue('aurora-mysql'),
        engineVersion: Input.fromValue('5.7.mysql_aurora.2.12.1'),
        databaseName: Input.fromValue(databaseName),
        masterUsername: Input.fromValue(databaseUser),
        masterPassword: Input.fromValue(databasePass),
        skipFinalSnapshot: Input.fromValue(true),
        dbSubnetGroupName: subnetGroup.name,
        vpcSecurityGroupIds: Input.fromOutput(
          securityGroup.id.apply((id) => <String>[id]),
        ),
      ),
    );

    aws.rds.ClusterInstance(
      'dbInstance',
      aws.rds.ClusterInstanceArgs(
        clusterIdentifier: cluster.clusterIdentifier,
        instanceClass: Input.fromValue('db.t3.small'),
        engine: Input.fromValue('aurora-mysql'),
        engineVersion: Input.fromValue('5.7.mysql_aurora.2.12.1'),
        publiclyAccessible: Input.fromValue(true),
        dbSubnetGroupName: subnetGroup.name,
      ),
    );

    host = cluster.endpoint.apply<Object?>((value) => value);
    dbName = Output.fromInput(databaseName);
    dbUser = Output.fromInput(databaseUser);
    dbPass = Output.fromInput(databasePass);
  }

  @override
  List<OutputProperty> getOutputProperties() {
    return <OutputProperty>[
      OutputProperty('host', host),
      OutputProperty('dbName', dbName),
      OutputProperty('dbUser', dbUser),
      OutputProperty('dbPass', dbPass),
    ];
  }
}

Future<void> main() async {
  await Deployment.runOrThrow(() => DatabaseMigrationStack());
}
''';
}
