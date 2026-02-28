// ignore_for_file: unused_element, unnecessary_cast

class PatchDeploymentRolloutDisruptionBudget {
  /// Specifies a fixed value.
  final int? fixed;

  /// Specifies the relative value defined as a percentage, which will be multiplied by a reference value.
  final int? percentage;

  /// Creates a new [PatchDeploymentRolloutDisruptionBudget].
  /// [fixed] Specifies a fixed value.
  /// [percentage] Specifies the relative value defined as a percentage, which will be multiplied by a reference value.
  PatchDeploymentRolloutDisruptionBudget({
    this.fixed,
    this.percentage,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final fixedValue = fixed;
    if (fixedValue != null) {
      map['fixed'] = fixedValue;
    }
    final percentageValue = percentage;
    if (percentageValue != null) {
      map['percentage'] = percentageValue;
    }
    return map;
  }

  factory PatchDeploymentRolloutDisruptionBudget.fromMap(
      Map<String, dynamic> map) {
    return PatchDeploymentRolloutDisruptionBudget(
      fixed: map['fixed'] == null ? null : map['fixed'] as int,
      percentage: map['percentage'] == null ? null : map['percentage'] as int,
    );
  }
}
