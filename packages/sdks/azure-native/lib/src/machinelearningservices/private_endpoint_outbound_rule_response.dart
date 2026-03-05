// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_endpoint_destination_response.dart';

/// Private Endpoint Outbound Rule for the managed network of a machine learning workspace.
class PrivateEndpointOutboundRuleResponse {
  /// Category of a managed network Outbound Rule of a machine learning workspace.
  final pulumi.Input<String>? category;
  /// Private Endpoint destination for a Private Endpoint Outbound Rule for the managed network of a machine learning workspace.
  final pulumi.Input<PrivateEndpointDestinationResponse>? destination;
  /// Error information about an outbound rule of a machine learning workspace if RuleStatus is failed.
  final pulumi.Input<String> errorInformation;
  final pulumi.Input<List<String>>? fqdns;
  final pulumi.Input<List<String>> parentRuleNames;
  /// Type of a managed network Outbound Rule of a machine learning workspace.
  final pulumi.Input<String>? status;
  /// Type of a managed network Outbound Rule of a machine learning workspace.
  /// Expected value is 'PrivateEndpoint'.
  final pulumi.Input<String> type;

  /// Creates a new [PrivateEndpointOutboundRuleResponse].
  /// [category] Category of a managed network Outbound Rule of a machine learning workspace.
  /// [destination] Private Endpoint destination for a Private Endpoint Outbound Rule for the managed network of a machine learning workspace.
  /// [errorInformation] Error information about an outbound rule of a machine learning workspace if RuleStatus is failed.
  /// [fqdns] Optional.
  /// [parentRuleNames] Required.
  /// [status] Type of a managed network Outbound Rule of a machine learning workspace.
  /// [type] Type of a managed network Outbound Rule of a machine learning workspace.
  PrivateEndpointOutboundRuleResponse({
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
      'destination': ?pulumi.Input.mapOptionalInputValue<PrivateEndpointDestinationResponse, Map<String, dynamic>>(destination, (value) => value.toMap()),
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
      destination: (() { final guardedValue = map['destination']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PrivateEndpointDestinationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      errorInformation: pulumi.Input.fromValue(map['errorInformation'] as String),
      fqdns: (() { final guardedValue = map['fqdns']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      parentRuleNames: pulumi.Input.fromValue((map['parentRuleNames'] as List).cast<String>()),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

