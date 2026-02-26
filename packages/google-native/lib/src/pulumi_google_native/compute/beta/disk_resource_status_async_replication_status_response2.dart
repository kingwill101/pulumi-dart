// ignore_for_file: unused_element, unnecessary_cast

class DiskResourceStatusAsyncReplicationStatusResponse2 {
  final String state;

  DiskResourceStatusAsyncReplicationStatusResponse2({
    required this.state,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['state'] = state;
    return map;
  }

  factory DiskResourceStatusAsyncReplicationStatusResponse2.fromMap(
      Map<String, dynamic> map) {
    return DiskResourceStatusAsyncReplicationStatusResponse2(
      state: map['state'] as String,
    );
  }
}
