// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering RuntimeManagementConfig resources.
class RuntimeManagementConfigState {
  /// ARN of the function.
  final pulumi.Input<String?>? functionArn;
  /// Name or ARN of the Lambda function.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String?>? functionName;
  /// Version of the function. This can be `$LATEST` or a published version number. If omitted, this resource will manage the runtime configuration for `$LATEST`.
  final pulumi.Input<String?>? qualifier;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// ARN of the runtime version. Only required when `updateRuntimeOn` is `Manual`.
  final pulumi.Input<String?>? runtimeVersionArn;
  /// Runtime update mode. Valid values are `Auto`, `FunctionUpdate`, and `Manual`. When a function is created, the default mode is `Auto`.
  final pulumi.Input<String?>? updateRuntimeOn;

  /// Creates a new [RuntimeManagementConfigState].
  /// [functionArn] ARN of the function.
  /// [functionName] Name or ARN of the Lambda function.
  /// [qualifier] Version of the function. This can be `$LATEST` or a published version number. If omitted, this resource will manage the runtime configuration for `$LATEST`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [runtimeVersionArn] ARN of the runtime version. Only required when `updateRuntimeOn` is `Manual`.
  /// [updateRuntimeOn] Runtime update mode. Valid values are `Auto`, `FunctionUpdate`, and `Manual`. When a function is created, the default mode is `Auto`.
  const RuntimeManagementConfigState({
    this.functionArn,
    this.functionName,
    this.qualifier,
    this.region,
    this.runtimeVersionArn,
    this.updateRuntimeOn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'functionArn': ?functionArn,
      'functionName': ?functionName,
      'qualifier': ?qualifier,
      'region': ?region,
      'runtimeVersionArn': ?runtimeVersionArn,
      'updateRuntimeOn': ?updateRuntimeOn,
    };
  }

  factory RuntimeManagementConfigState.fromMap(Map<String, dynamic> map) {
    return RuntimeManagementConfigState(
      functionArn: (() { final guardedValue = map['functionArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      functionName: (() { final guardedValue = map['functionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      qualifier: (() { final guardedValue = map['qualifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      runtimeVersionArn: (() { final guardedValue = map['runtimeVersionArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateRuntimeOn: (() { final guardedValue = map['updateRuntimeOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
