// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Private Endpoint destination for an outbound rule.
class PrivateEndpointOutboundRuleDestination {
  /// The Azure resource ID of the target private endpoint service.
  final pulumi.Input<String?>? serviceResourceId;
  /// The subresource of the target service to connect to.
  final pulumi.Input<String?>? subresourceTarget;

  /// Creates a new [PrivateEndpointOutboundRuleDestination].
  /// [serviceResourceId] The Azure resource ID of the target private endpoint service.
  /// [subresourceTarget] The subresource of the target service to connect to.
  const PrivateEndpointOutboundRuleDestination({
    this.serviceResourceId,
    this.subresourceTarget,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serviceResourceId': ?serviceResourceId,
      'subresourceTarget': ?subresourceTarget,
    };
  }

  factory PrivateEndpointOutboundRuleDestination.fromMap(Map<String, dynamic> map) {
    return PrivateEndpointOutboundRuleDestination(
      serviceResourceId: (() { final guardedValue = map['serviceResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subresourceTarget: (() { final guardedValue = map['subresourceTarget']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
