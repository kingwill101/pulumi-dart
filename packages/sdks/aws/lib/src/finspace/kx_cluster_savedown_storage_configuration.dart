// ignore_for_file: unused_element, unnecessary_cast


class KxClusterSavedownStorageConfiguration {
  /// Size of temporary storage in gigabytes. Must be between 10 and 16000.
  final int? size;
  /// Type of writeable storage space for temporarily storing your savedown data. The valid values are:
  /// * SDS01 - This type represents 3000 IOPS and io2 ebs volume type.
  final String? type;
  /// The name of the kdb volume that you want to use as writeable save-down storage for clusters.
  final String? volumeName;

  /// Creates a new [KxClusterSavedownStorageConfiguration].
  /// [size] Size of temporary storage in gigabytes. Must be between 10 and 16000.
  /// [type] Type of writeable storage space for temporarily storing your savedown data. The valid values are:
  /// [volumeName] The name of the kdb volume that you want to use as writeable save-down storage for clusters.
  KxClusterSavedownStorageConfiguration({
    this.size,
    this.type,
    this.volumeName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'size': ?size,
      'type': ?type,
      'volumeName': ?volumeName,
    };
  }

  factory KxClusterSavedownStorageConfiguration.fromMap(Map<String, dynamic> map) {
    return KxClusterSavedownStorageConfiguration(
      size: map['size'] == null ? null : map['size'] as int,
      type: map['type'] == null ? null : map['type'] as String,
      volumeName: map['volumeName'] == null ? null : map['volumeName'] as String,
    );
  }
}

