// ignore_for_file: unused_element, unnecessary_cast


class GetLoadBalancersBalancerListenerPortsAndProtocal {
  final int listenerPort;
  final String listenerProtocal;

  /// Creates a new [GetLoadBalancersBalancerListenerPortsAndProtocal].
  /// [listenerPort] Required.
  /// [listenerProtocal] Required.
  GetLoadBalancersBalancerListenerPortsAndProtocal({
    required this.listenerPort,
    required this.listenerProtocal,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'listenerPort': listenerPort,
      'listenerProtocal': listenerProtocal,
    };
  }

  factory GetLoadBalancersBalancerListenerPortsAndProtocal.fromMap(Map<String, dynamic> map) {
    return GetLoadBalancersBalancerListenerPortsAndProtocal(
      listenerPort: map['listenerPort'] as int,
      listenerProtocal: map['listenerProtocal'] as String,
    );
  }
}

