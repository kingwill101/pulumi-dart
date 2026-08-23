// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FunctionScalingConfigFunctionScalingConfig {
  /// Maximum number of execution environments that can be provisioned for the function.
  final pulumi.Input<int>? maxExecutionEnvironments;
  /// Minimum number of execution environments to maintain for the function.
  final pulumi.Input<int>? minExecutionEnvironments;

  /// Creates a new [FunctionScalingConfigFunctionScalingConfig].
  /// [maxExecutionEnvironments] Maximum number of execution environments that can be provisioned for the function.
  /// [minExecutionEnvironments] Minimum number of execution environments to maintain for the function.
  const FunctionScalingConfigFunctionScalingConfig({
    this.maxExecutionEnvironments,
    this.minExecutionEnvironments,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxExecutionEnvironments': ?maxExecutionEnvironments,
      'minExecutionEnvironments': ?minExecutionEnvironments,
    };
  }

  factory FunctionScalingConfigFunctionScalingConfig.fromMap(Map<String, dynamic> map) {
    return FunctionScalingConfigFunctionScalingConfig(
      maxExecutionEnvironments: (() { final guardedValue = map['maxExecutionEnvironments']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      minExecutionEnvironments: (() { final guardedValue = map['minExecutionEnvironments']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
