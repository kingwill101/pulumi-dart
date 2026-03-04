// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetLoadBalancersBalancerBackendServer {
  final pulumi.Input<String> description;
  final pulumi.Input<String> serverId;
  final pulumi.Input<String> type;
  final pulumi.Input<int> weight;

  /// Creates a new [GetLoadBalancersBalancerBackendServer].
  /// [description] Required.
  /// [serverId] Required.
  /// [type] Required.
  /// [weight] Required.
  GetLoadBalancersBalancerBackendServer({
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

  factory GetLoadBalancersBalancerBackendServer.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetLoadBalancersBalancerBackendServer(
      description: pulumi.Input.fromValue(map['description'] as String),
      serverId: pulumi.Input.fromValue(map['serverId'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
      weight: pulumi.Input.fromValue(map['weight'] as int),
    );
  }
}
