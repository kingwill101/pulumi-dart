// ignore_for_file: unused_element, unnecessary_cast


class GetApplicationLoadBalancersBalancerListenerPortsAndProtocal {
  /// The listener port.
  final int listenerPort;
  /// The listener protoal.
  final String listenerProtocal;

  /// Creates a new [GetApplicationLoadBalancersBalancerListenerPortsAndProtocal].
  /// [listenerPort] The listener port.
  /// [listenerProtocal] The listener protoal.
  GetApplicationLoadBalancersBalancerListenerPortsAndProtocal({
    required this.listenerPort,
    required this.listenerProtocal,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'listenerPort': listenerPort,
      'listenerProtocal': listenerProtocal,
    };
  }

  factory GetApplicationLoadBalancersBalancerListenerPortsAndProtocal.fromMap(Map<String, dynamic> map) {
    return GetApplicationLoadBalancersBalancerListenerPortsAndProtocal(
      listenerPort: map['listenerPort'] as int,
      listenerProtocal: map['listenerProtocal'] as String,
    );
  }
}

