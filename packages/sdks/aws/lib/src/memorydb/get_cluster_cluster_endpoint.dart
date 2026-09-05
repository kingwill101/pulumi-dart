// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterClusterEndpoint {
  /// DNS hostname of the node.
  final pulumi.Input<String> address;
  /// Port number that this node is listening on.
  final pulumi.Input<int> port;

  /// Creates a new [GetClusterClusterEndpoint].
  /// [address] DNS hostname of the node.
  /// [port] Port number that this node is listening on.
  const GetClusterClusterEndpoint({
    required this.address,
    required this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': address,
      'port': port,
    };
  }

  factory GetClusterClusterEndpoint.fromMap(Map<String, dynamic> map) {
    return GetClusterClusterEndpoint(
      address: pulumi.Input.fromValue(map['address'] as String),
      port: pulumi.Input.fromValue((map['port'] as num).toInt()),
    );
  }
}
