// ignore_for_file: unused_element, unnecessary_cast

class GetLaunchPathsSummaryConstraintSummary {
  /// Description of the constraint.
  final String description;

  /// Type of constraint. Valid values are `LAUNCH`, `NOTIFICATION`, `STACKSET`, and `TEMPLATE`.
  final String type;

  /// Creates a new [GetLaunchPathsSummaryConstraintSummary].
  /// [description] Description of the constraint.
  /// [type] Type of constraint. Valid values are `LAUNCH`, `NOTIFICATION`, `STACKSET`, and `TEMPLATE`.
  GetLaunchPathsSummaryConstraintSummary({
    required this.description,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'description': description, 'type': type};
  }

  factory GetLaunchPathsSummaryConstraintSummary.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetLaunchPathsSummaryConstraintSummary(
      description: map['description'] as String,
      type: map['type'] as String,
    );
  }
}
