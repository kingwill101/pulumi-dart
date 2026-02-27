// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for RuntimeManagementConfig.
class RuntimeManagementConfigArgs {
  /// Name or ARN of the Lambda function.
  ///
  /// The following arguments are optional:
  final Input<String> functionName;

  /// Version of the function. This can be `$LATEST` or a published version number. If omitted, this resource will manage the runtime configuration for `$LATEST`.
  final Input<String>? qualifier;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// ARN of the runtime version. Only required when `update_runtime_on` is `Manual`.
  final Input<String>? runtimeVersionArn;

  /// Runtime update mode. Valid values are `Auto`, `FunctionUpdate`, and `Manual`. When a function is created, the default mode is `Auto`.
  final Input<String>? updateRuntimeOn;

  RuntimeManagementConfigArgs({
    required this.functionName,
    this.qualifier,
    this.region,
    this.runtimeVersionArn,
    this.updateRuntimeOn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['functionName'] = functionName;
    final qualifierValue = qualifier;
    if (qualifierValue != null) {
      map['qualifier'] = qualifierValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final runtimeVersionArnValue = runtimeVersionArn;
    if (runtimeVersionArnValue != null) {
      map['runtimeVersionArn'] = runtimeVersionArnValue;
    }
    final updateRuntimeOnValue = updateRuntimeOn;
    if (updateRuntimeOnValue != null) {
      map['updateRuntimeOn'] = updateRuntimeOnValue;
    }
    return map;
  }

  factory RuntimeManagementConfigArgs.fromMap(Map<String, dynamic> map) {
    return RuntimeManagementConfigArgs(
      functionName: Input.asInput<String>(map['functionName']),
      qualifier: Input.asOptionalInput<String>(map['qualifier']),
      region: Input.asOptionalInput<String>(map['region']),
      runtimeVersionArn:
          Input.asOptionalInput<String>(map['runtimeVersionArn']),
      updateRuntimeOn: Input.asOptionalInput<String>(map['updateRuntimeOn']),
    );
  }
}
