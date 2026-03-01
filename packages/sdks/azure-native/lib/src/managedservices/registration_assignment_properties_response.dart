// ignore_for_file: unused_element, unnecessary_cast

import 'registration_assignment_properties_response_registration_definition.dart';

/// The properties of the registration assignment.
class RegistrationAssignmentPropertiesResponse {
  /// The current provisioning state of the registration assignment.
  final String provisioningState;
  /// The registration definition associated with the registration assignment.
  final RegistrationAssignmentPropertiesResponseRegistrationDefinition registrationDefinition;
  /// The fully qualified path of the registration definition.
  final String registrationDefinitionId;

  /// Creates a new [RegistrationAssignmentPropertiesResponse].
  /// [provisioningState] The current provisioning state of the registration assignment.
  /// [registrationDefinition] The registration definition associated with the registration assignment.
  /// [registrationDefinitionId] The fully qualified path of the registration definition.
  RegistrationAssignmentPropertiesResponse({
    required this.provisioningState,
    required this.registrationDefinition,
    required this.registrationDefinitionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'provisioningState': provisioningState,
      'registrationDefinition': registrationDefinition.toMap(),
      'registrationDefinitionId': registrationDefinitionId,
    };
  }

  factory RegistrationAssignmentPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return RegistrationAssignmentPropertiesResponse(
      provisioningState: map['provisioningState'] as String,
      registrationDefinition: RegistrationAssignmentPropertiesResponseRegistrationDefinition.fromMap((map['registrationDefinition'] as Map).cast<String, dynamic>()),
      registrationDefinitionId: map['registrationDefinitionId'] as String,
    );
  }
}

