// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'registration_assignment_properties_response_registration_definition.dart';

/// The properties of the registration assignment.
class RegistrationAssignmentPropertiesResponse {
  /// The current provisioning state of the registration assignment.
  final pulumi.Input<String> provisioningState;
  /// The registration definition associated with the registration assignment.
  final pulumi.Input<RegistrationAssignmentPropertiesResponseRegistrationDefinition> registrationDefinition;
  /// The fully qualified path of the registration definition.
  final pulumi.Input<String> registrationDefinitionId;

  /// Creates a new [RegistrationAssignmentPropertiesResponse].
  /// [provisioningState] The current provisioning state of the registration assignment.
  /// [registrationDefinition] The registration definition associated with the registration assignment.
  /// [registrationDefinitionId] The fully qualified path of the registration definition.
  const RegistrationAssignmentPropertiesResponse({
    required this.provisioningState,
    required this.registrationDefinition,
    required this.registrationDefinitionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'provisioningState': provisioningState,
      'registrationDefinition': pulumi.Input.mapInputValue<RegistrationAssignmentPropertiesResponseRegistrationDefinition, Map<String, dynamic>>(registrationDefinition, (value) => value.toMap()),
      'registrationDefinitionId': registrationDefinitionId,
    };
  }

  factory RegistrationAssignmentPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return RegistrationAssignmentPropertiesResponse(
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      registrationDefinition: pulumi.Input.fromValue(RegistrationAssignmentPropertiesResponseRegistrationDefinition.fromMap((map['registrationDefinition']! as Map).cast<String, dynamic>())),
      registrationDefinitionId: pulumi.Input.fromValue(map['registrationDefinitionId'] as String),
    );
  }
}
