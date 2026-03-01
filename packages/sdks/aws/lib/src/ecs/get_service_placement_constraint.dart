// ignore_for_file: unused_element, unnecessary_cast


class GetServicePlacementConstraint {
  /// Cluster query language expression
  final String expression;
  /// Constraint type
  final String type;

  /// Creates a new [GetServicePlacementConstraint].
  /// [expression] Cluster query language expression
  /// [type] Constraint type
  GetServicePlacementConstraint({
    required this.expression,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expression': expression,
      'type': type,
    };
  }

  factory GetServicePlacementConstraint.fromMap(Map<String, dynamic> map) {
    return GetServicePlacementConstraint(
      expression: map['expression'] as String,
      type: map['type'] as String,
    );
  }
}

