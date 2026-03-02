// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetApplicationLoadBalancersBalancerListenerPortsAndProtocol {
  /// The description of protocol.
  final pulumi.Input<String> description;
  /// The forward port.
  final pulumi.Input<int> forwardPort;
  /// The listener forward.
  final pulumi.Input<String> listenerForward;
  /// The listener port.
  final pulumi.Input<int> listenerPort;
  /// The listener protocol.
  final pulumi.Input<String> listenerProtocol;

  /// Creates a new [GetApplicationLoadBalancersBalancerListenerPortsAndProtocol].
  /// [description] The description of protocol.
  /// [forwardPort] The forward port.
  /// [listenerForward] The listener forward.
  /// [listenerPort] The listener port.
  /// [listenerProtocol] The listener protocol.
  GetApplicationLoadBalancersBalancerListenerPortsAndProtocol({
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

  factory GetApplicationLoadBalancersBalancerListenerPortsAndProtocol.fromMap(Map<String, dynamic> map) {
    return GetApplicationLoadBalancersBalancerListenerPortsAndProtocol(
      description: (map['description'] as String).input(),
      forwardPort: (map['forwardPort'] as int).input(),
      listenerForward: (map['listenerForward'] as String).input(),
      listenerPort: (map['listenerPort'] as int).input(),
      listenerProtocol: (map['listenerProtocol'] as String).input(),
    );
  }
}

