// ignore_for_file: unused_element, unnecessary_cast

class RolloutKindErrorBudget {
  /// The maximum number of failed units allowed in a location without pausing
  /// the rollout.
  final int? allowedCount;

  /// The maximum percentage of units allowed to fail (0, 100] within a location
  /// without pausing the rollout.
  final int? allowedPercentage;

  RolloutKindErrorBudget({
    this.allowedCount,
    this.allowedPercentage,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allowedCountValue = allowedCount;
    if (allowedCountValue != null) {
      map['allowedCount'] = allowedCountValue;
    }
    final allowedPercentageValue = allowedPercentage;
    if (allowedPercentageValue != null) {
      map['allowedPercentage'] = allowedPercentageValue;
    }
    return map;
  }

  factory RolloutKindErrorBudget.fromMap(Map<String, dynamic> map) {
    return RolloutKindErrorBudget(
      allowedCount:
          map['allowedCount'] == null ? null : map['allowedCount'] as int,
      allowedPercentage: map['allowedPercentage'] == null
          ? null
          : map['allowedPercentage'] as int,
    );
  }
}
