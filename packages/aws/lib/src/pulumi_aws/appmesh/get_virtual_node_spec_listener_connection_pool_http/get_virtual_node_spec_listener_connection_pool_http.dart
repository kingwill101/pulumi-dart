// ignore_for_file: unused_element, unnecessary_cast

class GetVirtualNodeSpecListenerConnectionPoolHttp {
  final int maxConnections;
  final int maxPendingRequests;

  GetVirtualNodeSpecListenerConnectionPoolHttp({
    required this.maxConnections,
    required this.maxPendingRequests,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['maxConnections'] = maxConnections;
    map['maxPendingRequests'] = maxPendingRequests;
    return map;
  }

  factory GetVirtualNodeSpecListenerConnectionPoolHttp.fromMap(
      Map<String, dynamic> map) {
    return GetVirtualNodeSpecListenerConnectionPoolHttp(
      maxConnections: map['maxConnections'] as int,
      maxPendingRequests: map['maxPendingRequests'] as int,
    );
  }
}
