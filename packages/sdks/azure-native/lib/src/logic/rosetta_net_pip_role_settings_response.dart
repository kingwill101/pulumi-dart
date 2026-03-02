// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rosetta_net_pip_business_document_response.dart';

/// The integration account RosettaNet ProcessConfiguration role settings.
class RosettaNetPipRoleSettingsResponse {
  /// The action name.
  final pulumi.Input<String> action;
  /// The RosettaNet ProcessConfiguration business document.
  final pulumi.Input<RosettaNetPipBusinessDocumentResponse> businessDocument;
  /// The description.
  final pulumi.Input<String>? description;
  /// The role name.
  final pulumi.Input<String> role;
  /// The RosettaNet ProcessConfiguration role type.
  final pulumi.Input<String> roleType;
  /// The service name.
  final pulumi.Input<String> service;
  /// The service classification name.
  final pulumi.Input<String> serviceClassification;

  /// Creates a new [RosettaNetPipRoleSettingsResponse].
  /// [action] The action name.
  /// [businessDocument] The RosettaNet ProcessConfiguration business document.
  /// [description] The description.
  /// [role] The role name.
  /// [roleType] The RosettaNet ProcessConfiguration role type.
  /// [service] The service name.
  /// [serviceClassification] The service classification name.
  RosettaNetPipRoleSettingsResponse({
    required this.action,
    required this.businessDocument,
    this.description,
    required this.role,
    required this.roleType,
    required this.service,
    required this.serviceClassification,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'businessDocument': pulumi.Input.mapInputValue<RosettaNetPipBusinessDocumentResponse, Map<String, dynamic>>(businessDocument, (value) => value.toMap()),
      'description': ?description,
      'role': role,
      'roleType': roleType,
      'service': service,
      'serviceClassification': serviceClassification,
    };
  }

  factory RosettaNetPipRoleSettingsResponse.fromMap(Map<String, dynamic> map) {
    return RosettaNetPipRoleSettingsResponse(
      action: (map['action'] as String).input(),
      businessDocument: (RosettaNetPipBusinessDocumentResponse.fromMap((map['businessDocument'] as Map).cast<String, dynamic>())).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      role: (map['role'] as String).input(),
      roleType: (map['roleType'] as String).input(),
      service: (map['service'] as String).input(),
      serviceClassification: (map['serviceClassification'] as String).input(),
    );
  }
}

