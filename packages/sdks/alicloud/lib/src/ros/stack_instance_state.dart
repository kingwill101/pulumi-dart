// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stack_instance_parameter_override.dart';

/// Input properties used for looking up and filtering StackInstance resources.
class StackInstanceState {
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
  final pulumi.Input<String>? stackGroupName;
  /// The account to which the stack instance belongs.
  final pulumi.Input<String>? stackInstanceAccountId;
  /// The region of the stack instance.
  final pulumi.Input<String>? stackInstanceRegionId;
  /// The status of the stack instance. Valid values: `CURRENT` or `OUTDATED`.
  /// * `CURRENT`: The stack corresponding to the stack instance is up to date with the stack group.
  /// * `OUTDATED`: The stack corresponding to the stack instance is not up to date with the stack group. The `OUTDATED` state has the following possible causes:
  /// * When the CreateStackInstances operation is called to create stack instances, the corresponding stacks fail to be created.
  /// * When the UpdateStackInstances or UpdateStackGroup operation is called to update stack instances, the corresponding stacks fail to be updated, or only some of the stack instances are updated.
  /// * The create or update operation is not complete.
  final pulumi.Input<String>? status;
  /// The timeout period that is specified for the stack creation request. Default value: `60`. Unit: `minutes`.
  final pulumi.Input<String>? timeoutInMinutes;

  /// Creates a new [StackInstanceState].
  /// [operationDescription] The operation description.
  /// [operationPreferences] The operation preferences. The operation settings. The following fields are supported:
  /// [parameterOverrides] ParameterOverrides. See the following `Block parameter_overrides`.
  /// [retainStacks] Specifies whether to retain the stack corresponding to the stack instance.Default value `false`. **NOTE:** When `retain_stacks` is `true`, the stack is retained. If the stack is retained, the corresponding stack is not deleted when the stack instance is deleted from the stack group.
  /// [stackGroupName] The name of the stack group.
  /// [stackInstanceAccountId] The account to which the stack instance belongs.
  /// [stackInstanceRegionId] The region of the stack instance.
  /// [status] The status of the stack instance. Valid values: `CURRENT` or `OUTDATED`.
  /// [timeoutInMinutes] The timeout period that is specified for the stack creation request. Default value: `60`. Unit: `minutes`.
  const StackInstanceState({
    this.operationDescription,
    this.operationPreferences,
    this.parameterOverrides,
    this.retainStacks,
    this.stackGroupName,
    this.stackInstanceAccountId,
    this.stackInstanceRegionId,
    this.status,
    this.timeoutInMinutes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'operationDescription': ?operationDescription,
      'operationPreferences': ?operationPreferences,
      'parameterOverrides': ?pulumi.Input.mapOptionalInputValue<List<StackInstanceParameterOverride>, List<Map<String, dynamic>>>(parameterOverrides, (value) => pulumi.Input.encodeList<StackInstanceParameterOverride, Map<String, dynamic>>(value, (value) => value.toMap())),
      'retainStacks': ?retainStacks,
      'stackGroupName': ?stackGroupName,
      'stackInstanceAccountId': ?stackInstanceAccountId,
      'stackInstanceRegionId': ?stackInstanceRegionId,
      'status': ?status,
      'timeoutInMinutes': ?timeoutInMinutes,
    };
  }

  factory StackInstanceState.fromMap(Map<String, dynamic> map) {
    return StackInstanceState(
      operationDescription: (() { final guardedValue = map['operationDescription']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      operationPreferences: (() { final guardedValue = map['operationPreferences']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parameterOverrides: (() { final guardedValue = map['parameterOverrides']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<StackInstanceParameterOverride>(guardedValue, (value) => StackInstanceParameterOverride.fromMap((value as Map).cast<String, dynamic>()))); })(),
      retainStacks: (() { final guardedValue = map['retainStacks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      stackGroupName: (() { final guardedValue = map['stackGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      stackInstanceAccountId: (() { final guardedValue = map['stackInstanceAccountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      stackInstanceRegionId: (() { final guardedValue = map['stackInstanceRegionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeoutInMinutes: (() { final guardedValue = map['timeoutInMinutes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

