// ignore_for_file: unused_element, unnecessary_cast

class TaskDefinitionVolumeDockerVolumeConfiguration {
  /// If this value is `true`, the Docker volume is created if it does not already exist. *Note*: This field is only used if the scope is `shared`.
  final bool? autoprovision;

  /// Docker volume driver to use. The driver value must match the driver name provided by Docker because it is used for task placement.
  final String? driver;

  /// Map of Docker driver specific options.
  final Map<String, String>? driverOpts;

  /// Map of custom metadata to add to your Docker volume.
  final Map<String, String>? labels;

  /// Scope for the Docker volume, which determines its lifecycle, either `task` or `shared`.  Docker volumes that are scoped to a `task` are automatically provisioned when the task starts and destroyed when the task stops. Docker volumes that are scoped as `shared` persist after the task stops.
  final String? scope;

  /// Creates a new [TaskDefinitionVolumeDockerVolumeConfiguration].
  /// [autoprovision] If this value is `true`, the Docker volume is created if it does not already exist. *Note*: This field is only used if the scope is `shared`.
  /// [driver] Docker volume driver to use. The driver value must match the driver name provided by Docker because it is used for task placement.
  /// [driverOpts] Map of Docker driver specific options.
  /// [labels] Map of custom metadata to add to your Docker volume.
  /// [scope] Scope for the Docker volume, which determines its lifecycle, either `task` or `shared`.  Docker volumes that are scoped to a `task` are automatically provisioned when the task starts and destroyed when the task stops. Docker volumes that are scoped as `shared` persist after the task stops.
  TaskDefinitionVolumeDockerVolumeConfiguration({
    this.autoprovision,
    this.driver,
    this.driverOpts,
    this.labels,
    this.scope,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final autoprovisionValue = autoprovision;
    if (autoprovisionValue != null) {
      map['autoprovision'] = autoprovisionValue;
    }
    final driverValue = driver;
    if (driverValue != null) {
      map['driver'] = driverValue;
    }
    final driverOptsValue = driverOpts;
    if (driverOptsValue != null) {
      map['driverOpts'] = driverOptsValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final scopeValue = scope;
    if (scopeValue != null) {
      map['scope'] = scopeValue;
    }
    return map;
  }

  factory TaskDefinitionVolumeDockerVolumeConfiguration.fromMap(
      Map<String, dynamic> map) {
    return TaskDefinitionVolumeDockerVolumeConfiguration(
      autoprovision:
          map['autoprovision'] == null ? null : map['autoprovision'] as bool,
      driver: map['driver'] == null ? null : map['driver'] as String,
      driverOpts: map['driverOpts'] == null
          ? null
          : (map['driverOpts'] as Map).cast<String, String>(),
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      scope: map['scope'] == null ? null : map['scope'] as String,
    );
  }
}
