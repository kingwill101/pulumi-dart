// ignore_for_file: unused_element, unnecessary_cast


class GetApplicationLoadBalancersBalancerBackendServer {
  /// The description of protocol.
  final String description;
  /// The server ID.
  final String serverId;
  /// The type of servers.
  final String type;
  /// The weight of servers.
  final int weight;

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
      description: map['description'] as String,
      serverId: map['serverId'] as String,
      type: map['type'] as String,
      weight: map['weight'] as int,
    );
  }
}

