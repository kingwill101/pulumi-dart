import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_aws/pulumi_aws.dart' as aws;

class ExampleStack extends pulumi.Stack {
  late final pulumi.Output<String> dbEndpoint;
  late final pulumi.Output<String> dbPort;
  late final pulumi.Output<String> dbAddress;
  late final pulumi.Output<String> dbUsernameOut;
  late final pulumi.Output<String> dbPasswordOut;
  late final pulumi.Output<String> dbNameOut;

  ExampleStack() {
    final config = pulumi.Config();
    final username = config.require('dbUsername');
    final password = config.require('dbPassword');
    final dbName = config.require('dbName');
    final networkingStack = pulumi.StackReference(config.require('networkingStack'));

    final subnetIds = networkingStack
        .requireOutput(pulumi.Input.fromValue('dataVpcPrivateSubnetIds'))
        .apply<List<String>>((value) => (value as List).cast<String>());
    final peeredSgId = networkingStack
        .requireOutput(pulumi.Input.fromValue('peeredSecurityGroupId'))
        .apply<String>((value) => value as String);

    final baseTags = <String, String>{
      'Project': 'Pulumi Demo',
      'PulumiStack': pulumi.Deployment.instance.stackName,
    };

    final subnetGroup = aws.rds.SubnetGroup(
      'db-subnet-group',
      args: aws.rds.SubnetGroupArgs(
        subnetIds: subnetIds,
        tags: {...baseTags, 'Name': '${baseTags['Project']} DB Subnet Group'},
      ),
    );

    final rds = aws.rds.Instance(
      'db-instance-rds',
      args: aws.rds.InstanceArgs(
        allocatedStorage: 40,
        dbSubnetGroupName: subnetGroup.name,
        engine: 'postgres',
        engineVersion: '11.4',
        instanceClass: aws.rds.InstanceType.r3Large.value,
        username: username,
        password: password,
        dbName: dbName,
        storageType: 'gp2',
        backupRetentionPeriod: 7,
        backupWindow: '00:00-01:00',
        maintenanceWindow: 'Mon:02:00-Mon:04:00',
        skipFinalSnapshot: true,
        vpcSecurityGroupIds: pulumi.Output
            .all<String>([peeredSgId])
            .apply<List<String>>((ids) => ids),
        tags: {...baseTags, 'Name': '${baseTags['Project']} DB Instance'},
      ),
    );

    dbEndpoint = rds.endpoint;
    dbPort = rds.port.apply<String>((port) => port.toString());
    dbAddress = rds.address;
    dbUsernameOut = pulumi.Output.create(username);
    dbPasswordOut = pulumi.Output.create(password);
    dbNameOut = pulumi.Output.create(dbName);
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() {
    return [
      pulumi.OutputProperty('dbEndpoint', dbEndpoint),
      pulumi.OutputProperty('dbPort', dbPort),
      pulumi.OutputProperty('dbAddress', dbAddress),
      pulumi.OutputProperty('dbUsername', dbUsernameOut),
      pulumi.OutputProperty('dbPassword', dbPasswordOut),
      pulumi.OutputProperty('dbName', dbNameOut),
    ];
  }
}
