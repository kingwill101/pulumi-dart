// ignore_for_file: unused_element, unnecessary_cast

/// Details of a created Persistent Disk.
class PersistentDiskResponse {
  /// The URI of the Persistent Disk.
  final String diskUri;

  /// The ordinal number of the source VM disk.
  final int sourceDiskNumber;

  /// Creates a new [PersistentDiskResponse].
  /// [diskUri] The URI of the Persistent Disk.
  /// [sourceDiskNumber] The ordinal number of the source VM disk.
  PersistentDiskResponse({
    required this.diskUri,
    required this.sourceDiskNumber,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['diskUri'] = diskUri;
    map['sourceDiskNumber'] = sourceDiskNumber;
    return map;
  }

  factory PersistentDiskResponse.fromMap(Map<String, dynamic> map) {
    return PersistentDiskResponse(
      diskUri: map['diskUri'] as String,
      sourceDiskNumber: map['sourceDiskNumber'] as int,
    );
  }
}
