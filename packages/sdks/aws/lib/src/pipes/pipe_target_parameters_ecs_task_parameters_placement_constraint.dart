// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PipeTargetParametersEcsTaskParametersPlacementConstraint {
  /// A cluster query language expression to apply to the constraint. You cannot specify an expression if the constraint type is distinctInstance. Maximum length of 2,000.
  final pulumi.Input<String>? expression;
  /// The type of placement strategy. The random placement strategy randomly places tasks on available candidates. The spread placement strategy spreads placement across available candidates evenly based on the field parameter. The binpack strategy places tasks on available candidates that have the least available amount of the resource that is specified with the field parameter. For example, if you binpack on memory, a task is placed on the instance with the least amount of remaining memory (but still enough to run the task). Valid Values: random, spread, binpack.
  final pulumi.Input<String>? type;

  /// Creates a new [PipeTargetParametersEcsTaskParametersPlacementConstraint].
  /// [expression] A cluster query language expression to apply to the constraint. You cannot specify an expression if the constraint type is distinctInstance. Maximum length of 2,000.
  /// [type] The type of placement strategy. The random placement strategy randomly places tasks on available candidates. The spread placement strategy spreads placement across available candidates evenly based on the field parameter. The binpack strategy places tasks on available candidates that have the least available amount of the resource that is specified with the field parameter. For example, if you binpack on memory, a task is placed on the instance with the least amount of remaining memory (but still enough to run the task). Valid Values: random, spread, binpack.
  const PipeTargetParametersEcsTaskParametersPlacementConstraint({
    this.expression,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expression': ?expression,
      'type': ?type,
    };
  }

  factory PipeTargetParametersEcsTaskParametersPlacementConstraint.fromMap(Map<String, dynamic> map) {
    return PipeTargetParametersEcsTaskParametersPlacementConstraint(
      expression: (() { final guardedValue = map['expression']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
