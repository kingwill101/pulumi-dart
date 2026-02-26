// ignore_for_file: unused_element, unnecessary_cast

class DiskResourceStatusAsyncReplicationStatusResponse3 {
  final String state;

  DiskResourceStatusAsyncReplicationStatusResponse3({
    required this.state,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['state'] = state;
    return map;
  }

  factory DiskResourceStatusAsyncReplicationStatusResponse3.fromMap(
      Map<String, dynamic> map) {
    return DiskResourceStatusAsyncReplicationStatusResponse3(
      state: map['state'] as String,
    );
  }
}
