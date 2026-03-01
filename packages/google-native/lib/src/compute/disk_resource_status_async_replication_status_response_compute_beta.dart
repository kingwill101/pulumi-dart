// ignore_for_file: unused_element, unnecessary_cast

class DiskResourceStatusAsyncReplicationStatusResponseComputeBeta {
  final String state;

  /// Creates a new [DiskResourceStatusAsyncReplicationStatusResponseComputeBeta].
  /// [state] Required.
  DiskResourceStatusAsyncReplicationStatusResponseComputeBeta({
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'state': state};
  }

  factory DiskResourceStatusAsyncReplicationStatusResponseComputeBeta.fromMap(
    Map<String, dynamic> map,
  ) {
    return DiskResourceStatusAsyncReplicationStatusResponseComputeBeta(
      state: map['state'] as String,
    );
  }
}
