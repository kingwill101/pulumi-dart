// ignore_for_file: unused_element, unnecessary_cast

class GetClusterClusterEndpoint {
  /// DNS hostname of the node.
  final String address;

  /// Port number that this node is listening on.
  final int port;

  /// Creates a new [GetClusterClusterEndpoint].
  /// [address] DNS hostname of the node.
  /// [port] Port number that this node is listening on.
  GetClusterClusterEndpoint({required this.address, required this.port});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'address': address, 'port': port};
  }

  factory GetClusterClusterEndpoint.fromMap(Map<String, dynamic> map) {
    return GetClusterClusterEndpoint(
      address: map['address'] as String,
      port: map['port'] as int,
    );
  }
}
