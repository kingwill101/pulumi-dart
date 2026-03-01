// ignore_for_file: unused_element, unnecessary_cast


/// State of the Private Link Service connection.
class RemotePrivateLinkServiceConnectionState {
  /// State of Private Link Connection.
  final String? status;

  /// Creates a new [RemotePrivateLinkServiceConnectionState].
  /// [status] State of Private Link Connection.
  RemotePrivateLinkServiceConnectionState({
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'status': ?status,
    };
  }

  factory RemotePrivateLinkServiceConnectionState.fromMap(Map<String, dynamic> map) {
    return RemotePrivateLinkServiceConnectionState(
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

