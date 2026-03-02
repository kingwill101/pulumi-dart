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
      category: map['category'] == null ? null : (map['category']! as String).input(),
      destination: map['destination'] == null ? null : (PrivateEndpointDestinationResponse.fromMap((map['destination']! as Map).cast<String, dynamic>())).input(),
      errorInformation: (map['errorInformation'] as String).input(),
      fqdns: map['fqdns'] == null ? null : ((map['fqdns']! as List).cast<String>()).input(),
      parentRuleNames: ((map['parentRuleNames'] as List).cast<String>()).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

