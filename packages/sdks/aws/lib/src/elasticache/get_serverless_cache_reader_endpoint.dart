// ignore_for_file: unused_element, unnecessary_cast


class GetServerlessCacheReaderEndpoint {
  /// The DNS hostname of the cache node.
  final String address;
  /// The port number that the cache engine is listening on. Set as integer.
  final int port;

  /// Creates a new [GetServerlessCacheReaderEndpoint].
  /// [address] The DNS hostname of the cache node.
  /// [port] The port number that the cache engine is listening on. Set as integer.
  GetServerlessCacheReaderEndpoint({
    required this.address,
    required this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': address,
      'port': port,
    };
  }

  factory GetServerlessCacheReaderEndpoint.fromMap(Map<String, dynamic> map) {
    return GetServerlessCacheReaderEndpoint(
      address: map['address'] as String,
      port: map['port'] as int,
    );
  }
}

