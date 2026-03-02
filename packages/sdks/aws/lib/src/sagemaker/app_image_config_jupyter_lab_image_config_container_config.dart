// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppImageConfigJupyterLabImageConfigContainerConfig {
  /// The arguments for the container when you're running the application.
  final pulumi.Input<List<String>>? containerArguments;
  /// The entrypoint used to run the application in the container.
  final pulumi.Input<List<String>>? containerEntrypoints;
  /// The environment variables to set in the container.
  final pulumi.Input<Map<String, String>>? containerEnvironmentVariables;

  /// Creates a new [AppImageConfigJupyterLabImageConfigContainerConfig].
  /// [containerArguments] The arguments for the container when you're running the application.
  /// [containerEntrypoints] The entrypoint used to run the application in the container.
  /// [containerEnvironmentVariables] The environment variables to set in the container.
  AppImageConfigJupyterLabImageConfigContainerConfig({
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

  factory AppImageConfigJupyterLabImageConfigContainerConfig.fromMap(Map<String, dynamic> map) {
    return AppImageConfigJupyterLabImageConfigContainerConfig(
      containerArguments: map['containerArguments'] == null ? null : (((map['containerArguments'] as List).cast<String>()).input()).input(),
      containerEntrypoints: map['containerEntrypoints'] == null ? null : (((map['containerEntrypoints'] as List).cast<String>()).input()).input(),
      containerEnvironmentVariables: map['containerEnvironmentVariables'] == null ? null : (((map['containerEnvironmentVariables'] as Map).cast<String, String>()).input()).input(),
    );
  }
}

