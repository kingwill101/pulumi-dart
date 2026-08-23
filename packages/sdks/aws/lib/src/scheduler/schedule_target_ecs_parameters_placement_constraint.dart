// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ScheduleTargetEcsParametersPlacementConstraint {
  /// A cluster query language expression to apply to the constraint. You cannot specify an expression if the constraint type is `distinctInstance`. For more information, see [Cluster query language](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/cluster-query-language.html) in the Amazon ECS Developer Guide.
  final pulumi.Input<String>? expression;
  /// The type of constraint. One of: `distinctInstance`, `memberOf`.
  final pulumi.Input<String> type;

  /// Creates a new [ScheduleTargetEcsParametersPlacementConstraint].
  /// [expression] A cluster query language expression to apply to the constraint. You cannot specify an expression if the constraint type is `distinctInstance`. For more information, see [Cluster query language](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/cluster-query-language.html) in the Amazon ECS Developer Guide.
  /// [type] The type of constraint. One of: `distinctInstance`, `memberOf`.
  const ScheduleTargetEcsParametersPlacementConstraint({
    this.expression,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expression': ?expression,
      'type': type,
    };
  }

  factory ScheduleTargetEcsParametersPlacementConstraint.fromMap(Map<String, dynamic> map) {
    return ScheduleTargetEcsParametersPlacementConstraint(
      expression: (() { final guardedValue = map['expression']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
