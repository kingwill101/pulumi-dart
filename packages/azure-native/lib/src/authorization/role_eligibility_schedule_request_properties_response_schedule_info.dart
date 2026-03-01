// ignore_for_file: unused_element, unnecessary_cast

import 'role_eligibility_schedule_request_properties_response_expiration.dart';

/// Schedule info of the role eligibility schedule
class RoleEligibilityScheduleRequestPropertiesResponseScheduleInfo {
  /// Expiration of the role eligibility schedule
  final RoleEligibilityScheduleRequestPropertiesResponseExpiration? expiration;
  /// Start DateTime of the role eligibility schedule.
  final String? startDateTime;

  /// Creates a new [RoleEligibilityScheduleRequestPropertiesResponseScheduleInfo].
  /// [expiration] Expiration of the role eligibility schedule
  /// [startDateTime] Start DateTime of the role eligibility schedule.
  RoleEligibilityScheduleRequestPropertiesResponseScheduleInfo({
    this.expiration,
    this.startDateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expiration': ?expiration == null ? null : expiration!.toMap(),
      'startDateTime': ?startDateTime,
    };
  }

  factory RoleEligibilityScheduleRequestPropertiesResponseScheduleInfo.fromMap(Map<String, dynamic> map) {
    return RoleEligibilityScheduleRequestPropertiesResponseScheduleInfo(
      expiration: map['expiration'] == null ? null : RoleEligibilityScheduleRequestPropertiesResponseExpiration.fromMap((map['expiration'] as Map).cast<String, dynamic>()),
      startDateTime: map['startDateTime'] == null ? null : map['startDateTime'] as String,
    );
  }
}

