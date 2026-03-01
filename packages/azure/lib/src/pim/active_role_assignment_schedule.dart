// ignore_for_file: unused_element, unnecessary_cast

import 'active_role_assignment_schedule_expiration.dart';

class ActiveRoleAssignmentSchedule {
  /// An `expiration` block as defined above.
  final ActiveRoleAssignmentScheduleExpiration? expiration;
  /// The start date/time of the role assignment. Changing this forces a new resource to be created.
  final String? startDateTime;

  /// Creates a new [ActiveRoleAssignmentSchedule].
  /// [expiration] An `expiration` block as defined above.
  /// [startDateTime] The start date/time of the role assignment. Changing this forces a new resource to be created.
  ActiveRoleAssignmentSchedule({
    this.expiration,
    this.startDateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expiration': ?expiration == null ? null : expiration!.toMap(),
      'startDateTime': ?startDateTime,
    };
  }

  factory ActiveRoleAssignmentSchedule.fromMap(Map<String, dynamic> map) {
    return ActiveRoleAssignmentSchedule(
      expiration: map['expiration'] == null ? null : ActiveRoleAssignmentScheduleExpiration.fromMap((map['expiration'] as Map).cast<String, dynamic>()),
      startDateTime: map['startDateTime'] == null ? null : map['startDateTime'] as String,
    );
  }
}

