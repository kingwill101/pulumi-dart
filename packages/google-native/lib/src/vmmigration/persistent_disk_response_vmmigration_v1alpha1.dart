// ignore_for_file: unused_element, unnecessary_cast

/// Details of a created Persistent Disk.
class PersistentDiskResponseVmmigrationV1alpha1 {
  /// The URI of the Persistent Disk.
  final String diskUri;

  /// The ordinal number of the source VM disk.
  final int sourceDiskNumber;

  /// Creates a new [PersistentDiskResponseVmmigrationV1alpha1].
  /// [diskUri] The URI of the Persistent Disk.
  /// [sourceDiskNumber] The ordinal number of the source VM disk.
  PersistentDiskResponseVmmigrationV1alpha1({
    required this.diskUri,
    required this.sourceDiskNumber,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['diskUri'] = diskUri;
    map['sourceDiskNumber'] = sourceDiskNumber;
    return map;
  }

  factory PersistentDiskResponseVmmigrationV1alpha1.fromMap(
      Map<String, dynamic> map) {
    return PersistentDiskResponseVmmigrationV1alpha1(
      diskUri: map['diskUri'] as String,
      sourceDiskNumber: map['sourceDiskNumber'] as int,
    );
  }
}
