// ignore_for_file: unused_element, unnecessary_cast

class GetServicePlacementConstraint {
  /// Cluster query language expression
  final String expression;

  /// Constraint type
  final String type;

  GetServicePlacementConstraint({
    required this.expression,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['expression'] = expression;
    map['type'] = type;
    return map;
  }

  factory GetServicePlacementConstraint.fromMap(Map<String, dynamic> map) {
    return GetServicePlacementConstraint(
      expression: map['expression'] as String,
      type: map['type'] as String,
    );
  }
}
