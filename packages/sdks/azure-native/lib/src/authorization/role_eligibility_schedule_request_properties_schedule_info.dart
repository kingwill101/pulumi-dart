// ignore_for_file: unused_element, unnecessary_cast

import 'role_eligibility_schedule_request_properties_expiration.dart';

/// Schedule info of the role eligibility schedule
class RoleEligibilityScheduleRequestPropertiesScheduleInfo {
  /// Expiration of the role eligibility schedule
  final RoleEligibilityScheduleRequestPropertiesExpiration? expiration;
  /// Start DateTime of the role eligibility schedule.
  final String? startDateTime;

  /// Creates a new [RoleEligibilityScheduleRequestPropertiesScheduleInfo].
  /// [expiration] Expiration of the role eligibility schedule
  /// [startDateTime] Start DateTime of the role eligibility schedule.
  RoleEligibilityScheduleRequestPropertiesScheduleInfo({
    this.expiration,
    this.startDateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expiration': ?expiration == null ? null : expiration!.toMap(),
      'startDateTime': ?startDateTime,
    };
  }

  factory RoleEligibilityScheduleRequestPropertiesScheduleInfo.fromMap(Map<String, dynamic> map) {
    return RoleEligibilityScheduleRequestPropertiesScheduleInfo(
      expiration: map['expiration'] == null ? null : RoleEligibilityScheduleRequestPropertiesExpiration.fromMap((map['expiration'] as Map).cast<String, dynamic>()),
      startDateTime: map['startDateTime'] == null ? null : map['startDateTime'] as String,
    );
  }
}

