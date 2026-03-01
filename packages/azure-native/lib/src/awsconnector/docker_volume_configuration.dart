// ignore_for_file: unused_element, unnecessary_cast


/// Definition of DockerVolumeConfiguration
class DockerVolumeConfiguration {
  /// If this value is ``true``, the Docker volume is created if it doesn't already exist.  This field is only used if the ``scope`` is ``shared``.
  final bool? autoprovision;
  /// The Docker volume driver to use. The driver value must match the driver name provided by Docker because it is used for task placement. If the driver was installed using the Docker plugin CLI, use ``docker plugin ls`` to retrieve the driver name from your container instance. If the driver was installed using another method, use Docker plugin discovery to retrieve the driver name. For more information, see [Docker plugin discovery](https://docs.docker.com/engine/extend/plugin_api/#plugin-discovery). This parameter maps to ``Driver`` in the [Create a volume](https://docs.docker.com/engine/api/v1.35/#operation/VolumeCreate) section of the [Docker Remote API](https://docs.docker.com/engine/api/) and the ``xxdriver`` option to [docker volume create](https://docs.docker.com/engine/reference/commandline/volume_create/).
  final String? driver;
  /// A map of Docker driver-specific options passed through. This parameter maps to ``DriverOpts`` in the [Create a volume](https://docs.docker.com/engine/api/v1.35/#operation/VolumeCreate) section of the [Docker Remote API](https://docs.docker.com/engine/api/) and the ``xxopt`` option to [docker volume create](https://docs.docker.com/engine/reference/commandline/volume_create/).
  final dynamic driverOpts;
  /// Custom metadata to add to your Docker volume. This parameter maps to ``Labels`` in the [Create a volume](https://docs.docker.com/engine/api/v1.35/#operation/VolumeCreate) section of the [Docker Remote API](https://docs.docker.com/engine/api/) and the ``xxlabel`` option to [docker volume create](https://docs.docker.com/engine/reference/commandline/volume_create/).
  final dynamic labels;
  /// The scope for the Docker volume that determines its lifecycle. Docker volumes that are scoped to a ``task`` are automatically provisioned when the task starts and destroyed when the task stops. Docker volumes that are scoped as ``shared`` persist after the task stops.
  final String? scope;

  /// Creates a new [DockerVolumeConfiguration].
  /// [autoprovision] If this value is ``true``, the Docker volume is created if it doesn't already exist.  This field is only used if the ``scope`` is ``shared``.
  /// [driver] The Docker volume driver to use. The driver value must match the driver name provided by Docker because it is used for task placement. If the driver was installed using the Docker plugin CLI, use ``docker plugin ls`` to retrieve the driver name from your container instance. If the driver was installed using another method, use Docker plugin discovery to retrieve the driver name. For more information, see [Docker plugin discovery](https://docs.docker.com/engine/extend/plugin_api/#plugin-discovery). This parameter maps to ``Driver`` in the [Create a volume](https://docs.docker.com/engine/api/v1.35/#operation/VolumeCreate) section of the [Docker Remote API](https://docs.docker.com/engine/api/) and the ``xxdriver`` option to [docker volume create](https://docs.docker.com/engine/reference/commandline/volume_create/).
  /// [driverOpts] A map of Docker driver-specific options passed through. This parameter maps to ``DriverOpts`` in the [Create a volume](https://docs.docker.com/engine/api/v1.35/#operation/VolumeCreate) section of the [Docker Remote API](https://docs.docker.com/engine/api/) and the ``xxopt`` option to [docker volume create](https://docs.docker.com/engine/reference/commandline/volume_create/).
  /// [labels] Custom metadata to add to your Docker volume. This parameter maps to ``Labels`` in the [Create a volume](https://docs.docker.com/engine/api/v1.35/#operation/VolumeCreate) section of the [Docker Remote API](https://docs.docker.com/engine/api/) and the ``xxlabel`` option to [docker volume create](https://docs.docker.com/engine/reference/commandline/volume_create/).
  /// [scope] The scope for the Docker volume that determines its lifecycle. Docker volumes that are scoped to a ``task`` are automatically provisioned when the task starts and destroyed when the task stops. Docker volumes that are scoped as ``shared`` persist after the task stops.
  DockerVolumeConfiguration({
    this.autoprovision,
    this.driver,
    this.driverOpts,
    this.labels,
    this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoprovision': ?autoprovision,
      'driver': ?driver,
      'driverOpts': ?driverOpts,
      'labels': ?labels,
      'scope': ?scope,
    };
  }

  factory DockerVolumeConfiguration.fromMap(Map<String, dynamic> map) {
    return DockerVolumeConfiguration(
      autoprovision: map['autoprovision'] == null ? null : map['autoprovision'] as bool,
      driver: map['driver'] == null ? null : map['driver'] as String,
      driverOpts: map['driverOpts'] == null ? null : map['driverOpts'],
      labels: map['labels'] == null ? null : map['labels'],
      scope: map['scope'] == null ? null : map['scope'] as String,
    );
  }
}

