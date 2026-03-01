// ignore_for_file: unused_element, unnecessary_cast


class GetLoadBalancersBalancerListenerPortsAndProtocol {
  final String description;
  final int forwardPort;
  final String listenerForward;
  final int listenerPort;
  final String listenerProtocol;

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
      description: map['description'] as String,
      forwardPort: map['forwardPort'] as int,
      listenerForward: map['listenerForward'] as String,
      listenerPort: map['listenerPort'] as int,
      listenerProtocol: map['listenerProtocol'] as String,
    );
  }
}

