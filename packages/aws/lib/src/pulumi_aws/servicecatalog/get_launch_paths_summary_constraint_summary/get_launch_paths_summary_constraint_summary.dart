// ignore_for_file: unused_element, unnecessary_cast

class GetLaunchPathsSummaryConstraintSummary {
  /// Description of the constraint.
  final String description;

  /// Type of constraint. Valid values are `LAUNCH`, `NOTIFICATION`, `STACKSET`, and `TEMPLATE`.
  final String type;

  GetLaunchPathsSummaryConstraintSummary({
    required this.description,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['description'] = description;
    map['type'] = type;
    return map;
  }

  factory GetLaunchPathsSummaryConstraintSummary.fromMap(
      Map<String, dynamic> map) {
    return GetLaunchPathsSummaryConstraintSummary(
      description: map['description'] as String,
      type: map['type'] as String,
    );
  }
}
