// ignore_for_file: unused_element, unnecessary_cast


class LoadBalancerTarget {
  final int? serverId;
  /// (string) Type of the Load Balancer Algorithm. `round_robin` or `least_connections`
  final String type;
  final bool? usePrivateIp;

  /// Creates a new [LoadBalancerTarget].
  /// [serverId] Optional.
  /// [type] (string) Type of the Load Balancer Algorithm. `round_robin` or `least_connections`
  /// [usePrivateIp] Optional.
  LoadBalancerTarget({
    this.serverId,
    required this.type,
    this.usePrivateIp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serverId': ?serverId,
      'type': type,
      'usePrivateIp': ?usePrivateIp,
    };
  }

  factory LoadBalancerTarget.fromMap(Map<String, dynamic> map) {
    return LoadBalancerTarget(
      serverId: map['serverId'] == null ? null : map['serverId'] as int,
      type: map['type'] as String,
      usePrivateIp: map['usePrivateIp'] == null ? null : map['usePrivateIp'] as bool,
    );
  }
}

