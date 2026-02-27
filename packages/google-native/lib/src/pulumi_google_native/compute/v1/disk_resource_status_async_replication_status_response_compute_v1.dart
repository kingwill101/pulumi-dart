// ignore_for_file: unused_element, unnecessary_cast

class DiskResourceStatusAsyncReplicationStatusResponseComputeV1 {
  final String state;

  DiskResourceStatusAsyncReplicationStatusResponseComputeV1({
    required this.state,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['state'] = state;
    return map;
  }

  factory DiskResourceStatusAsyncReplicationStatusResponseComputeV1.fromMap(
      Map<String, dynamic> map) {
    return DiskResourceStatusAsyncReplicationStatusResponseComputeV1(
      state: map['state'] as String,
    );
  }
}
