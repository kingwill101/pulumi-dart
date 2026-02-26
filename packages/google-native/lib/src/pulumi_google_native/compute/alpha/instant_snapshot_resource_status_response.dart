// ignore_for_file: unused_element, unnecessary_cast

class InstantSnapshotResourceStatusResponse {
  /// The storage size of this instant snapshot.
  final String storageSizeBytes;

  InstantSnapshotResourceStatusResponse({
    required this.storageSizeBytes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['storageSizeBytes'] = storageSizeBytes;
    return map;
  }

  factory InstantSnapshotResourceStatusResponse.fromMap(
      Map<String, dynamic> map) {
    return InstantSnapshotResourceStatusResponse(
      storageSizeBytes: map['storageSizeBytes'] as String,
    );
  }
}
