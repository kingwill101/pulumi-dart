// ignore_for_file: unused_element, unnecessary_cast


/// Long term policy schedule.
class LongTermSchedulePolicy {
  /// This property will be used as the discriminator for deciding the specific types in the polymorphic chain of types.
  /// Expected value is 'LongTermSchedulePolicy'.
  final String schedulePolicyType;

  /// Creates a new [LongTermSchedulePolicy].
  /// [schedulePolicyType] This property will be used as the discriminator for deciding the specific types in the polymorphic chain of types.
  LongTermSchedulePolicy({
    required this.schedulePolicyType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'schedulePolicyType': schedulePolicyType,
    };
  }

  factory LongTermSchedulePolicy.fromMap(Map<String, dynamic> map) {
    return LongTermSchedulePolicy(
      schedulePolicyType: map['schedulePolicyType'] as String,
    );
  }
}

