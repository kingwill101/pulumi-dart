// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_tag_destination_response.dart';

/// Service Tag Outbound Rule for the managed network of a machine learning workspace.
class ServiceTagOutboundRuleResponse {
  /// Category of a managed network Outbound Rule of a machine learning workspace.
  final pulumi.Input<String>? category;
  /// Service Tag destination for a Service Tag Outbound Rule for the managed network of a machine learning workspace.
  final pulumi.Input<ServiceTagDestinationResponse>? destination;
  /// Error information about an outbound rule of a machine learning workspace if RuleStatus is failed.
  final pulumi.Input<String> errorInformation;
  final pulumi.Input<List<String>> parentRuleNames;
  /// Type of a managed network Outbound Rule of a machine learning workspace.
  final pulumi.Input<String>? status;
  /// Type of a managed network Outbound Rule of a machine learning workspace.
  /// Expected value is 'ServiceTag'.
  final pulumi.Input<String> type;

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
      'destination': ?pulumi.Input.mapOptionalInputValue<ServiceTagDestinationResponse, Map<String, dynamic>>(destination, (value) => value.toMap()),
      'errorInformation': errorInformation,
      'parentRuleNames': parentRuleNames,
      'status': ?status,
      'type': type,
    };
  }

  factory ServiceTagOutboundRuleResponse.fromMap(Map<String, dynamic> map) {
    return ServiceTagOutboundRuleResponse(
      category: map['category'] == null ? null : (map['category'] as String).input(),
      destination: map['destination'] == null ? null : (ServiceTagDestinationResponse.fromMap((map['destination'] as Map).cast<String, dynamic>())).input(),
      errorInformation: (map['errorInformation'] as String).input(),
      parentRuleNames: ((map['parentRuleNames'] as List).cast<String>()).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

