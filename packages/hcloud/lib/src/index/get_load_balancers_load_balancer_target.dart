// ignore_for_file: unused_element, unnecessary_cast


class GetLoadBalancersLoadBalancerTarget {
  final String labelSelector;
  final int serverId;
  final String type;

  /// Creates a new [GetLoadBalancersLoadBalancerTarget].
  /// [labelSelector] Required.
  /// [serverId] Required.
  /// [type] Required.
  GetLoadBalancersLoadBalancerTarget({
    required this.labelSelector,
    required this.serverId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'labelSelector': labelSelector,
      'serverId': serverId,
      'type': type,
    };
  }

  factory GetLoadBalancersLoadBalancerTarget.fromMap(Map<String, dynamic> map) {
    return GetLoadBalancersLoadBalancerTarget(
      labelSelector: map['labelSelector'] as String,
      serverId: map['serverId'] as int,
      type: map['type'] as String,
    );
  }
}

