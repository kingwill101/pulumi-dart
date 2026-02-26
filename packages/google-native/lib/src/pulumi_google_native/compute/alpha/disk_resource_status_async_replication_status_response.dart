// ignore_for_file: unused_element, unnecessary_cast

class DiskResourceStatusAsyncReplicationStatusResponse {
  final String state;

  DiskResourceStatusAsyncReplicationStatusResponse({
    required this.state,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['state'] = state;
    return map;
  }

  factory DiskResourceStatusAsyncReplicationStatusResponse.fromMap(
      Map<String, dynamic> map) {
    return DiskResourceStatusAsyncReplicationStatusResponse(
      state: map['state'] as String,
    );
  }
}
