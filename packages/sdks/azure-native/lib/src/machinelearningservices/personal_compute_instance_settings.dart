// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'assigned_user.dart';

/// Settings for a personal compute instance.
class PersonalComputeInstanceSettings {
  /// A user explicitly assigned to a personal compute instance.
  final pulumi.Input<AssignedUser>? assignedUser;

  /// Creates a new [PersonalComputeInstanceSettings].
  /// [assignedUser] A user explicitly assigned to a personal compute instance.
  PersonalComputeInstanceSettings({
    this.assignedUser,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assignedUser': ?pulumi.Input.mapOptionalInputValue<AssignedUser, Map<String, dynamic>>(assignedUser, (value) => value.toMap()),
    };
  }

  factory PersonalComputeInstanceSettings.fromMap(Map<String, dynamic> map) {
    return PersonalComputeInstanceSettings(
      assignedUser: map['assignedUser'] == null ? null : (AssignedUser.fromMap((map['assignedUser'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

