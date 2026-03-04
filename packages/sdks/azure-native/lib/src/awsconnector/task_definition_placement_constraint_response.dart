// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of TaskDefinitionPlacementConstraint
class TaskDefinitionPlacementConstraintResponse {
  /// A cluster query language expression to apply to the constraint. For more information, see [Cluster query language](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/cluster-query-language.html) in the *Amazon Elastic Container Service Developer Guide*.
  final pulumi.Input<String>? expression;

  /// The type of constraint. The ``MemberOf`` constraint restricts selection to be from a group of valid candidates.
  final pulumi.Input<String>? type;

  /// Creates a new [TaskDefinitionPlacementConstraintResponse].
  /// [expression] A cluster query language expression to apply to the constraint. For more information, see [Cluster query language](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/cluster-query-language.html) in the *Amazon Elastic Container Service Developer Guide*.
  /// [type] The type of constraint. The ``MemberOf`` constraint restricts selection to be from a group of valid candidates.
  TaskDefinitionPlacementConstraintResponse({this.expression, this.type});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'expression': ?expression, 'type': ?type};
  }

  factory TaskDefinitionPlacementConstraintResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return TaskDefinitionPlacementConstraintResponse(
      expression: (() {
        final guardedValue = map['expression'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
