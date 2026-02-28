// ignore_for_file: unused_element, unnecessary_cast


/// An instance-attached disk resource.
class SavedDiskResponse {
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

  /// Creates a new [SavedDiskResponse].
  /// [architecture] The architecture of the attached disk.
  /// [kind] Type of the resource. Always compute#savedDisk for attached disks.
  /// [sourceDisk] Specifies a URL of the disk attached to the source instance.
  /// [storageBytes] Size of the individual disk snapshot used by this machine image.
  /// [storageBytesStatus] An indicator whether storageBytes is in a stable state or it is being adjusted as a result of shared storage reallocation. This status can either be UPDATING, meaning the size of the snapshot is being updated, or UP_TO_DATE, meaning the size of the snapshot is up-to-date.
  SavedDiskResponse({
    required this.architecture,
    required this.kind,
    required this.sourceDisk,
    required this.storageBytes,
    required this.storageBytesStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'architecture': architecture,
      'kind': kind,
      'sourceDisk': sourceDisk,
      'storageBytes': storageBytes,
      'storageBytesStatus': storageBytesStatus,
    };
  }

  factory SavedDiskResponse.fromMap(Map<String, dynamic> map) {
    return SavedDiskResponse(
      architecture: map['architecture'] as String,
      kind: map['kind'] as String,
      sourceDisk: map['sourceDisk'] as String,
      storageBytes: map['storageBytes'] as String,
      storageBytesStatus: map['storageBytesStatus'] as String,
    );
  }
}

