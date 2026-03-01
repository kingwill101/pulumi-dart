// ignore_for_file: unused_element, unnecessary_cast


/// Expiration of the role eligibility schedule
class RoleEligibilityScheduleRequestPropertiesResponseExpiration {
  /// Duration of the role eligibility schedule in TimeSpan.
  final String? duration;
  /// End DateTime of the role eligibility schedule.
  final String? endDateTime;
  /// Type of the role eligibility schedule expiration
  final String? type;

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
      duration: map['duration'] == null ? null : map['duration'] as String,
      endDateTime: map['endDateTime'] == null ? null : map['endDateTime'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

