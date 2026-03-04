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

  factory GetApplicationLoadBalancersBalancerListenerPortsAndProtocol.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetApplicationLoadBalancersBalancerListenerPortsAndProtocol(
      description: pulumi.Input.fromValue(map['description'] as String),
      forwardPort: pulumi.Input.fromValue(map['forwardPort'] as int),
      listenerForward: pulumi.Input.fromValue(map['listenerForward'] as String),
      listenerPort: pulumi.Input.fromValue(map['listenerPort'] as int),
      listenerProtocol: pulumi.Input.fromValue(
        map['listenerProtocol'] as String,
      ),
    );
  }
}
