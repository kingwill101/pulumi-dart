// ignore_for_file: unused_element, unnecessary_cast

import 'rosetta_net_pip_business_document.dart';
import 'rosetta_net_pip_role_type.dart';

/// The integration account RosettaNet ProcessConfiguration role settings.
class RosettaNetPipRoleSettings {
  /// The action name.
  final String action;
  /// The RosettaNet ProcessConfiguration business document.
  final RosettaNetPipBusinessDocument businessDocument;
  /// The description.
  final String? description;
  /// The role name.
  final String role;
  /// The RosettaNet ProcessConfiguration role type.
  final RosettaNetPipRoleType roleType;
  /// The service name.
  final String service;
  /// The service classification name.
  final String serviceClassification;

  /// Creates a new [RosettaNetPipRoleSettings].
  /// [action] The action name.
  /// [businessDocument] The RosettaNet ProcessConfiguration business document.
  /// [description] The description.
  /// [role] The role name.
  /// [roleType] The RosettaNet ProcessConfiguration role type.
  /// [service] The service name.
  /// [serviceClassification] The service classification name.
  RosettaNetPipRoleSettings({
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
      'roleType': roleType.value,
      'service': service,
      'serviceClassification': serviceClassification,
    };
  }

  factory RosettaNetPipRoleSettings.fromMap(Map<String, dynamic> map) {
    return RosettaNetPipRoleSettings(
      action: map['action'] as String,
      businessDocument: RosettaNetPipBusinessDocument.fromMap((map['businessDocument'] as Map).cast<String, dynamic>()),
      description: map['description'] == null ? null : map['description'] as String,
      role: map['role'] as String,
      roleType: RosettaNetPipRoleType.fromValue(map['roleType'] as String),
      service: map['service'] as String,
      serviceClassification: map['serviceClassification'] as String,
    );
  }
}

