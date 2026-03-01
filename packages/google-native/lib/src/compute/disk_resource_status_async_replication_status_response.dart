// ignore_for_file: unused_element, unnecessary_cast

class DiskResourceStatusAsyncReplicationStatusResponse {
  final String state;

  /// Creates a new [DiskResourceStatusAsyncReplicationStatusResponse].
  /// [state] Required.
  DiskResourceStatusAsyncReplicationStatusResponse({required this.state});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'state': state};
  }

  factory DiskResourceStatusAsyncReplicationStatusResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return DiskResourceStatusAsyncReplicationStatusResponse(
      state: map['state'] as String,
    );
  }
}
