// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetApplicationLoadBalancersBalancerBackendServer {
  /// The description of protocol.
  final pulumi.Input<String> description;
  /// The server ID.
  final pulumi.Input<String> serverId;
  /// The type of servers.
  final pulumi.Input<String> type;
  /// The weight of servers.
  final pulumi.Input<int> weight;

  /// Creates a new [GetApplicationLoadBalancersBalancerBackendServer].
  /// [description] The description of protocol.
  /// [serverId] The server ID.
  /// [type] The type of servers.
  /// [weight] The weight of servers.
  const GetApplicationLoadBalancersBalancerBackendServer({
    required this.description,
    required this.serverId,
    required this.type,
    required this.weight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'serverId': serverId,
      'type': type,
      'weight': weight,
    };
  }

  factory GetApplicationLoadBalancersBalancerBackendServer.fromMap(Map<String, dynamic> map) {
    return GetApplicationLoadBalancersBalancerBackendServer(
      description: pulumi.Input.fromValue(map['description'] as String),
      serverId: pulumi.Input.fromValue(map['serverId'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
      weight: pulumi.Input.fromValue(map['weight'] as int),
    );
  }
}

