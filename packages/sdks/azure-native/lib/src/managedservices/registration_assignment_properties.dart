// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The properties of the registration assignment.
class RegistrationAssignmentProperties {
  /// The fully qualified path of the registration definition.
  final pulumi.Input<String> registrationDefinitionId;

  /// Creates a new [RegistrationAssignmentProperties].
  /// [registrationDefinitionId] The fully qualified path of the registration definition.
  const RegistrationAssignmentProperties({
    required this.registrationDefinitionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'registrationDefinitionId': registrationDefinitionId,
    };
  }

  factory RegistrationAssignmentProperties.fromMap(Map<String, dynamic> map) {
    return RegistrationAssignmentProperties(
      registrationDefinitionId: pulumi.Input.fromValue(map['registrationDefinitionId'] as String),
    );
  }
}
