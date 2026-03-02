// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetLoadBalancersBalancerListenerPortsAndProtocol {
  final pulumi.Input<String> description;
  final pulumi.Input<int> forwardPort;
  final pulumi.Input<String> listenerForward;
  final pulumi.Input<int> listenerPort;
  final pulumi.Input<String> listenerProtocol;

  /// Creates a new [GetLoadBalancersBalancerListenerPortsAndProtocol].
  /// [description] Required.
  /// [forwardPort] Required.
  /// [listenerForward] Required.
  /// [listenerPort] Required.
  /// [listenerProtocol] Required.
  GetLoadBalancersBalancerListenerPortsAndProtocol({
    required this.description,
    required this.forwardPort,
    required this.listenerForward,
    required this.listenerPort,
    required this.listenerProtocol,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'forwardPort': forwardPort,
      'listenerForward': listenerForward,
      'listenerPort': listenerPort,
      'listenerProtocol': listenerProtocol,
    };
  }

  factory GetLoadBalancersBalancerListenerPortsAndProtocol.fromMap(Map<String, dynamic> map) {
    return GetLoadBalancersBalancerListenerPortsAndProtocol(
      description: (map['description'] as String).input(),
      forwardPort: (map['forwardPort'] as int).input(),
      listenerForward: (map['listenerForward'] as String).input(),
      listenerPort: (map['listenerPort'] as int).input(),
      listenerProtocol: (map['listenerProtocol'] as String).input(),
    );
  }
}

