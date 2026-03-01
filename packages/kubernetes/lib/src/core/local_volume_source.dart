// ignore_for_file: unused_element, unnecessary_cast


/// Local represents directly-attached storage with node affinity
class LocalVolumeSource {
  /// fsType is the filesystem type to mount. It applies only when the Path is a block device. Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs", "ntfs". The default value is to auto-select a filesystem if unspecified.
  final String? fsType;
  /// path of the full path to the volume on the node. It can be either a directory or block device (disk, partition, ...).
  final String path;

  /// Creates a new [LocalVolumeSource].
  /// [fsType] fsType is the filesystem type to mount. It applies only when the Path is a block device. Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs", "ntfs". The default value is to auto-select a filesystem if unspecified.
  /// [path] path of the full path to the volume on the node. It can be either a directory or block device (disk, partition, ...).
  LocalVolumeSource({
    this.fsType,
    required this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fsType': ?fsType,
      'path': path,
    };
  }

  factory LocalVolumeSource.fromMap(Map<String, dynamic> map) {
    return LocalVolumeSource(
      fsType: map['fsType'] == null ? null : map['fsType'] as String,
      path: map['path'] as String,
    );
  }
}

