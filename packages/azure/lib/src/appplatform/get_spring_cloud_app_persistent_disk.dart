// ignore_for_file: unused_element, unnecessary_cast


class GetSpringCloudAppPersistentDisk {
  /// The mount path of the persistent disk.
  final String mountPath;
  /// The size of the persistent disk in GB.
  final int sizeInGb;

  /// Creates a new [GetSpringCloudAppPersistentDisk].
  /// [mountPath] The mount path of the persistent disk.
  /// [sizeInGb] The size of the persistent disk in GB.
  GetSpringCloudAppPersistentDisk({
    required this.mountPath,
    required this.sizeInGb,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mountPath': mountPath,
      'sizeInGb': sizeInGb,
    };
  }

  factory GetSpringCloudAppPersistentDisk.fromMap(Map<String, dynamic> map) {
    return GetSpringCloudAppPersistentDisk(
      mountPath: map['mountPath'] as String,
      sizeInGb: map['sizeInGb'] as int,
    );
  }
}

