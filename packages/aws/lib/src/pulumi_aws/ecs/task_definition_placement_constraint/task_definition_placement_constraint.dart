// ignore_for_file: unused_element, unnecessary_cast

class TaskDefinitionPlacementConstraint {
  /// Cluster Query Language expression to apply to the constraint. For more information, see [Cluster Query Language in the Amazon EC2 Container Service Developer Guide](http://docs.aws.amazon.com/AmazonECS/latest/developerguide/cluster-query-language.html).
  final String? expression;

  /// Type of constraint. Use `memberOf` to restrict selection to a group of valid candidates. Note that `distinctInstance` is not supported in task definitions.
  final String type;

  TaskDefinitionPlacementConstraint({
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

  factory TaskDefinitionPlacementConstraint.fromMap(Map<String, dynamic> map) {
    return TaskDefinitionPlacementConstraint(
      expression:
          map['expression'] == null ? null : map['expression'] as String,
      type: map['type'] as String,
    );
  }
}
