// ignore_for_file: unused_element, unnecessary_cast


class GetLoadBalancersBalancerBackendServer {
  final String description;
  final String serverId;
  final String type;
  final int weight;

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

  factory GetLoadBalancersBalancerBackendServer.fromMap(Map<String, dynamic> map) {
    return GetLoadBalancersBalancerBackendServer(
      description: map['description'] as String,
      serverId: map['serverId'] as String,
      type: map['type'] as String,
      weight: map['weight'] as int,
    );
  }
}

