// ignore_for_file: unused_element, unnecessary_cast

class DiskResourceStatusAsyncReplicationStatusResponseComputeBeta {
  final String state;

  DiskResourceStatusAsyncReplicationStatusResponseComputeBeta({
    required this.state,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['state'] = state;
    return map;
  }

  factory DiskResourceStatusAsyncReplicationStatusResponseComputeBeta.fromMap(
      Map<String, dynamic> map) {
    return DiskResourceStatusAsyncReplicationStatusResponseComputeBeta(
      state: map['state'] as String,
    );
  }
}
