// ignore_for_file: unused_element, unnecessary_cast

class OsPolicyAssignmentRolloutDisruptionBudget {
  /// Specifies a fixed value.
  final int? fixed;

  /// Specifies the relative value defined as a percentage,
  /// which will be multiplied by a reference value.
  ///
  /// --------------------------------------------------------------------------------
  final int? percent;

  OsPolicyAssignmentRolloutDisruptionBudget({
    this.fixed,
    this.percent,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final fixedValue = fixed;
    if (fixedValue != null) {
      map['fixed'] = fixedValue;
    }
    final percentValue = percent;
    if (percentValue != null) {
      map['percent'] = percentValue;
    }
    return map;
  }

  factory OsPolicyAssignmentRolloutDisruptionBudget.fromMap(
      Map<String, dynamic> map) {
    return OsPolicyAssignmentRolloutDisruptionBudget(
      fixed: map['fixed'] == null ? null : map['fixed'] as int,
      percent: map['percent'] == null ? null : map['percent'] as int,
    );
  }
}
