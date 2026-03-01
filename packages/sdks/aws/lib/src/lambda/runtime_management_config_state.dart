// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering RuntimeManagementConfig resources.
class RuntimeManagementConfigState {
  /// ARN of the function.
  final pulumi.Input<String>? functionArn;
  /// Name or ARN of the Lambda function.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? functionName;
  /// Version of the function. This can be `$LATEST` or a published version number. If omitted, this resource will manage the runtime configuration for `$LATEST`.
  final pulumi.Input<String>? qualifier;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// ARN of the runtime version. Only required when `update_runtime_on` is `Manual`.
  final pulumi.Input<String>? runtimeVersionArn;
  /// Runtime update mode. Valid values are `Auto`, `FunctionUpdate`, and `Manual`. When a function is created, the default mode is `Auto`.
  final pulumi.Input<String>? updateRuntimeOn;

  /// Creates a new [RuntimeManagementConfigState].
  /// [functionArn] ARN of the function.
  /// [functionName] Name or ARN of the Lambda function.
  /// [qualifier] Version of the function. This can be `$LATEST` or a published version number. If omitted, this resource will manage the runtime configuration for `$LATEST`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [runtimeVersionArn] ARN of the runtime version. Only required when `update_runtime_on` is `Manual`.
  /// [updateRuntimeOn] Runtime update mode. Valid values are `Auto`, `FunctionUpdate`, and `Manual`. When a function is created, the default mode is `Auto`.
  RuntimeManagementConfigState({
    pulumi.Output<String>? functionArn,
    pulumi.Output<String>? functionName,
    pulumi.Output<String>? qualifier,
    pulumi.Output<String>? region,
    pulumi.Output<String>? runtimeVersionArn,
    pulumi.Output<String>? updateRuntimeOn,
  }) :
      functionArn = pulumi.Input.asOptionalInput<String>(functionArn),
      functionName = pulumi.Input.asOptionalInput<String>(functionName),
      qualifier = pulumi.Input.asOptionalInput<String>(qualifier),
      region = pulumi.Input.asOptionalInput<String>(region),
      runtimeVersionArn = pulumi.Input.asOptionalInput<String>(runtimeVersionArn),
      updateRuntimeOn = pulumi.Input.asOptionalInput<String>(updateRuntimeOn);

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
      functionArn: map['functionArn'] == null ? null : pulumi.Output.create<String>(map['functionArn'] as String),
      functionName: map['functionName'] == null ? null : pulumi.Output.create<String>(map['functionName'] as String),
      qualifier: map['qualifier'] == null ? null : pulumi.Output.create<String>(map['qualifier'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      runtimeVersionArn: map['runtimeVersionArn'] == null ? null : pulumi.Output.create<String>(map['runtimeVersionArn'] as String),
      updateRuntimeOn: map['updateRuntimeOn'] == null ? null : pulumi.Output.create<String>(map['updateRuntimeOn'] as String),
    );
  }
}

