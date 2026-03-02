// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_lambda_runtime_management_config_runtime_management_config_args_doc}
/// The set of arguments for RuntimeManagementConfig.
/// {@endtemplate}
/// {@macro pulumi_lambda_runtime_management_config_runtime_management_config_args_doc}
class RuntimeManagementConfigArgs {
  /// Name or ARN of the Lambda function.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> functionName;
  /// Version of the function. This can be `$LATEST` or a published version number. If omitted, this resource will manage the runtime configuration for `$LATEST`.
  final pulumi.Input<String>? qualifier;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// ARN of the runtime version. Only required when `update_runtime_on` is `Manual`.
  final pulumi.Input<String>? runtimeVersionArn;
  /// Runtime update mode. Valid values are `Auto`, `FunctionUpdate`, and `Manual`. When a function is created, the default mode is `Auto`.
  final pulumi.Input<String>? updateRuntimeOn;

  /// Creates a new [RuntimeManagementConfigArgs].
  /// [functionName] Name or ARN of the Lambda function.
  /// [qualifier] Version of the function. This can be `$LATEST` or a published version number. If omitted, this resource will manage the runtime configuration for `$LATEST`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [runtimeVersionArn] ARN of the runtime version. Only required when `update_runtime_on` is `Manual`.
  /// [updateRuntimeOn] Runtime update mode. Valid values are `Auto`, `FunctionUpdate`, and `Manual`. When a function is created, the default mode is `Auto`.
  RuntimeManagementConfigArgs({
    required this.functionName,
    this.qualifier,
    this.region,
    this.runtimeVersionArn,
    this.updateRuntimeOn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'functionName': functionName,
      'qualifier': ?qualifier,
      'region': ?region,
      'runtimeVersionArn': ?runtimeVersionArn,
      'updateRuntimeOn': ?updateRuntimeOn,
    };
  }

  factory RuntimeManagementConfigArgs.fromMap(Map<String, dynamic> map) {
    return RuntimeManagementConfigArgs(
      functionName: (map['functionName'] as String).input(),
      qualifier: map['qualifier'] == null ? null : (map['qualifier'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      runtimeVersionArn: map['runtimeVersionArn'] == null ? null : (map['runtimeVersionArn'] as String).input(),
      updateRuntimeOn: map['updateRuntimeOn'] == null ? null : (map['updateRuntimeOn'] as String).input(),
    );
  }
}

