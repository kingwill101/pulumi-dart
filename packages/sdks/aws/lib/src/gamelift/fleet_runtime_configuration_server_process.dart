// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FleetRuntimeConfigurationServerProcess {
  /// Number of server processes using this configuration to run concurrently on an instance.
  final pulumi.Input<int> concurrentExecutions;
  /// Location of the server executable in a game build. All game builds are installed on instances at the root : for Windows instances `C:\game`, and for Linux instances `/local/game`.
  final pulumi.Input<String> launchPath;
  /// Optional list of parameters to pass to the server executable on launch.
  final pulumi.Input<String>? parameters;

  /// Creates a new [FleetRuntimeConfigurationServerProcess].
  /// [concurrentExecutions] Number of server processes using this configuration to run concurrently on an instance.
  /// [launchPath] Location of the server executable in a game build. All game builds are installed on instances at the root : for Windows instances `C:\game`, and for Linux instances `/local/game`.
  /// [parameters] Optional list of parameters to pass to the server executable on launch.
  const FleetRuntimeConfigurationServerProcess({
    required this.concurrentExecutions,
    required this.launchPath,
    this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'concurrentExecutions': concurrentExecutions,
      'launchPath': launchPath,
      'parameters': ?parameters,
    };
  }

  factory FleetRuntimeConfigurationServerProcess.fromMap(Map<String, dynamic> map) {
    return FleetRuntimeConfigurationServerProcess(
      concurrentExecutions: pulumi.Input.fromValue(map['concurrentExecutions'] as int),
      launchPath: pulumi.Input.fromValue(map['launchPath'] as String),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
