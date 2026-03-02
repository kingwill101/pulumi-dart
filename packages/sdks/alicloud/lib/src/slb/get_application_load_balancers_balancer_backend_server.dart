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
  GetApplicationLoadBalancersBalancerBackendServer({
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
      description: (map['description'] as String).input(),
      serverId: (map['serverId'] as String).input(),
      type: (map['type'] as String).input(),
      weight: (map['weight'] as int).input(),
    );
  }
}

