// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterShardNodeEndpoint {
  /// DNS hostname of the node.
  final pulumi.Input<String>? address;
  /// The port number on which each of the nodes accepts connections. Defaults to `6379`.
  final pulumi.Input<int>? port;

  /// Creates a new [ClusterShardNodeEndpoint].
  /// [address] DNS hostname of the node.
  /// [port] The port number on which each of the nodes accepts connections. Defaults to `6379`.
  const ClusterShardNodeEndpoint({
    this.address,
    this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address,
      'port': ?port,
    };
  }

  factory ClusterShardNodeEndpoint.fromMap(Map<String, dynamic> map) {
    return ClusterShardNodeEndpoint(
      address: (() { final guardedValue = map['address']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
