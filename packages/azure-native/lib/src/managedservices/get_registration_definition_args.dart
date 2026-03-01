// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_managedservices_get_registration_definition_args_doc}
/// Arguments for getRegistrationDefinition.
/// {@endtemplate}
/// {@macro pulumi_managedservices_get_registration_definition_args_doc}
class GetRegistrationDefinitionArgs {
  /// The GUID of the registration definition.
  final pulumi.Input<String> registrationDefinitionId;
  /// The scope of the resource.
  final pulumi.Input<String> scope;

  /// Creates a new [GetRegistrationDefinitionArgs].
  /// [registrationDefinitionId] The GUID of the registration definition.
  /// [scope] The scope of the resource.
  GetRegistrationDefinitionArgs({
    required String registrationDefinitionId,
    required String scope,
  }) :
      registrationDefinitionId = pulumi.Input.asInput<String>(registrationDefinitionId),
      scope = pulumi.Input.asInput<String>(scope);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'registrationDefinitionId': registrationDefinitionId,
      'scope': scope,
    };
  }

  factory GetRegistrationDefinitionArgs.fromMap(Map<String, dynamic> map) {
    return GetRegistrationDefinitionArgs(
      registrationDefinitionId: map['registrationDefinitionId'] as String,
      scope: map['scope'] as String,
    );
  }
}

