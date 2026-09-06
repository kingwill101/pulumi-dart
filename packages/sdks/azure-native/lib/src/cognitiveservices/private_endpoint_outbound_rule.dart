// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_endpoint_outbound_rule_destination.dart';

/// Private Endpoint outbound rule for the managed network of a cognitive services account.
class PrivateEndpointOutboundRule {
  /// Category of a managed network Outbound Rule of a cognitive services account.
  final pulumi.Input<dynamic>? category;
  /// Private Endpoint destination.
  final pulumi.Input<PrivateEndpointOutboundRuleDestination?>? destination;
  /// List of FQDNs associated with the private endpoint outbound rule.
  final pulumi.Input<List<String>?>? fqdns;
  /// Type of a managed network Outbound Rule of a cognitive services account.
  final pulumi.Input<dynamic>? status;
  /// Type of a managed network Outbound Rule of a cognitive services account.
  /// Expected value is 'PrivateEndpoint'.
  final pulumi.Input<String> type;

  /// Creates a new [PrivateEndpointOutboundRule].
  /// [category] Category of a managed network Outbound Rule of a cognitive services account.
  /// [destination] Private Endpoint destination.
  /// [fqdns] List of FQDNs associated with the private endpoint outbound rule.
  /// [status] Type of a managed network Outbound Rule of a cognitive services account.
  /// [type] Type of a managed network Outbound Rule of a cognitive services account.
  const PrivateEndpointOutboundRule({
    this.category,
    this.destination,
    this.fqdns,
    this.status,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'category': ?category,
      'destination': ?pulumi.Input.mapOptionalInputValue<PrivateEndpointOutboundRuleDestination, Map<String, dynamic>>(destination, (value) => value.toMap()),
      'fqdns': ?fqdns,
      'status': ?status,
      'type': type,
    };
  }

  factory PrivateEndpointOutboundRule.fromMap(Map<String, dynamic> map) {
    return PrivateEndpointOutboundRule(
      category: (() { final guardedValue = map['category']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      destination: (() { final guardedValue = map['destination']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PrivateEndpointOutboundRuleDestination.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      fqdns: (() { final guardedValue = map['fqdns']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
