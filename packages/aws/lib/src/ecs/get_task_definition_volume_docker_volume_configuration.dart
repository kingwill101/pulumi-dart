// ignore_for_file: unused_element, unnecessary_cast

class GetTaskDefinitionVolumeDockerVolumeConfiguration {
  /// If this value is `true`, the Docker volume is created if it does not already exist. *Note*: This field is only used if the scope is `shared`.
  final bool autoprovision;

  /// Docker volume driver to use. The driver value must match the driver name provided by Docker because it is used for task placement.
  final String driver;

  /// Map of Docker driver specific options.
  final Map<String, String> driverOpts;

  /// Map of custom metadata to add to your Docker volume.
  final Map<String, String> labels;

  /// Scope for the Docker volume, which determines its lifecycle, either `task` or `shared`.  Docker volumes that are scoped to a `task` are automatically provisioned when the task starts and destroyed when the task stops. Docker volumes that are scoped as `shared` persist after the task stops.
  final String scope;

  /// Creates a new [GetTaskDefinitionVolumeDockerVolumeConfiguration].
  /// [autoprovision] If this value is `true`, the Docker volume is created if it does not already exist. *Note*: This field is only used if the scope is `shared`.
  /// [driver] Docker volume driver to use. The driver value must match the driver name provided by Docker because it is used for task placement.
  /// [driverOpts] Map of Docker driver specific options.
  /// [labels] Map of custom metadata to add to your Docker volume.
  /// [scope] Scope for the Docker volume, which determines its lifecycle, either `task` or `shared`.  Docker volumes that are scoped to a `task` are automatically provisioned when the task starts and destroyed when the task stops. Docker volumes that are scoped as `shared` persist after the task stops.
  GetTaskDefinitionVolumeDockerVolumeConfiguration({
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

  factory GetTaskDefinitionVolumeDockerVolumeConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetTaskDefinitionVolumeDockerVolumeConfiguration(
      autoprovision: map['autoprovision'] as bool,
      driver: map['driver'] as String,
      driverOpts: (map['driverOpts'] as Map).cast<String, String>(),
      labels: (map['labels'] as Map).cast<String, String>(),
      scope: map['scope'] as String,
    );
  }
}
