// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_stack_instances_instance_parameter_override.dart';

class GetStackInstancesInstance {
  /// The ID of the Stack Instance. The value formats as `<stack_group_name>:<stack_instance_account_id>:<stack_instance_region_id>`.
  final String id;
  /// ParameterOverrides.
  final List<GetStackInstancesInstanceParameterOverride> parameterOverrides;
  /// The ID of the stack group.
  final String stackGroupId;
  /// The name of the stack group.
  final String stackGroupName;
  /// The ID of the stack corresponding to the stack instance.
  final String stackId;
  /// The account to which the stack instance belongs.
  final String stackInstanceAccountId;
  /// The region of the stack instance.
  final String stackInstanceRegionId;
  /// The status of the stack instance. Valid values: `CURRENT` or `OUTDATED`.
  /// * `CURRENT`: The stack corresponding to the stack instance is up to date with the stack group.
  /// * `OUTDATED`: The stack corresponding to the stack instance is not up to date with the stack group. The `OUTDATED` state has the following possible causes:
  /// * When the CreateStackInstances operation is called to create stack instances, the corresponding stacks fail to be created.
  /// * When the UpdateStackInstances or UpdateStackGroup operation is called to update stack instances, the corresponding stacks fail to be updated, or only some of the stack instances are updated.
  /// * The create or update operation is not complete.
  final String status;
  /// The reason why the stack is in its current state.
  final String statusReason;

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
      'parameterOverrides': pulumi.Input.encodeList<GetStackInstancesInstanceParameterOverride, Map<String, dynamic>>(parameterOverrides, (value) => value.toMap()),
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
      id: map['id'] as String,
      parameterOverrides: pulumi.Input.decodeList<GetStackInstancesInstanceParameterOverride>(map['parameterOverrides'], (value) => GetStackInstancesInstanceParameterOverride.fromMap((value as Map).cast<String, dynamic>())),
      stackGroupId: map['stackGroupId'] as String,
      stackGroupName: map['stackGroupName'] as String,
      stackId: map['stackId'] as String,
      stackInstanceAccountId: map['stackInstanceAccountId'] as String,
      stackInstanceRegionId: map['stackInstanceRegionId'] as String,
      status: map['status'] as String,
      statusReason: map['statusReason'] as String,
    );
  }
}

