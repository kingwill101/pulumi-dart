// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTaskDefinitionVolumeDockerVolumeConfiguration {
  /// Whether the Docker volume is created if it does not already exist.
  final pulumi.Input<bool> autoprovision;
  /// Docker volume driver used.
  final pulumi.Input<String> driver;
  /// Map of Docker driver-specific options.
  final pulumi.Input<Map<String, String>> driverOpts;
  /// Map of custom metadata added to the Docker volume.
  final pulumi.Input<Map<String, String>> labels;
  /// Scope for the Docker volume, either `task` or `shared`.
  final pulumi.Input<String> scope;

  /// Creates a new [GetTaskDefinitionVolumeDockerVolumeConfiguration].
  /// [autoprovision] Whether the Docker volume is created if it does not already exist.
  /// [driver] Docker volume driver used.
  /// [driverOpts] Map of Docker driver-specific options.
  /// [labels] Map of custom metadata added to the Docker volume.
  /// [scope] Scope for the Docker volume, either `task` or `shared`.
  const GetTaskDefinitionVolumeDockerVolumeConfiguration({
    required this.autoprovision,
    required this.driver,
    required this.driverOpts,
    required this.labels,
    required this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoprovision': autoprovision,
      'driver': driver,
      'driverOpts': driverOpts,
      'labels': labels,
      'scope': scope,
    };
  }

  factory GetTaskDefinitionVolumeDockerVolumeConfiguration.fromMap(Map<String, dynamic> map) {
    return GetTaskDefinitionVolumeDockerVolumeConfiguration(
      autoprovision: pulumi.Input.fromValue(map['autoprovision'] as bool),
      driver: pulumi.Input.fromValue(map['driver'] as String),
      driverOpts: pulumi.Input.fromValue((map['driverOpts'] as Map).cast<String, String>()),
      labels: pulumi.Input.fromValue((map['labels'] as Map).cast<String, String>()),
      scope: pulumi.Input.fromValue(map['scope'] as String),
    );
  }
}
