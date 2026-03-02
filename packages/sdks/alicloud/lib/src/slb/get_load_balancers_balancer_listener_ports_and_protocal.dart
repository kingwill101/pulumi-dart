// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetLoadBalancersBalancerListenerPortsAndProtocal {
  final pulumi.Input<int> listenerPort;
  final pulumi.Input<String> listenerProtocal;

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
      listenerPort: (map['listenerPort'] as int).input(),
      listenerProtocal: (map['listenerProtocal'] as String).input(),
    );
  }
}

