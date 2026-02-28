// ignore_for_file: unused_element, unnecessary_cast

class EventTargetEcsTargetPlacementConstraint {
  /// Cluster Query Language expression to apply to the constraint. Does not need to be specified for the `distinctInstance` type. For more information, see [Cluster Query Language in the Amazon EC2 Container Service Developer Guide](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/cluster-query-language.html).
  final String? expression;

  /// Type of constraint. The only valid values at this time are `memberOf` and `distinctInstance`.
  final String type;

  /// Creates a new [EventTargetEcsTargetPlacementConstraint].
  /// [expression] Cluster Query Language expression to apply to the constraint. Does not need to be specified for the `distinctInstance` type. For more information, see [Cluster Query Language in the Amazon EC2 Container Service Developer Guide](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/cluster-query-language.html).
  /// [type] Type of constraint. The only valid values at this time are `memberOf` and `distinctInstance`.
  EventTargetEcsTargetPlacementConstraint({
    this.expression,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final expressionValue = expression;
    if (expressionValue != null) {
      map['expression'] = expressionValue;
    }
    map['type'] = type;
    return map;
  }

  factory EventTargetEcsTargetPlacementConstraint.fromMap(
      Map<String, dynamic> map) {
    return EventTargetEcsTargetPlacementConstraint(
      expression:
          map['expression'] == null ? null : map['expression'] as String,
      type: map['type'] as String,
    );
  }
}
