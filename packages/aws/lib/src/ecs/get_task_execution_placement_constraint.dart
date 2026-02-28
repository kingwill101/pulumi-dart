// ignore_for_file: unused_element, unnecessary_cast

class GetTaskExecutionPlacementConstraint {
  /// A cluster query language expression to apply to the constraint. The expression can have a maximum length of 2000 characters. You can't specify an expression if the constraint type is `distinctInstance`.
  final String? expression;

  /// The type of constraint. Valid values are `distinctInstance` or `memberOf`. Use `distinctInstance` to ensure that each task in a particular group is running on a different container instance. Use `memberOf` to restrict the selection to a group of valid candidates.
  final String type;

  /// Creates a new [GetTaskExecutionPlacementConstraint].
  /// [expression] A cluster query language expression to apply to the constraint. The expression can have a maximum length of 2000 characters. You can't specify an expression if the constraint type is `distinctInstance`.
  /// [type] The type of constraint. Valid values are `distinctInstance` or `memberOf`. Use `distinctInstance` to ensure that each task in a particular group is running on a different container instance. Use `memberOf` to restrict the selection to a group of valid candidates.
  GetTaskExecutionPlacementConstraint({
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

  factory GetTaskExecutionPlacementConstraint.fromMap(
      Map<String, dynamic> map) {
    return GetTaskExecutionPlacementConstraint(
      expression:
          map['expression'] == null ? null : map['expression'] as String,
      type: map['type'] as String,
    );
  }
}
