// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TaskDefinitionPlacementConstraint {
  /// Cluster Query Language expression to apply to the constraint. For more information, see [Cluster Query Language in the Amazon EC2 Container Service Developer Guide](http://docs.aws.amazon.com/AmazonECS/latest/developerguide/cluster-query-language.html).
  final pulumi.Input<String?>? expression;
  /// Type of constraint. Use `memberOf` to restrict selection to a group of valid candidates. Note that `distinctInstance` is not supported in task definitions.
  final pulumi.Input<String> type;

  /// Creates a new [TaskDefinitionPlacementConstraint].
  /// [expression] Cluster Query Language expression to apply to the constraint. For more information, see [Cluster Query Language in the Amazon EC2 Container Service Developer Guide](http://docs.aws.amazon.com/AmazonECS/latest/developerguide/cluster-query-language.html).
  /// [type] Type of constraint. Use `memberOf` to restrict selection to a group of valid candidates. Note that `distinctInstance` is not supported in task definitions.
  const TaskDefinitionPlacementConstraint({
    this.expression,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expression': ?expression,
      'type': type,
    };
  }

  factory TaskDefinitionPlacementConstraint.fromMap(Map<String, dynamic> map) {
    return TaskDefinitionPlacementConstraint(
      expression: (() { final guardedValue = map['expression']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
