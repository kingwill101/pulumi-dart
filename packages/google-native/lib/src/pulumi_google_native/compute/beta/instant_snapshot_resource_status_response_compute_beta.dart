// ignore_for_file: unused_element, unnecessary_cast

class InstantSnapshotResourceStatusResponseComputeBeta {
  /// The storage size of this instant snapshot.
  final String storageSizeBytes;

  InstantSnapshotResourceStatusResponseComputeBeta({
    required this.storageSizeBytes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['storageSizeBytes'] = storageSizeBytes;
    return map;
  }

  factory InstantSnapshotResourceStatusResponseComputeBeta.fromMap(
      Map<String, dynamic> map) {
    return InstantSnapshotResourceStatusResponseComputeBeta(
      storageSizeBytes: map['storageSizeBytes'] as String,
    );
  }
}
