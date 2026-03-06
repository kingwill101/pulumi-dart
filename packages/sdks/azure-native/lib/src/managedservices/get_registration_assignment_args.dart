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
  const GetRegistrationAssignmentArgs({
    this.expandRegistrationDefinition,
    required this.registrationAssignmentId,
    required this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expandRegistrationDefinition': ?expandRegistrationDefinition,
      'registrationAssignmentId': registrationAssignmentId,
      'scope': scope,
    };
  }

  factory GetRegistrationAssignmentArgs.fromMap(Map<String, dynamic> map) {
    return GetRegistrationAssignmentArgs(
      expandRegistrationDefinition: (() { final guardedValue = map['expandRegistrationDefinition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      registrationAssignmentId: pulumi.Input.fromValue(map['registrationAssignmentId'] as String),
      scope: pulumi.Input.fromValue(map['scope'] as String),
    );
  }
}

