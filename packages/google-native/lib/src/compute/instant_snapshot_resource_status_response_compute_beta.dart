// ignore_for_file: unused_element, unnecessary_cast

class InstantSnapshotResourceStatusResponseComputeBeta {
  /// The storage size of this instant snapshot.
  final String storageSizeBytes;

  /// Creates a new [InstantSnapshotResourceStatusResponseComputeBeta].
  /// [storageSizeBytes] The storage size of this instant snapshot.
  InstantSnapshotResourceStatusResponseComputeBeta({
    required this.storageSizeBytes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'storageSizeBytes': storageSizeBytes};
  }

  factory InstantSnapshotResourceStatusResponseComputeBeta.fromMap(
    Map<String, dynamic> map,
  ) {
    return InstantSnapshotResourceStatusResponseComputeBeta(
      storageSizeBytes: map['storageSizeBytes'] as String,
    );
  }
}
