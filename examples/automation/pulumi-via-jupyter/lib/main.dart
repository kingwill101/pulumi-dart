import 'dart:io';

import 'package:pulumi/automation.dart' as automation;

Future<void> main(List<String> args) async {
  final workflow = args.isEmpty ? 'static-website' : args.first.trim();
  final destroy = args.length > 1 && args[1] == 'destroy';
  final passphrase =
      Platform.environment['PULUMI_CONFIG_PASSPHRASE'] ?? 'pulumi-dart-dev';
  final workDir = '${Directory.current.path}/.pulumi-via-jupyter';

  switch (workflow) {
    case 'static-website':
      await _runStaticWebsiteWorkflow(
        destroy: destroy,
        passphrase: passphrase,
        workDir: workDir,
      );
      return;
    case 'database-migration':
      await _runDatabaseMigrationWorkflow(
        destroy: destroy,
        passphrase: passphrase,
        workDir: workDir,
      );
      return;
    default:
      throw ArgumentError(
        'unknown workflow "$workflow"; use "static-website" or "database-migration"',
      );
  }
}

Future<void> _runStaticWebsiteWorkflow({
  required bool destroy,
  required String passphrase,
  required String workDir,
}) async {
  final stack = await automation.LocalWorkspace.createOrSelectInlineStack(
    automation.InlineProgramArgs(
      stackName: 'dev',
      projectName: 'pulumi-via-jupyter-static',
      workDir: workDir,
      description: 'Notebook-style static website automation workflow',
      program: _staticWebsiteSource(),
    ),
    options: automation.LocalWorkspaceOptions(
      environmentVariables: <String, String>{
        'PULUMI_CONFIG_PASSPHRASE': passphrase,
      },
    ),
  );

  await _ensureInlineDependency(
    workDir: workDir,
    dependencyName: 'pulumi_random',
    constraint: '^4.19.1',
  );
  await stack.workspace.installPlugin('random', 'v4.19.1');

  if (destroy) {
    await stack.destroy(yes: true, skipPreview: true);
    stdout.writeln('Static website workflow destroyed');
    return;
  }

  await stack.up();
  final outputs = await stack.outputs(showSecrets: true);
  stdout.writeln('Notebook output (websiteUrl): ${outputs['websiteUrl']}');
}

Future<void> _runDatabaseMigrationWorkflow({
  required bool destroy,
  required String passphrase,
  required String workDir,
}) async {
  final stack = await automation.LocalWorkspace.createOrSelectInlineStack(
    automation.InlineProgramArgs(
      stackName: 'dev-db',
      projectName: 'pulumi-via-jupyter-db',
      workDir: workDir,
      description: 'Notebook-style database migration automation workflow',
      program: _databaseMigrationSource(),
    ),
    options: automation.LocalWorkspaceOptions(
      environmentVariables: <String, String>{
        'PULUMI_CONFIG_PASSPHRASE': passphrase,
      },
    ),
  );

  await _ensureInlineDependency(
    workDir: workDir,
    dependencyName: 'pulumi_random',
    constraint: '^4.19.1',
  );
  await stack.workspace.installPlugin('random', 'v4.19.1');

  if (destroy) {
    await stack.destroy(yes: true, skipPreview: true);
    stdout.writeln('Database migration workflow destroyed');
    return;
  }

  await stack.up();
  final outputs = await stack.outputs(showSecrets: true);
  stdout.writeln('Notebook output (dbHost): ${outputs['dbHost']}');
  stdout.writeln('Notebook output (dbName): ${outputs['dbName']}');
}

Future<void> _ensureInlineDependency({
  required String workDir,
  required String dependencyName,
  required String constraint,
}) async {
  final pubspec = File('$workDir/pubspec.yaml');
  if (!await pubspec.exists()) {
    return;
  }
  final content = await pubspec.readAsString();
  if (content.contains('$dependencyName:')) {
    return;
  }
  final updated = content.replaceFirst(
    'dependencies:\n',
    'dependencies:\n  $dependencyName: $constraint\n',
  );
  await pubspec.writeAsString(updated);
}

String _staticWebsiteSource() {
  return '''
import 'package:pulumi/pulumi.dart';
import 'package:pulumi_random/pulumi_random.dart' as random;

class StaticWebsiteStack extends Stack {
  late final Output<Object?> websiteUrl;

  StaticWebsiteStack() : super() {
    final endpoint = random.RandomPet('website-endpoint');
    websiteUrl = endpoint.id.apply<Object?>((value) => 'https://\$value.example.internal');
  }

  @override
  List<OutputProperty> getOutputProperties() {
    return <OutputProperty>[
      OutputProperty('websiteUrl', websiteUrl),
    ];
  }
}

Future<void> main() async {
  await Deployment.runOrThrow(() => StaticWebsiteStack());
}
''';
}

String _databaseMigrationSource() {
  return '''
import 'package:pulumi/pulumi.dart';
import 'package:pulumi_random/pulumi_random.dart' as random;

class DatabaseMigrationStack extends Stack {
  late final Output<Object?> dbHost;
  late final Output<Object?> dbName;

  DatabaseMigrationStack() : super() {
    final host = random.RandomPet('db-host');
    final name = random.RandomPet('db-name');
    dbHost = host.id.apply<Object?>((value) => '\$value.internal');
    dbName = name.id.apply<Object?>((value) => 'analytics_\$value');
  }

  @override
  List<OutputProperty> getOutputProperties() {
    return <OutputProperty>[
      OutputProperty('dbHost', dbHost),
      OutputProperty('dbName', dbName),
    ];
  }
}

Future<void> main() async {
  await Deployment.runOrThrow(() => DatabaseMigrationStack());
}
''';
}
