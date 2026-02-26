// ignore_for_file: unused_element, unnecessary_cast

class GetClusterClusterEndpoint {
  /// DNS hostname of the node.
  final String address;

  /// Port number that this node is listening on.
  final int port;

  GetClusterClusterEndpoint({
    required this.address,
    required this.port,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['address'] = address;
    map['port'] = port;
    return map;
  }

  factory GetClusterClusterEndpoint.fromMap(Map<String, dynamic> map) {
    return GetClusterClusterEndpoint(
      address: map['address'] as String,
      port: map['port'] as int,
    );
  }
}
