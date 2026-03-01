// ignore_for_file: unused_element, unnecessary_cast


class GetApplicationLoadBalancersBalancerListenerPortsAndProtocol {
  /// The description of protocol.
  final String description;
  /// The forward port.
  final int forwardPort;
  /// The listener forward.
  final String listenerForward;
  /// The listener port.
  final int listenerPort;
  /// The listener protocol.
  final String listenerProtocol;

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
      description: map['description'] as String,
      forwardPort: map['forwardPort'] as int,
      listenerForward: map['listenerForward'] as String,
      listenerPort: map['listenerPort'] as int,
      listenerProtocol: map['listenerProtocol'] as String,
    );
  }
}

