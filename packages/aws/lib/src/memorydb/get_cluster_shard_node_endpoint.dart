// ignore_for_file: unused_element, unnecessary_cast


class GetClusterShardNodeEndpoint {
  /// DNS hostname of the node.
  final String address;
  /// Port number that this node is listening on.
  final int port;

  /// Creates a new [GetClusterShardNodeEndpoint].
  /// [address] DNS hostname of the node.
  /// [port] Port number that this node is listening on.
  GetClusterShardNodeEndpoint({
    required this.address,
    required this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': address,
      'port': port,
    };
  }

  factory GetClusterShardNodeEndpoint.fromMap(Map<String, dynamic> map) {
    return GetClusterShardNodeEndpoint(
      address: map['address'] as String,
      port: map['port'] as int,
    );
  }
}

