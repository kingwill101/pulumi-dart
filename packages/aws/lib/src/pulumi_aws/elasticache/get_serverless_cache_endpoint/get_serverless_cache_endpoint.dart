// ignore_for_file: unused_element, unnecessary_cast

class GetServerlessCacheEndpoint {
  /// The DNS hostname of the cache node.
  final String address;

  /// The port number that the cache engine is listening on. Set as integer.
  final int port;

  GetServerlessCacheEndpoint({
    required this.address,
    required this.port,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['address'] = address;
    map['port'] = port;
    return map;
  }

  factory GetServerlessCacheEndpoint.fromMap(Map<String, dynamic> map) {
    return GetServerlessCacheEndpoint(
      address: map['address'] as String,
      port: map['port'] as int,
    );
  }
}
