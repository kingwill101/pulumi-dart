// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetLaunchPathsSummaryConstraintSummary {
  /// Description of the constraint.
  final pulumi.Input<String> description;
  /// Type of constraint. Valid values are `LAUNCH`, `NOTIFICATION`, `STACKSET`, and `TEMPLATE`.
  final pulumi.Input<String> type;

  /// Creates a new [GetLaunchPathsSummaryConstraintSummary].
  /// [description] Description of the constraint.
  /// [type] Type of constraint. Valid values are `LAUNCH`, `NOTIFICATION`, `STACKSET`, and `TEMPLATE`.
  GetLaunchPathsSummaryConstraintSummary({
    required this.description,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'type': type,
    };
  }

  factory GetLaunchPathsSummaryConstraintSummary.fromMap(Map<String, dynamic> map) {
    return GetLaunchPathsSummaryConstraintSummary(
      description: (map['description'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

