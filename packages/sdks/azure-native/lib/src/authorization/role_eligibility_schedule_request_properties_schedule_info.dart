// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'role_eligibility_schedule_request_properties_expiration.dart';

/// Schedule info of the role eligibility schedule
class RoleEligibilityScheduleRequestPropertiesScheduleInfo {
  /// Expiration of the role eligibility schedule
  final pulumi.Input<RoleEligibilityScheduleRequestPropertiesExpiration>? expiration;
  /// Start DateTime of the role eligibility schedule.
  final pulumi.Input<String>? startDateTime;

  /// Creates a new [RoleEligibilityScheduleRequestPropertiesScheduleInfo].
  /// [expiration] Expiration of the role eligibility schedule
  /// [startDateTime] Start DateTime of the role eligibility schedule.
  RoleEligibilityScheduleRequestPropertiesScheduleInfo({
    this.expiration,
    this.startDateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expiration': ?pulumi.Input.mapOptionalInputValue<RoleEligibilityScheduleRequestPropertiesExpiration, Map<String, dynamic>>(expiration, (value) => value.toMap()),
      'startDateTime': ?startDateTime,
    };
  }

  factory RoleEligibilityScheduleRequestPropertiesScheduleInfo.fromMap(Map<String, dynamic> map) {
    return RoleEligibilityScheduleRequestPropertiesScheduleInfo(
      expiration: (() { final guardedValue = map['expiration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RoleEligibilityScheduleRequestPropertiesExpiration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      startDateTime: (() { final guardedValue = map['startDateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

