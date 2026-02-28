// ignore_for_file: unused_element, unnecessary_cast

class FleetRuntimeConfigurationServerProcess {
  /// Number of server processes using this configuration to run concurrently on an instance.
  final int concurrentExecutions;

  /// Location of the server executable in a game build. All game builds are installed on instances at the root : for Windows instances `C:\game`, and for Linux instances `/local/game`.
  final String launchPath;

  /// Optional list of parameters to pass to the server executable on launch.
  final String? parameters;

  /// Creates a new [FleetRuntimeConfigurationServerProcess].
  /// [concurrentExecutions] Number of server processes using this configuration to run concurrently on an instance.
  /// [launchPath] Location of the server executable in a game build. All game builds are installed on instances at the root : for Windows instances `C:\game`, and for Linux instances `/local/game`.
  /// [parameters] Optional list of parameters to pass to the server executable on launch.
  FleetRuntimeConfigurationServerProcess({
    required this.concurrentExecutions,
    required this.launchPath,
    this.parameters,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['concurrentExecutions'] = concurrentExecutions;
    map['launchPath'] = launchPath;
    final parametersValue = parameters;
    if (parametersValue != null) {
      map['parameters'] = parametersValue;
    }
    return map;
  }

  factory FleetRuntimeConfigurationServerProcess.fromMap(
      Map<String, dynamic> map) {
    return FleetRuntimeConfigurationServerProcess(
      concurrentExecutions: map['concurrentExecutions'] as int,
      launchPath: map['launchPath'] as String,
      parameters:
          map['parameters'] == null ? null : map['parameters'] as String,
    );
  }
}
