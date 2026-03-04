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

  factory GetLoadBalancersBalancerListenerPortsAndProtocol.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetLoadBalancersBalancerListenerPortsAndProtocol(
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
