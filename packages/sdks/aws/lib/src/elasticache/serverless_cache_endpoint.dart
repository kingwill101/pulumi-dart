// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServerlessCacheEndpoint {
  /// The DNS hostname of the cache node.
  final pulumi.Input<String> address;
  /// The port number that the cache engine is listening on. Set as integer.
  final pulumi.Input<int> port;

  /// Creates a new [ServerlessCacheEndpoint].
  /// [address] The DNS hostname of the cache node.
  /// [port] The port number that the cache engine is listening on. Set as integer.
  const ServerlessCacheEndpoint({
    required this.address,
    required this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': address,
      'port': port,
    };
  }

  factory ServerlessCacheEndpoint.fromMap(Map<String, dynamic> map) {
    return ServerlessCacheEndpoint(
      address: pulumi.Input.fromValue(map['address'] as String),
      port: pulumi.Input.fromValue((map['port'] as num).toInt()),
    );
  }
}
