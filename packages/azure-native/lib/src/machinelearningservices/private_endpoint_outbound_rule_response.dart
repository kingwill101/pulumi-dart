// ignore_for_file: unused_element, unnecessary_cast

import 'private_endpoint_destination_response.dart';

/// Private Endpoint Outbound Rule for the managed network of a machine learning workspace.
class PrivateEndpointOutboundRuleResponse {
  /// Category of a managed network Outbound Rule of a machine learning workspace.
  final String? category;
  /// Private Endpoint destination for a Private Endpoint Outbound Rule for the managed network of a machine learning workspace.
  final PrivateEndpointDestinationResponse? destination;
  /// Error information about an outbound rule of a machine learning workspace if RuleStatus is failed.
  final String errorInformation;
  final List<String>? fqdns;
  final List<String> parentRuleNames;
  /// Type of a managed network Outbound Rule of a machine learning workspace.
  final String? status;
  /// Type of a managed network Outbound Rule of a machine learning workspace.
  /// Expected value is 'PrivateEndpoint'.
  final String type;

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
      'destination': ?destination == null ? null : destination!.toMap(),
      'errorInformation': errorInformation,
      'fqdns': ?fqdns,
      'parentRuleNames': parentRuleNames,
      'status': ?status,
      'type': type,
    };
  }

  factory PrivateEndpointOutboundRuleResponse.fromMap(Map<String, dynamic> map) {
    return PrivateEndpointOutboundRuleResponse(
      category: map['category'] == null ? null : map['category'] as String,
      destination: map['destination'] == null ? null : PrivateEndpointDestinationResponse.fromMap((map['destination'] as Map).cast<String, dynamic>()),
      errorInformation: map['errorInformation'] as String,
      fqdns: map['fqdns'] == null ? null : (map['fqdns'] as List).cast<String>(),
      parentRuleNames: (map['parentRuleNames'] as List).cast<String>(),
      status: map['status'] == null ? null : map['status'] as String,
      type: map['type'] as String,
    );
  }
}

