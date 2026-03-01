// ignore_for_file: unused_element, unnecessary_cast

class AppImageConfigCodeEditorAppImageConfigContainerConfig {
  /// The arguments for the container when you're running the application.
  final List<String>? containerArguments;

  /// The entrypoint used to run the application in the container.
  final List<String>? containerEntrypoints;

  /// The environment variables to set in the container.
  final Map<String, String>? containerEnvironmentVariables;

  /// Creates a new [AppImageConfigCodeEditorAppImageConfigContainerConfig].
  /// [containerArguments] The arguments for the container when you're running the application.
  /// [containerEntrypoints] The entrypoint used to run the application in the container.
  /// [containerEnvironmentVariables] The environment variables to set in the container.
  AppImageConfigCodeEditorAppImageConfigContainerConfig({
    this.containerArguments,
    this.containerEntrypoints,
    this.containerEnvironmentVariables,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerArguments': ?containerArguments,
      'containerEntrypoints': ?containerEntrypoints,
      'containerEnvironmentVariables': ?containerEnvironmentVariables,
    };
  }

  factory AppImageConfigCodeEditorAppImageConfigContainerConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return AppImageConfigCodeEditorAppImageConfigContainerConfig(
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
