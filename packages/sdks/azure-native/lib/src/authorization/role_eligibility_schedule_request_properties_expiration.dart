// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Expiration of the role eligibility schedule
class RoleEligibilityScheduleRequestPropertiesExpiration {
  /// Duration of the role eligibility schedule in TimeSpan.
  final pulumi.Input<String>? duration;
  /// End DateTime of the role eligibility schedule.
  final pulumi.Input<String>? endDateTime;
  /// Type of the role eligibility schedule expiration
  final pulumi.Input<String>? type;

  /// Creates a new [RoleEligibilityScheduleRequestPropertiesExpiration].
  /// [duration] Duration of the role eligibility schedule in TimeSpan.
  /// [endDateTime] End DateTime of the role eligibility schedule.
  /// [type] Type of the role eligibility schedule expiration
  RoleEligibilityScheduleRequestPropertiesExpiration({
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

  factory RoleEligibilityScheduleRequestPropertiesExpiration.fromMap(Map<String, dynamic> map) {
    return RoleEligibilityScheduleRequestPropertiesExpiration(
      duration: map['duration'] == null ? null : (map['duration']! as String).input(),
      endDateTime: map['endDateTime'] == null ? null : (map['endDateTime']! as String).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
    );
  }
}

