// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'function_scaling_config_function_scaling_config.dart';
import 'function_scaling_config_timeouts.dart';

/// {@template pulumi_lambda_function_scaling_config_function_scaling_config_args_doc}
/// The set of arguments for FunctionScalingConfig.
/// {@endtemplate}
/// {@macro pulumi_lambda_function_scaling_config_function_scaling_config_args_doc}
class FunctionScalingConfigArgs {
  /// Name or ARN of the Lambda function. Changing this forces a new resource.
  final pulumi.Input<String> functionName;
  /// Scaling configuration block. See `functionScalingConfig` Block below.
  final pulumi.Input<FunctionScalingConfigFunctionScalingConfig> functionScalingConfig;
  /// Qualifier for the scaling configuration. Valid values: `$LATEST.PUBLISHED` to target the latest published version, or a specific numeric version number (e.g., `1`). Changing this forces a new resource.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> qualifier;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  final pulumi.Input<FunctionScalingConfigTimeouts?>? timeouts;

  /// Creates a new [FunctionScalingConfigArgs].
  /// [functionName] Name or ARN of the Lambda function. Changing this forces a new resource.
  /// [functionScalingConfig] Scaling configuration block. See `functionScalingConfig` Block below.
  /// [qualifier] Qualifier for the scaling configuration. Valid values: `$LATEST.PUBLISHED` to target the latest published version, or a specific numeric version number (e.g., `1`). Changing this forces a new resource.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [timeouts] Optional.
  const FunctionScalingConfigArgs({
    required this.functionName,
    required this.functionScalingConfig,
    required this.qualifier,
    this.region,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'functionName': functionName,
      'functionScalingConfig': pulumi.Input.mapInputValue<FunctionScalingConfigFunctionScalingConfig, Map<String, dynamic>>(functionScalingConfig, (value) => value.toMap()),
      'qualifier': qualifier,
      'region': ?region,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<FunctionScalingConfigTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory FunctionScalingConfigArgs.fromMap(Map<String, dynamic> map) {
    return FunctionScalingConfigArgs(
      functionName: pulumi.Input.fromValue(map['functionName'] as String),
      functionScalingConfig: pulumi.Input.fromValue(FunctionScalingConfigFunctionScalingConfig.fromMap((map['functionScalingConfig']! as Map).cast<String, dynamic>())),
      qualifier: pulumi.Input.fromValue(map['qualifier'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FunctionScalingConfigTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
