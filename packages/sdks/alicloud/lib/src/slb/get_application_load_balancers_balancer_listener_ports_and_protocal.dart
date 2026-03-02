// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetApplicationLoadBalancersBalancerListenerPortsAndProtocal {
  /// The listener port.
  final pulumi.Input<int> listenerPort;
  /// The listener protoal.
  final pulumi.Input<String> listenerProtocal;

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
      listenerPort: (map['listenerPort'] as int).input(),
      listenerProtocal: (map['listenerProtocal'] as String).input(),
    );
  }
}

