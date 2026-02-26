// ignore_for_file: unused_element, unnecessary_cast

/// An instance-attached disk resource.
class SavedDiskResponse3 {
  /// The architecture of the attached disk.
  final String architecture;

  /// Type of the resource. Always compute#savedDisk for attached disks.
  final String kind;

  /// Specifies a URL of the disk attached to the source instance.
  final String sourceDisk;

  /// Size of the individual disk snapshot used by this machine image.
  final String storageBytes;

  /// An indicator whether storageBytes is in a stable state or it is being adjusted as a result of shared storage reallocation. This status can either be UPDATING, meaning the size of the snapshot is being updated, or UP_TO_DATE, meaning the size of the snapshot is up-to-date.
  final String storageBytesStatus;

  SavedDiskResponse3({
    required this.architecture,
    required this.kind,
    required this.sourceDisk,
    required this.storageBytes,
    required this.storageBytesStatus,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['architecture'] = architecture;
    map['kind'] = kind;
    map['sourceDisk'] = sourceDisk;
    map['storageBytes'] = storageBytes;
    map['storageBytesStatus'] = storageBytesStatus;
    return map;
  }

  factory SavedDiskResponse3.fromMap(Map<String, dynamic> map) {
    return SavedDiskResponse3(
      architecture: map['architecture'] as String,
      kind: map['kind'] as String,
      sourceDisk: map['sourceDisk'] as String,
      storageBytes: map['storageBytes'] as String,
      storageBytesStatus: map['storageBytesStatus'] as String,
    );
  }
}
