// ignore_for_file: unused_element, unnecessary_cast


class GetServerlessCacheEndpoint {
  /// The DNS hostname of the cache node.
  final String address;
  /// The port number that the cache engine is listening on. Set as integer.
  final int port;

  /// Creates a new [GetServerlessCacheEndpoint].
  /// [address] The DNS hostname of the cache node.
  /// [port] The port number that the cache engine is listening on. Set as integer.
  GetServerlessCacheEndpoint({
    required this.address,
    required this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': address,
      'port': port,
    };
  }

  factory GetServerlessCacheEndpoint.fromMap(Map<String, dynamic> map) {
    return GetServerlessCacheEndpoint(
      address: map['address'] as String,
      port: map['port'] as int,
    );
  }
}

