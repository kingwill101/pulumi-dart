// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'plan.dart';
import 'registration_definition_properties.dart';

/// {@template pulumi_managedservices_registration_definition_args_doc}
/// The set of arguments for RegistrationDefinition.
/// {@endtemplate}
/// {@macro pulumi_managedservices_registration_definition_args_doc}
class RegistrationDefinitionArgs {
  /// The details for the Managed Services offer’s plan in Azure Marketplace.
  final pulumi.Input<Plan>? plan;
  /// The properties of a registration definition.
  final pulumi.Input<RegistrationDefinitionProperties>? properties;
  /// The GUID of the registration definition.
  final pulumi.Input<String>? registrationDefinitionId;
  /// The scope of the resource.
  final pulumi.Input<String> scope;

  /// Creates a new [RegistrationDefinitionArgs].
  /// [plan] The details for the Managed Services offer’s plan in Azure Marketplace.
  /// [properties] The properties of a registration definition.
  /// [registrationDefinitionId] The GUID of the registration definition.
  /// [scope] The scope of the resource.
  RegistrationDefinitionArgs({
    this.plan,
    this.properties,
    this.registrationDefinitionId,
    required this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'plan': ?pulumi.Input.mapOptionalInputValue<Plan, Map<String, dynamic>>(plan, (value) => value.toMap()),
      'properties': ?pulumi.Input.mapOptionalInputValue<RegistrationDefinitionProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'registrationDefinitionId': ?registrationDefinitionId,
      'scope': scope,
    };
  }

  factory RegistrationDefinitionArgs.fromMap(Map<String, dynamic> map) {
    return RegistrationDefinitionArgs(
      plan: map['plan'] == null ? null : (Plan.fromMap((map['plan']! as Map).cast<String, dynamic>())).input(),
      properties: map['properties'] == null ? null : (RegistrationDefinitionProperties.fromMap((map['properties']! as Map).cast<String, dynamic>())).input(),
      registrationDefinitionId: map['registrationDefinitionId'] == null ? null : (map['registrationDefinitionId']! as String).input(),
      scope: (map['scope'] as String).input(),
    );
  }
}

