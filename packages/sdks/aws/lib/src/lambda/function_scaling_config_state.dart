// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'function_scaling_config_function_scaling_config.dart';
import 'function_scaling_config_timeouts.dart';

/// Input properties used for looking up and filtering FunctionScalingConfig resources.
class FunctionScalingConfigState {
  /// ARN of the Lambda function.
  final pulumi.Input<String>? functionArn;
  /// Name or ARN of the Lambda function. Changing this forces a new resource.
  final pulumi.Input<String>? functionName;
  /// Scaling configuration block. See `functionScalingConfig` Block below.
  final pulumi.Input<FunctionScalingConfigFunctionScalingConfig>? functionScalingConfig;
  /// State of the function after the scaling configuration was applied. This reflects the state reported by the most recent create or update and is not refreshed on read.
  final pulumi.Input<String>? functionState;
  /// Qualifier for the scaling configuration. Valid values: `$LATEST.PUBLISHED` to target the latest published version, or a specific numeric version number (e.g., `1`). Changing this forces a new resource.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? qualifier;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  final pulumi.Input<FunctionScalingConfigTimeouts>? timeouts;

  /// Creates a new [FunctionScalingConfigState].
  /// [functionArn] ARN of the Lambda function.
  /// [functionName] Name or ARN of the Lambda function. Changing this forces a new resource.
  /// [functionScalingConfig] Scaling configuration block. See `functionScalingConfig` Block below.
  /// [functionState] State of the function after the scaling configuration was applied. This reflects the state reported by the most recent create or update and is not refreshed on read.
  /// [qualifier] Qualifier for the scaling configuration. Valid values: `$LATEST.PUBLISHED` to target the latest published version, or a specific numeric version number (e.g., `1`). Changing this forces a new resource.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [timeouts] Optional.
  const FunctionScalingConfigState({
    this.functionArn,
    this.functionName,
    this.functionScalingConfig,
    this.functionState,
    this.qualifier,
    this.region,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'functionArn': ?functionArn,
      'functionName': ?functionName,
      'functionScalingConfig': ?pulumi.Input.mapOptionalInputValue<FunctionScalingConfigFunctionScalingConfig, Map<String, dynamic>>(functionScalingConfig, (value) => value.toMap()),
      'functionState': ?functionState,
      'qualifier': ?qualifier,
      'region': ?region,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<FunctionScalingConfigTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory FunctionScalingConfigState.fromMap(Map<String, dynamic> map) {
    return FunctionScalingConfigState(
      functionArn: (() { final guardedValue = map['functionArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      functionName: (() { final guardedValue = map['functionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      functionScalingConfig: (() { final guardedValue = map['functionScalingConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FunctionScalingConfigFunctionScalingConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      functionState: (() { final guardedValue = map['functionState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      qualifier: (() { final guardedValue = map['qualifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FunctionScalingConfigTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
