// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_endpoint_outbound_rule_destination_response.dart';

/// Private Endpoint outbound rule for the managed network of a cognitive services account.
class PrivateEndpointOutboundRuleResponse {
  /// Category of a managed network Outbound Rule of a cognitive services account.
  final pulumi.Input<String?>? category;
  /// Private Endpoint destination.
  final pulumi.Input<PrivateEndpointOutboundRuleDestinationResponse?>? destination;
  /// Error information about an outbound rule of a cognitive services account if RuleStatus is failed.
  final pulumi.Input<String> errorInformation;
  /// List of FQDNs associated with the private endpoint outbound rule.
  final pulumi.Input<List<String>?>? fqdns;
  final pulumi.Input<List<String>> parentRuleNames;
  /// Type of a managed network Outbound Rule of a cognitive services account.
  final pulumi.Input<String?>? status;
  /// Type of a managed network Outbound Rule of a cognitive services account.
  /// Expected value is 'PrivateEndpoint'.
  final pulumi.Input<String> type;

  /// Creates a new [PrivateEndpointOutboundRuleResponse].
  /// [category] Category of a managed network Outbound Rule of a cognitive services account.
  /// [destination] Private Endpoint destination.
  /// [errorInformation] Error information about an outbound rule of a cognitive services account if RuleStatus is failed.
  /// [fqdns] List of FQDNs associated with the private endpoint outbound rule.
  /// [parentRuleNames] Required.
  /// [status] Type of a managed network Outbound Rule of a cognitive services account.
  /// [type] Type of a managed network Outbound Rule of a cognitive services account.
  const PrivateEndpointOutboundRuleResponse({
    this.category,
    this.destination,
    required this.errorInformation,
    this.fqdns,
    required this.parentRuleNames,
    this.status,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'category': ?category,
      'destination': ?pulumi.Input.mapOptionalInputValue<PrivateEndpointOutboundRuleDestinationResponse, Map<String, dynamic>>(destination, (value) => value.toMap()),
      'errorInformation': errorInformation,
      'fqdns': ?fqdns,
      'parentRuleNames': parentRuleNames,
      'status': ?status,
      'type': type,
    };
  }

  factory PrivateEndpointOutboundRuleResponse.fromMap(Map<String, dynamic> map) {
    return PrivateEndpointOutboundRuleResponse(
      category: (() { final guardedValue = map['category']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destination: (() { final guardedValue = map['destination']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PrivateEndpointOutboundRuleDestinationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      errorInformation: pulumi.Input.fromValue(map['errorInformation'] as String),
      fqdns: (() { final guardedValue = map['fqdns']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      parentRuleNames: pulumi.Input.fromValue((map['parentRuleNames'] as List).cast<String>()),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
