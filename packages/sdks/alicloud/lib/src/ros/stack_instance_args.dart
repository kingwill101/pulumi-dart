// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stack_instance_parameter_override.dart';

/// {@template pulumi_ros_stack_instance_stack_instance_args_doc}
/// The set of arguments for StackInstance.
/// {@endtemplate}
/// {@macro pulumi_ros_stack_instance_stack_instance_args_doc}
class StackInstanceArgs {
  /// The operation description.
  final pulumi.Input<String>? operationDescription;
  /// The operation preferences. The operation settings. The following fields are supported:
  /// * `FailureToleranceCount` The maximum number of stack group operation failures that can occur. In a stack group operation, if the total number of failures does not exceed the FailureToleranceCount value, the operation succeeds. Otherwise, the operation fails. If the FailureToleranceCount parameter is not specified, the default value 0 is used. You cannot specify both FailureToleranceCount and FailureTolerancePercentage. Valid values: `0` to `20`.
  /// * `FailureTolerancePercentage`: The percentage of stack group operation failures that can occur. In a stack group operation, if the percentage of failures does not exceed the FailureTolerancePercentage value, the operation succeeds. Otherwise, the operation fails. You cannot specify both FailureToleranceCount and FailureTolerancePercentage. Valid values: `0` to `100`.
  /// * `MaxConcurrentCount`: The maximum number of accounts within which to perform this operation at one time. You cannot specify both MaxConcurrentCount and MaxConcurrentPercentage. Valid values: `1` to `20`.
  /// * `MaxConcurrentPercentage`: The maximum percentage of accounts within which to perform this operation at one time. You cannot specify both MaxConcurrentCount and MaxConcurrentPercentage. Valid values: `1` to `100`
  final pulumi.Input<String>? operationPreferences;
  /// ParameterOverrides. See the following `Block parameter_overrides`.
  final pulumi.Input<List<StackInstanceParameterOverride>>? parameterOverrides;
  /// Specifies whether to retain the stack corresponding to the stack instance.Default value `false`. **NOTE:** When `retain_stacks` is `true`, the stack is retained. If the stack is retained, the corresponding stack is not deleted when the stack instance is deleted from the stack group.
  final pulumi.Input<bool>? retainStacks;
  /// The name of the stack group.
  final pulumi.Input<String> stackGroupName;
  /// The account to which the stack instance belongs.
  final pulumi.Input<String> stackInstanceAccountId;
  /// The region of the stack instance.
  final pulumi.Input<String> stackInstanceRegionId;
  /// The timeout period that is specified for the stack creation request. Default value: `60`. Unit: `minutes`.
  final pulumi.Input<String>? timeoutInMinutes;

  /// Creates a new [StackInstanceArgs].
  /// [operationDescription] The operation description.
  /// [operationPreferences] The operation preferences. The operation settings. The following fields are supported:
  /// [parameterOverrides] ParameterOverrides. See the following `Block parameter_overrides`.
  /// [retainStacks] Specifies whether to retain the stack corresponding to the stack instance.Default value `false`. **NOTE:** When `retain_stacks` is `true`, the stack is retained. If the stack is retained, the corresponding stack is not deleted when the stack instance is deleted from the stack group.
  /// [stackGroupName] The name of the stack group.
  /// [stackInstanceAccountId] The account to which the stack instance belongs.
  /// [stackInstanceRegionId] The region of the stack instance.
  /// [timeoutInMinutes] The timeout period that is specified for the stack creation request. Default value: `60`. Unit: `minutes`.
  StackInstanceArgs({
    this.operationDescription,
    this.operationPreferences,
    this.parameterOverrides,
    this.retainStacks,
    required this.stackGroupName,
    required this.stackInstanceAccountId,
    required this.stackInstanceRegionId,
    this.timeoutInMinutes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'operationDescription': ?operationDescription,
      'operationPreferences': ?operationPreferences,
      'parameterOverrides': ?pulumi.Input.mapOptionalInputValue<List<StackInstanceParameterOverride>, List<Map<String, dynamic>>>(parameterOverrides, (value) => pulumi.Input.encodeList<StackInstanceParameterOverride, Map<String, dynamic>>(value, (value) => value.toMap())),
      'retainStacks': ?retainStacks,
      'stackGroupName': stackGroupName,
      'stackInstanceAccountId': stackInstanceAccountId,
      'stackInstanceRegionId': stackInstanceRegionId,
      'timeoutInMinutes': ?timeoutInMinutes,
    };
  }

  factory StackInstanceArgs.fromMap(Map<String, dynamic> map) {
    return StackInstanceArgs(
      operationDescription: map['operationDescription'] == null ? null : (map['operationDescription'] as String).input(),
      operationPreferences: map['operationPreferences'] == null ? null : (map['operationPreferences'] as String).input(),
      parameterOverrides: map['parameterOverrides'] == null ? null : (pulumi.Input.decodeList<StackInstanceParameterOverride>(map['parameterOverrides'], (value) => StackInstanceParameterOverride.fromMap((value as Map).cast<String, dynamic>()))).input(),
      retainStacks: map['retainStacks'] == null ? null : (map['retainStacks'] as bool).input(),
      stackGroupName: (map['stackGroupName'] as String).input(),
      stackInstanceAccountId: (map['stackInstanceAccountId'] as String).input(),
      stackInstanceRegionId: (map['stackInstanceRegionId'] as String).input(),
      timeoutInMinutes: map['timeoutInMinutes'] == null ? null : (map['timeoutInMinutes'] as String).input(),
    );
  }
}

