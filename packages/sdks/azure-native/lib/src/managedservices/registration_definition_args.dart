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
    pulumi.Output<Plan>? plan,
    pulumi.Output<RegistrationDefinitionProperties>? properties,
    pulumi.Output<String>? registrationDefinitionId,
    required pulumi.Output<String> scope,
  }) :
      plan = pulumi.Input.asOptionalInput<Plan>(plan),
      properties = pulumi.Input.asOptionalInput<RegistrationDefinitionProperties>(properties),
      registrationDefinitionId = pulumi.Input.asOptionalInput<String>(registrationDefinitionId),
      scope = pulumi.Input.asInput<String>(scope);

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
      plan: map['plan'] == null ? null : pulumi.Output.create<Plan>(Plan.fromMap((map['plan'] as Map).cast<String, dynamic>())),
      properties: map['properties'] == null ? null : pulumi.Output.create<RegistrationDefinitionProperties>(RegistrationDefinitionProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      registrationDefinitionId: map['registrationDefinitionId'] == null ? null : pulumi.Output.create<String>(map['registrationDefinitionId'] as String),
      scope: pulumi.Output.create<String>(map['scope'] as String),
    );
  }
}

