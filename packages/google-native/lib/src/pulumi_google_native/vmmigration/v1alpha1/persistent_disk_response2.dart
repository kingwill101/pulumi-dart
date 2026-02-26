// ignore_for_file: unused_element, unnecessary_cast

/// Details of a created Persistent Disk.
class PersistentDiskResponse2 {
  /// The URI of the Persistent Disk.
  final String diskUri;

  /// The ordinal number of the source VM disk.
  final int sourceDiskNumber;

  PersistentDiskResponse2({
    required this.diskUri,
    required this.sourceDiskNumber,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['diskUri'] = diskUri;
    map['sourceDiskNumber'] = sourceDiskNumber;
    return map;
  }

  factory PersistentDiskResponse2.fromMap(Map<String, dynamic> map) {
    return PersistentDiskResponse2(
      diskUri: map['diskUri'] as String,
      sourceDiskNumber: map['sourceDiskNumber'] as int,
    );
  }
}
