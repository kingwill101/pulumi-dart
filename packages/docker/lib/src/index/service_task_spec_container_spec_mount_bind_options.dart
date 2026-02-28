// ignore_for_file: unused_element, unnecessary_cast


class ServiceTaskSpecContainerSpecMountBindOptions {
  /// Bind propagation refers to whether or not mounts created within a given bind-mount or named volume can be propagated to replicas of that mount. See the [docs](https://docs.docker.com/storage/bind-mounts/#configure-bind-propagation) for details. Defaults to `rprivate`
  final String? propagation;

  /// Creates a new [ServiceTaskSpecContainerSpecMountBindOptions].
  /// [propagation] Bind propagation refers to whether or not mounts created within a given bind-mount or named volume can be propagated to replicas of that mount. See the [docs](https://docs.docker.com/storage/bind-mounts/#configure-bind-propagation) for details. Defaults to `rprivate`
  ServiceTaskSpecContainerSpecMountBindOptions({
    this.propagation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'propagation': ?propagation,
    };
  }

  factory ServiceTaskSpecContainerSpecMountBindOptions.fromMap(Map<String, dynamic> map) {
    return ServiceTaskSpecContainerSpecMountBindOptions(
      propagation: map['propagation'] == null ? null : map['propagation'] as String,
    );
  }
}

