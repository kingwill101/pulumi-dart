// ignore_for_file: unused_element, unnecessary_cast

class InstantSnapshotResourceStatusResponse2 {
  /// The storage size of this instant snapshot.
  final String storageSizeBytes;

  InstantSnapshotResourceStatusResponse2({
    required this.storageSizeBytes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['storageSizeBytes'] = storageSizeBytes;
    return map;
  }

  factory InstantSnapshotResourceStatusResponse2.fromMap(
      Map<String, dynamic> map) {
    return InstantSnapshotResourceStatusResponse2(
      storageSizeBytes: map['storageSizeBytes'] as String,
    );
  }
}
