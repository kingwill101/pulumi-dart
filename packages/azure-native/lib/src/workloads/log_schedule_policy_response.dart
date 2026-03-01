// ignore_for_file: unused_element, unnecessary_cast


/// Log policy schedule.
class LogSchedulePolicyResponse {
  /// Frequency of the log schedule operation of this policy in minutes.
  final int? scheduleFrequencyInMins;
  /// This property will be used as the discriminator for deciding the specific types in the polymorphic chain of types.
  /// Expected value is 'LogSchedulePolicy'.
  final String schedulePolicyType;

  /// Creates a new [LogSchedulePolicyResponse].
  /// [scheduleFrequencyInMins] Frequency of the log schedule operation of this policy in minutes.
  /// [schedulePolicyType] This property will be used as the discriminator for deciding the specific types in the polymorphic chain of types.
  LogSchedulePolicyResponse({
    this.scheduleFrequencyInMins,
    required this.schedulePolicyType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scheduleFrequencyInMins': ?scheduleFrequencyInMins,
      'schedulePolicyType': schedulePolicyType,
    };
  }

  factory LogSchedulePolicyResponse.fromMap(Map<String, dynamic> map) {
    return LogSchedulePolicyResponse(
      scheduleFrequencyInMins: map['scheduleFrequencyInMins'] == null ? null : map['scheduleFrequencyInMins'] as int,
      schedulePolicyType: map['schedulePolicyType'] as String,
    );
  }
}

