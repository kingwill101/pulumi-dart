// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_stack_instances_instance_parameter_override.dart';

class GetStackInstancesInstance {
  /// The ID of the Stack Instance. The value formats as `<stack_group_name>:<stack_instance_account_id>:<stack_instance_region_id>`.
  final pulumi.Input<String> id;
  /// ParameterOverrides.
  final pulumi.Input<List<GetStackInstancesInstanceParameterOverride>> parameterOverrides;
  /// The ID of the stack group.
  final pulumi.Input<String> stackGroupId;
  /// The name of the stack group.
  final pulumi.Input<String> stackGroupName;
  /// The ID of the stack corresponding to the stack instance.
  final pulumi.Input<String> stackId;
  /// The account to which the stack instance belongs.
  final pulumi.Input<String> stackInstanceAccountId;
  /// The region of the stack instance.
  final pulumi.Input<String> stackInstanceRegionId;
  /// The status of the stack instance. Valid values: `CURRENT` or `OUTDATED`.
  /// * `CURRENT`: The stack corresponding to the stack instance is up to date with the stack group.
  /// * `OUTDATED`: The stack corresponding to the stack instance is not up to date with the stack group. The `OUTDATED` state has the following possible causes:
  /// * When the CreateStackInstances operation is called to create stack instances, the corresponding stacks fail to be created.
  /// * When the UpdateStackInstances or UpdateStackGroup operation is called to update stack instances, the corresponding stacks fail to be updated, or only some of the stack instances are updated.
  /// * The create or update operation is not complete.
  final pulumi.Input<String> status;
  /// The reason why the stack is in its current state.
  final pulumi.Input<String> statusReason;

  /// Creates a new [GetStackInstancesInstance].
  /// [id] The ID of the Stack Instance. The value formats as `<stack_group_name>:<stack_instance_account_id>:<stack_instance_region_id>`.
  /// [parameterOverrides] ParameterOverrides.
  /// [stackGroupId] The ID of the stack group.
  /// [stackGroupName] The name of the stack group.
  /// [stackId] The ID of the stack corresponding to the stack instance.
  /// [stackInstanceAccountId] The account to which the stack instance belongs.
  /// [stackInstanceRegionId] The region of the stack instance.
  /// [status] The status of the stack instance. Valid values: `CURRENT` or `OUTDATED`.
  /// [statusReason] The reason why the stack is in its current state.
  GetStackInstancesInstance({
    required this.id,
    required this.parameterOverrides,
    required this.stackGroupId,
    required this.stackGroupName,
    required this.stackId,
    required this.stackInstanceAccountId,
    required this.stackInstanceRegionId,
    required this.status,
    required this.statusReason,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'parameterOverrides': pulumi.Input.mapInputValue<List<GetStackInstancesInstanceParameterOverride>, List<Map<String, dynamic>>>(parameterOverrides, (value) => pulumi.Input.encodeList<GetStackInstancesInstanceParameterOverride, Map<String, dynamic>>(value, (value) => value.toMap())),
      'stackGroupId': stackGroupId,
      'stackGroupName': stackGroupName,
      'stackId': stackId,
      'stackInstanceAccountId': stackInstanceAccountId,
      'stackInstanceRegionId': stackInstanceRegionId,
      'status': status,
      'statusReason': statusReason,
    };
  }

  factory GetStackInstancesInstance.fromMap(Map<String, dynamic> map) {
    return GetStackInstancesInstance(
      id: (map['id'] as String).input(),
      parameterOverrides: (pulumi.Input.decodeList<GetStackInstancesInstanceParameterOverride>(map['parameterOverrides'], (value) => GetStackInstancesInstanceParameterOverride.fromMap((value as Map).cast<String, dynamic>()))).input(),
      stackGroupId: (map['stackGroupId'] as String).input(),
      stackGroupName: (map['stackGroupName'] as String).input(),
      stackId: (map['stackId'] as String).input(),
      stackInstanceAccountId: (map['stackInstanceAccountId'] as String).input(),
      stackInstanceRegionId: (map['stackInstanceRegionId'] as String).input(),
      status: (map['status'] as String).input(),
      statusReason: (map['statusReason'] as String).input(),
    );
  }
}

