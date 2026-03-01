// ignore_for_file: unused_element, unnecessary_cast

import 'rosetta_net_pip_business_document_response.dart';

/// The integration account RosettaNet ProcessConfiguration role settings.
class RosettaNetPipRoleSettingsResponse {
  /// The action name.
  final String action;
  /// The RosettaNet ProcessConfiguration business document.
  final RosettaNetPipBusinessDocumentResponse businessDocument;
  /// The description.
  final String? description;
  /// The role name.
  final String role;
  /// The RosettaNet ProcessConfiguration role type.
  final String roleType;
  /// The service name.
  final String service;
  /// The service classification name.
  final String serviceClassification;

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
      'businessDocument': businessDocument.toMap(),
      'description': ?description,
      'role': role,
      'roleType': roleType,
      'service': service,
      'serviceClassification': serviceClassification,
    };
  }

  factory RosettaNetPipRoleSettingsResponse.fromMap(Map<String, dynamic> map) {
    return RosettaNetPipRoleSettingsResponse(
      action: map['action'] as String,
      businessDocument: RosettaNetPipBusinessDocumentResponse.fromMap((map['businessDocument'] as Map).cast<String, dynamic>()),
      description: map['description'] == null ? null : map['description'] as String,
      role: map['role'] as String,
      roleType: map['roleType'] as String,
      service: map['service'] as String,
      serviceClassification: map['serviceClassification'] as String,
    );
  }
}

