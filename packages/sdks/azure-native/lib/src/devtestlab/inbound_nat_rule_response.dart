// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A rule for NAT - exposing a VM's port (backendPort) on the public IP address using a load balancer.
class InboundNatRuleResponse {
  /// The port to which the external traffic will be redirected.
  final pulumi.Input<int>? backendPort;
  /// The external endpoint port of the inbound connection. Possible values range between 1 and 65535, inclusive. If unspecified, a value will be allocated automatically.
  final pulumi.Input<int>? frontendPort;
  /// The transport protocol for the endpoint.
  final pulumi.Input<String>? transportProtocol;

  /// Creates a new [InboundNatRuleResponse].
  /// [backendPort] The port to which the external traffic will be redirected.
  /// [frontendPort] The external endpoint port of the inbound connection. Possible values range between 1 and 65535, inclusive. If unspecified, a value will be allocated automatically.
  /// [transportProtocol] The transport protocol for the endpoint.
  InboundNatRuleResponse({
    this.backendPort,
    this.frontendPort,
    this.transportProtocol,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendPort': ?backendPort,
      'frontendPort': ?frontendPort,
      'transportProtocol': ?transportProtocol,
    };
  }

  factory InboundNatRuleResponse.fromMap(Map<String, dynamic> map) {
    return InboundNatRuleResponse(
      backendPort: map['backendPort'] == null ? null : (map['backendPort']! as int).input(),
      frontendPort: map['frontendPort'] == null ? null : (map['frontendPort']! as int).input(),
      transportProtocol: map['transportProtocol'] == null ? null : (map['transportProtocol']! as String).input(),
    );
  }
}

