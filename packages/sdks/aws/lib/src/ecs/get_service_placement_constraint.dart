// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetServicePlacementConstraint {
  /// Cluster query language expression
  final pulumi.Input<String> expression;

  /// Constraint type
  final pulumi.Input<String> type;

  /// Creates a new [GetServicePlacementConstraint].
  /// [expression] Cluster query language expression
  /// [type] Constraint type
  GetServicePlacementConstraint({required this.expression, required this.type});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'expression': expression, 'type': type};
  }

  factory GetServicePlacementConstraint.fromMap(Map<String, dynamic> map) {
    return GetServicePlacementConstraint(
      expression: pulumi.Input.fromValue(map['expression'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
