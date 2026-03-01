// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_managedservices_get_registration_assignment_args_doc}
/// Arguments for getRegistrationAssignment.
/// {@endtemplate}
/// {@macro pulumi_managedservices_get_registration_assignment_args_doc}
class GetRegistrationAssignmentArgs {
  /// The flag indicating whether to return the registration definition details along with the registration assignment details.
  final pulumi.Input<bool>? expandRegistrationDefinition;
  /// The GUID of the registration assignment.
  final pulumi.Input<String> registrationAssignmentId;
  /// The scope of the resource.
  final pulumi.Input<String> scope;

  /// Creates a new [GetRegistrationAssignmentArgs].
  /// [expandRegistrationDefinition] The flag indicating whether to return the registration definition details along with the registration assignment details.
  /// [registrationAssignmentId] The GUID of the registration assignment.
  /// [scope] The scope of the resource.
  GetRegistrationAssignmentArgs({
    bool? expandRegistrationDefinition,
    required String registrationAssignmentId,
    required String scope,
  }) :
      expandRegistrationDefinition = pulumi.Input.asOptionalInput<bool>(expandRegistrationDefinition),
      registrationAssignmentId = pulumi.Input.asInput<String>(registrationAssignmentId),
      scope = pulumi.Input.asInput<String>(scope);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expandRegistrationDefinition': ?expandRegistrationDefinition,
      'registrationAssignmentId': registrationAssignmentId,
      'scope': scope,
    };
  }

  factory GetRegistrationAssignmentArgs.fromMap(Map<String, dynamic> map) {
    return GetRegistrationAssignmentArgs(
      expandRegistrationDefinition: map['expandRegistrationDefinition'] == null ? null : map['expandRegistrationDefinition'] as bool,
      registrationAssignmentId: map['registrationAssignmentId'] as String,
      scope: map['scope'] as String,
    );
  }
}

