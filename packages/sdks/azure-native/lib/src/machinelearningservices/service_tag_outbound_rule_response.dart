// ignore_for_file: unused_element, unnecessary_cast

import 'service_tag_destination_response.dart';

/// Service Tag Outbound Rule for the managed network of a machine learning workspace.
class ServiceTagOutboundRuleResponse {
  /// Category of a managed network Outbound Rule of a machine learning workspace.
  final String? category;
  /// Service Tag destination for a Service Tag Outbound Rule for the managed network of a machine learning workspace.
  final ServiceTagDestinationResponse? destination;
  /// Error information about an outbound rule of a machine learning workspace if RuleStatus is failed.
  final String errorInformation;
  final List<String> parentRuleNames;
  /// Type of a managed network Outbound Rule of a machine learning workspace.
  final String? status;
  /// Type of a managed network Outbound Rule of a machine learning workspace.
  /// Expected value is 'ServiceTag'.
  final String type;

  /// Creates a new [ServiceTagOutboundRuleResponse].
  /// [category] Category of a managed network Outbound Rule of a machine learning workspace.
  /// [destination] Service Tag destination for a Service Tag Outbound Rule for the managed network of a machine learning workspace.
  /// [errorInformation] Error information about an outbound rule of a machine learning workspace if RuleStatus is failed.
  /// [parentRuleNames] Required.
  /// [status] Type of a managed network Outbound Rule of a machine learning workspace.
  /// [type] Type of a managed network Outbound Rule of a machine learning workspace.
  ServiceTagOutboundRuleResponse({
    this.category,
    this.destination,
    required this.errorInformation,
    required this.parentRuleNames,
    this.status,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'category': ?category,
      'destination': ?destination == null ? null : destination!.toMap(),
      'errorInformation': errorInformation,
      'parentRuleNames': parentRuleNames,
      'status': ?status,
      'type': type,
    };
  }

  factory ServiceTagOutboundRuleResponse.fromMap(Map<String, dynamic> map) {
    return ServiceTagOutboundRuleResponse(
      category: map['category'] == null ? null : map['category'] as String,
      destination: map['destination'] == null ? null : ServiceTagDestinationResponse.fromMap((map['destination'] as Map).cast<String, dynamic>()),
      errorInformation: map['errorInformation'] as String,
      parentRuleNames: (map['parentRuleNames'] as List).cast<String>(),
      status: map['status'] == null ? null : map['status'] as String,
      type: map['type'] as String,
    );
  }
}

