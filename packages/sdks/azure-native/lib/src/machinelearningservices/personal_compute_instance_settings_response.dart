// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'assigned_user_response.dart';

/// Settings for a personal compute instance.
class PersonalComputeInstanceSettingsResponse {
  /// A user explicitly assigned to a personal compute instance.
  final pulumi.Input<AssignedUserResponse>? assignedUser;

  /// Creates a new [PersonalComputeInstanceSettingsResponse].
  /// [assignedUser] A user explicitly assigned to a personal compute instance.
  PersonalComputeInstanceSettingsResponse({
    this.assignedUser,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assignedUser': ?pulumi.Input.mapOptionalInputValue<AssignedUserResponse, Map<String, dynamic>>(assignedUser, (value) => value.toMap()),
    };
  }

  factory PersonalComputeInstanceSettingsResponse.fromMap(Map<String, dynamic> map) {
    return PersonalComputeInstanceSettingsResponse(
      assignedUser: map['assignedUser'] == null ? null : (AssignedUserResponse.fromMap((map['assignedUser'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

