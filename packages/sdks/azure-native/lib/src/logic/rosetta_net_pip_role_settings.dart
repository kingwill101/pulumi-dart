// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rosetta_net_pip_business_document.dart';
import 'rosetta_net_pip_role_type.dart';

/// The integration account RosettaNet ProcessConfiguration role settings.
class RosettaNetPipRoleSettings {
  /// The action name.
  final pulumi.Input<String> action;
  /// The RosettaNet ProcessConfiguration business document.
  final pulumi.Input<RosettaNetPipBusinessDocument> businessDocument;
  /// The description.
  final pulumi.Input<String>? description;
  /// The role name.
  final pulumi.Input<String> role;
  /// The RosettaNet ProcessConfiguration role type.
  final pulumi.Input<RosettaNetPipRoleType> roleType;
  /// The service name.
  final pulumi.Input<String> service;
  /// The service classification name.
  final pulumi.Input<String> serviceClassification;

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
      'businessDocument': pulumi.Input.mapInputValue<RosettaNetPipBusinessDocument, Map<String, dynamic>>(businessDocument, (value) => value.toMap()),
      'description': ?description,
      'role': role,
      'roleType': pulumi.Input.mapInputValue<RosettaNetPipRoleType, String>(roleType, (value) => value.wireValue),
      'service': service,
      'serviceClassification': serviceClassification,
    };
  }

  factory RosettaNetPipRoleSettings.fromMap(Map<String, dynamic> map) {
    return RosettaNetPipRoleSettings(
      action: pulumi.Input.fromValue(map['action'] as String),
      businessDocument: pulumi.Input.fromValue(RosettaNetPipBusinessDocument.fromMap((map['businessDocument']! as Map).cast<String, dynamic>())),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      role: pulumi.Input.fromValue(map['role'] as String),
      roleType: pulumi.Input.fromValue(RosettaNetPipRoleType.fromValue(map['roleType']! as String)),
      service: pulumi.Input.fromValue(map['service'] as String),
      serviceClassification: pulumi.Input.fromValue(map['serviceClassification'] as String),
    );
  }
}

