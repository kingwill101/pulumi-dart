// ignore_for_file: unused_element, unnecessary_cast

import 'assigned_user.dart';

/// Settings for a personal compute instance.
class PersonalComputeInstanceSettings {
  /// A user explicitly assigned to a personal compute instance.
  final AssignedUser? assignedUser;

  /// Creates a new [PersonalComputeInstanceSettings].
  /// [assignedUser] A user explicitly assigned to a personal compute instance.
  PersonalComputeInstanceSettings({
    this.assignedUser,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assignedUser': ?assignedUser == null ? null : assignedUser!.toMap(),
    };
  }

  factory PersonalComputeInstanceSettings.fromMap(Map<String, dynamic> map) {
    return PersonalComputeInstanceSettings(
      assignedUser: map['assignedUser'] == null ? null : AssignedUser.fromMap((map['assignedUser'] as Map).cast<String, dynamic>()),
    );
  }
}

