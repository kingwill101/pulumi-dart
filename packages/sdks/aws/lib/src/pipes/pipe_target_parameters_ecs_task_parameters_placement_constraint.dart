// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PipeTargetParametersEcsTaskParametersPlacementConstraint {
  /// Cluster query language expression to apply to the constraint. You cannot specify an expression if the constraint type is distinctInstance. Maximum length of 2,000.
  final pulumi.Input<String?>? expression;
  /// Type of constraint. Use distinctInstance to ensure that each task in a particular group is running on a different container instance. Use memberOf to restrict the selection to a group of valid candidates. Valid Values: distinctInstance, memberOf.
  final pulumi.Input<String?>? type;

  /// Creates a new [PipeTargetParametersEcsTaskParametersPlacementConstraint].
  /// [expression] Cluster query language expression to apply to the constraint. You cannot specify an expression if the constraint type is distinctInstance. Maximum length of 2,000.
  /// [type] Type of constraint. Use distinctInstance to ensure that each task in a particular group is running on a different container instance. Use memberOf to restrict the selection to a group of valid candidates. Valid Values: distinctInstance, memberOf.
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
