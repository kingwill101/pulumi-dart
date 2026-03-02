// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterShardNodeEndpoint {
  /// DNS hostname of the node.
  final pulumi.Input<String> address;
  /// Port number that this node is listening on.
  final pulumi.Input<int> port;

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
      address: (map['address'] as String).input(),
      port: (map['port'] as int).input(),
    );
  }
}

