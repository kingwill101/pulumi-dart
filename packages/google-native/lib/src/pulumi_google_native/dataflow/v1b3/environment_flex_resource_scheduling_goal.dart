/// Which Flexible Resource Scheduling mode to run in.
enum EnvironmentFlexResourceSchedulingGoal {
  flexrsUnspecified("FLEXRS_UNSPECIFIED"),
  flexrsSpeedOptimized("FLEXRS_SPEED_OPTIMIZED"),
  flexrsCostOptimized("FLEXRS_COST_OPTIMIZED");

  const EnvironmentFlexResourceSchedulingGoal(this.value);
  final String value;

  static EnvironmentFlexResourceSchedulingGoal fromValue(String value) {
    for (final item in EnvironmentFlexResourceSchedulingGoal.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown EnvironmentFlexResourceSchedulingGoal value: $value');
  }
}
