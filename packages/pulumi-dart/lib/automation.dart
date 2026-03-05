// ignore_for_file: unnecessary_library_name

/// Pulumi Automation API for Dart.
///
/// This library provides a Dart interface for driving Pulumi CLI workflows in
/// code. It follows the same conceptual model as other Pulumi language SDKs:
/// a [LocalWorkspace] that owns execution context and a [Stack] handle for
/// lifecycle operations.
///
/// ## Main entrypoints
/// - [LocalWorkspace]: manage plugins, config, environment, and stack state.
/// - [Stack]: run `preview`, `up`, `refresh`, `destroy`, and output queries.
/// - [LocalProgramArgs]: target an existing Pulumi program on disk.
/// - [InlineProgramArgs]: define a Pulumi program directly in Dart code.
///
/// Use this library when you want Pulumi to be one subsystem in a larger Dart
/// application, CI coordinator, deployment service, or developer tool.
///
/// ## Example
/// ```dart
/// import 'package:pulumi/automation.dart' as automation;
///
/// Future<void> main() async {
///   final stack = await automation.LocalWorkspace.createOrSelectStack(
///     const automation.LocalProgramArgs(
///       stackName: 'dev',
///       workDir: '.',
///     ),
///     options: const automation.LocalWorkspaceOptions(
///       environmentVariables: {
///         'PULUMI_CONFIG_PASSPHRASE': 'pulumi-dart-dev',
///       },
///     ),
///   );
///
///   await stack.setConfig('name', 'dart');
///   await stack.preview();
/// }
/// ```
///
/// For normal infrastructure programs invoked by the Pulumi CLI, import
/// `package:pulumi/pulumi.dart` instead.
library automation;

export 'src/automation/command.dart';
export 'src/automation/config.dart';
export 'src/automation/events.dart';
export 'src/automation/local_workspace.dart';
export 'src/automation/operation_results.dart';
export 'src/automation/remote_workspace.dart';
export 'src/automation/settings.dart';
export 'src/automation/stack.dart';
export 'src/automation/version.dart';
