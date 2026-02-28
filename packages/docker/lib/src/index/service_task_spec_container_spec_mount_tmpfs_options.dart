// ignore_for_file: unused_element, unnecessary_cast


class ServiceTaskSpecContainerSpecMountTmpfsOptions {
  /// The permission mode for the tmpfs mount in an integer
  final int? mode;
  /// The size for the tmpfs mount in bytes
  final int? sizeBytes;

  /// Creates a new [ServiceTaskSpecContainerSpecMountTmpfsOptions].
  /// [mode] The permission mode for the tmpfs mount in an integer
  /// [sizeBytes] The size for the tmpfs mount in bytes
  ServiceTaskSpecContainerSpecMountTmpfsOptions({
    this.mode,
    this.sizeBytes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': ?mode,
      'sizeBytes': ?sizeBytes,
    };
  }

  factory ServiceTaskSpecContainerSpecMountTmpfsOptions.fromMap(Map<String, dynamic> map) {
    return ServiceTaskSpecContainerSpecMountTmpfsOptions(
      mode: map['mode'] == null ? null : map['mode'] as int,
      sizeBytes: map['sizeBytes'] == null ? null : map['sizeBytes'] as int,
    );
  }
}

