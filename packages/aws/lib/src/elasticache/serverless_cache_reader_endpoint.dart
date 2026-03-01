// ignore_for_file: unused_element, unnecessary_cast

class ServerlessCacheReaderEndpoint {
  /// The DNS hostname of the cache node.
  final String address;

  /// The port number that the cache engine is listening on. Set as integer.
  final int port;

  /// Creates a new [ServerlessCacheReaderEndpoint].
  /// [address] The DNS hostname of the cache node.
  /// [port] The port number that the cache engine is listening on. Set as integer.
  ServerlessCacheReaderEndpoint({required this.address, required this.port});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'address': address, 'port': port};
  }

  factory ServerlessCacheReaderEndpoint.fromMap(Map<String, dynamic> map) {
    return ServerlessCacheReaderEndpoint(
      address: map['address'] as String,
      port: map['port'] as int,
    );
  }
}
