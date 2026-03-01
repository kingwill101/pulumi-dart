// ignore_for_file: unused_element, unnecessary_cast

class GetVirtualNodeSpecListenerConnectionPoolHttp {
  final int maxConnections;
  final int maxPendingRequests;

  /// Creates a new [GetVirtualNodeSpecListenerConnectionPoolHttp].
  /// [maxConnections] Required.
  /// [maxPendingRequests] Required.
  GetVirtualNodeSpecListenerConnectionPoolHttp({
    required this.maxConnections,
    required this.maxPendingRequests,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxConnections': maxConnections,
      'maxPendingRequests': maxPendingRequests,
    };
  }

  factory GetVirtualNodeSpecListenerConnectionPoolHttp.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetVirtualNodeSpecListenerConnectionPoolHttp(
      maxConnections: map['maxConnections'] as int,
      maxPendingRequests: map['maxPendingRequests'] as int,
    );
  }
}
