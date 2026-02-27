// ignore_for_file: unused_element, unnecessary_cast

class ScheduledActionScalableTargetAction {
  /// Maximum capacity. At least one of `max_capacity` or `min_capacity` must be set.
  final int? maxCapacity;

  /// Minimum capacity. At least one of `min_capacity` or `max_capacity` must be set.
  final int? minCapacity;

  ScheduledActionScalableTargetAction({
    this.maxCapacity,
    this.minCapacity,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final maxCapacityValue = maxCapacity;
    if (maxCapacityValue != null) {
      map['maxCapacity'] = maxCapacityValue;
    }
    final minCapacityValue = minCapacity;
    if (minCapacityValue != null) {
      map['minCapacity'] = minCapacityValue;
    }
    return map;
  }

  factory ScheduledActionScalableTargetAction.fromMap(
      Map<String, dynamic> map) {
    return ScheduledActionScalableTargetAction(
      maxCapacity:
          map['maxCapacity'] == null ? null : map['maxCapacity'] as int,
      minCapacity:
          map['minCapacity'] == null ? null : map['minCapacity'] as int,
    );
  }
}
