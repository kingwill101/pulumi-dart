// ignore_for_file: unused_element, unnecessary_cast


class DiskResourceStatusAsyncReplicationStatusResponseComputeV1 {
  final String state;

  /// Creates a new [DiskResourceStatusAsyncReplicationStatusResponseComputeV1].
  /// [state] Required.
  DiskResourceStatusAsyncReplicationStatusResponseComputeV1({
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state': state,
    };
  }

  factory DiskResourceStatusAsyncReplicationStatusResponseComputeV1.fromMap(Map<String, dynamic> map) {
    return DiskResourceStatusAsyncReplicationStatusResponseComputeV1(
      state: map['state'] as String,
    );
  }
}

