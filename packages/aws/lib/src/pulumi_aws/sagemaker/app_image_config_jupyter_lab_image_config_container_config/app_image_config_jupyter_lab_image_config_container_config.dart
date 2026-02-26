// ignore_for_file: unused_element, unnecessary_cast

class AppImageConfigJupyterLabImageConfigContainerConfig {
  /// The arguments for the container when you're running the application.
  final List<String>? containerArguments;

  /// The entrypoint used to run the application in the container.
  final List<String>? containerEntrypoints;

  /// The environment variables to set in the container.
  final Map<String, String>? containerEnvironmentVariables;

  AppImageConfigJupyterLabImageConfigContainerConfig({
    this.containerArguments,
    this.containerEntrypoints,
    this.containerEnvironmentVariables,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final containerArgumentsValue = containerArguments;
    if (containerArgumentsValue != null) {
      map['containerArguments'] = containerArgumentsValue;
    }
    final containerEntrypointsValue = containerEntrypoints;
    if (containerEntrypointsValue != null) {
      map['containerEntrypoints'] = containerEntrypointsValue;
    }
    final containerEnvironmentVariablesValue = containerEnvironmentVariables;
    if (containerEnvironmentVariablesValue != null) {
      map['containerEnvironmentVariables'] = containerEnvironmentVariablesValue;
    }
    return map;
  }

  factory AppImageConfigJupyterLabImageConfigContainerConfig.fromMap(
      Map<String, dynamic> map) {
    return AppImageConfigJupyterLabImageConfigContainerConfig(
      containerArguments: map['containerArguments'] == null
          ? null
          : (map['containerArguments'] as List).cast<String>(),
      containerEntrypoints: map['containerEntrypoints'] == null
          ? null
          : (map['containerEntrypoints'] as List).cast<String>(),
      containerEnvironmentVariables:
          map['containerEnvironmentVariables'] == null
              ? null
              : (map['containerEnvironmentVariables'] as Map)
                  .cast<String, String>(),
    );
  }
}
