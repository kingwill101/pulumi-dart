// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'registration_assignment_properties.dart';

/// {@template pulumi_managedservices_registration_assignment_args_doc}
/// The set of arguments for RegistrationAssignment.
/// {@endtemplate}
/// {@macro pulumi_managedservices_registration_assignment_args_doc}
class RegistrationAssignmentArgs {
  /// The properties of a registration assignment.
  final pulumi.Input<RegistrationAssignmentProperties>? properties;
  /// The GUID of the registration assignment.
  final pulumi.Input<String>? registrationAssignmentId;
  /// The scope of the resource.
  final pulumi.Input<String> scope;

  /// Creates a new [RegistrationAssignmentArgs].
  /// [properties] The properties of a registration assignment.
  /// [registrationAssignmentId] The GUID of the registration assignment.
  /// [scope] The scope of the resource.
  const RegistrationAssignmentArgs({
    this.properties,
    this.registrationAssignmentId,
    required this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'properties': ?pulumi.Input.mapOptionalInputValue<RegistrationAssignmentProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'registrationAssignmentId': ?registrationAssignmentId,
      'scope': scope,
    };
  }

  factory RegistrationAssignmentArgs.fromMap(Map<String, dynamic> map) {
    return RegistrationAssignmentArgs(
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RegistrationAssignmentProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      registrationAssignmentId: (() { final guardedValue = map['registrationAssignmentId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scope: pulumi.Input.fromValue(map['scope'] as String),
    );
  }
}

