// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Expiration of the role eligibility schedule
class RoleEligibilityScheduleRequestPropertiesResponseExpiration {
  /// Duration of the role eligibility schedule in TimeSpan.
  final pulumi.Input<String>? duration;
  /// End DateTime of the role eligibility schedule.
  final pulumi.Input<String>? endDateTime;
  /// Type of the role eligibility schedule expiration
  final pulumi.Input<String>? type;

  /// Creates a new [RoleEligibilityScheduleRequestPropertiesResponseExpiration].
  /// [duration] Duration of the role eligibility schedule in TimeSpan.
  /// [endDateTime] End DateTime of the role eligibility schedule.
  /// [type] Type of the role eligibility schedule expiration
  RoleEligibilityScheduleRequestPropertiesResponseExpiration({
    this.duration,
    this.endDateTime,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'duration': ?duration,
      'endDateTime': ?endDateTime,
      'type': ?type,
    };
  }

  factory RoleEligibilityScheduleRequestPropertiesResponseExpiration.fromMap(Map<String, dynamic> map) {
    return RoleEligibilityScheduleRequestPropertiesResponseExpiration(
      duration: (() { final guardedValue = map['duration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endDateTime: (() { final guardedValue = map['endDateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

