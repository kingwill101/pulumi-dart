// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_dedicated_hosts_operation_lock.dart';

/// {@template pulumi_ecs_get_dedicated_hosts_get_dedicated_hosts_args_doc}
/// Arguments for getDedicatedHosts.
/// {@endtemplate}
/// {@macro pulumi_ecs_get_dedicated_hosts_get_dedicated_hosts_args_doc}
class GetDedicatedHostsArgs {
  /// The ID of ECS Dedicated Host.
  final pulumi.Input<String>? dedicatedHostId;
  /// The name of ECS Dedicated Host.
  final pulumi.Input<String>? dedicatedHostName;
  /// The type of the dedicated host.
  final pulumi.Input<String>? dedicatedHostType;
  /// A list of ECS Dedicated Host ids.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by the ECS Dedicated Host name.
  final pulumi.Input<String>? nameRegex;
  /// The reason why the dedicated host resource is locked. See `operation_locks` below.
  final pulumi.Input<List<GetDedicatedHostsOperationLock>>? operationLocks;
  /// Save the result to the file.
  final pulumi.Input<String>? outputFile;
  /// The ID of the resource group to which the ECS Dedicated Host belongs.
  final pulumi.Input<String>? resourceGroupId;
  /// The status of the ECS Dedicated Host. Valid Value: `Available`, `Creating`, `PermanentFailure`, `Released`, `UnderAssessment`.
  final pulumi.Input<String>? status;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The zone ID of the ECS Dedicated Host.
  final pulumi.Input<String>? zoneId;

  /// Creates a new [GetDedicatedHostsArgs].
  /// [dedicatedHostId] The ID of ECS Dedicated Host.
  /// [dedicatedHostName] The name of ECS Dedicated Host.
  /// [dedicatedHostType] The type of the dedicated host.
  /// [ids] A list of ECS Dedicated Host ids.
  /// [nameRegex] A regex string to filter results by the ECS Dedicated Host name.
  /// [operationLocks] The reason why the dedicated host resource is locked. See `operation_locks` below.
  /// [outputFile] Save the result to the file.
  /// [resourceGroupId] The ID of the resource group to which the ECS Dedicated Host belongs.
  /// [status] The status of the ECS Dedicated Host. Valid Value: `Available`, `Creating`, `PermanentFailure`, `Released`, `UnderAssessment`.
  /// [tags] A mapping of tags to assign to the resource.
  /// [zoneId] The zone ID of the ECS Dedicated Host.
  GetDedicatedHostsArgs({
    pulumi.Output<String>? dedicatedHostId,
    pulumi.Output<String>? dedicatedHostName,
    pulumi.Output<String>? dedicatedHostType,
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<List<GetDedicatedHostsOperationLock>>? operationLocks,
    pulumi.Output<String>? outputFile,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? zoneId,
  }) :
      dedicatedHostId = pulumi.Input.asOptionalInput<String>(dedicatedHostId),
      dedicatedHostName = pulumi.Input.asOptionalInput<String>(dedicatedHostName),
      dedicatedHostType = pulumi.Input.asOptionalInput<String>(dedicatedHostType),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      operationLocks = pulumi.Input.asOptionalInput<List<GetDedicatedHostsOperationLock>>(operationLocks),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      zoneId = pulumi.Input.asOptionalInput<String>(zoneId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dedicatedHostId': ?dedicatedHostId,
      'dedicatedHostName': ?dedicatedHostName,
      'dedicatedHostType': ?dedicatedHostType,
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'operationLocks': ?pulumi.Input.mapOptionalInputValue<List<GetDedicatedHostsOperationLock>, List<Map<String, dynamic>>>(operationLocks, (value) => pulumi.Input.encodeList<GetDedicatedHostsOperationLock, Map<String, dynamic>>(value, (value) => value.toMap())),
      'outputFile': ?outputFile,
      'resourceGroupId': ?resourceGroupId,
      'status': ?status,
      'tags': ?tags,
      'zoneId': ?zoneId,
    };
  }

  factory GetDedicatedHostsArgs.fromMap(Map<String, dynamic> map) {
    return GetDedicatedHostsArgs(
      dedicatedHostId: map['dedicatedHostId'] == null ? null : pulumi.Output.create<String>(map['dedicatedHostId'] as String),
      dedicatedHostName: map['dedicatedHostName'] == null ? null : pulumi.Output.create<String>(map['dedicatedHostName'] as String),
      dedicatedHostType: map['dedicatedHostType'] == null ? null : pulumi.Output.create<String>(map['dedicatedHostType'] as String),
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      operationLocks: map['operationLocks'] == null ? null : pulumi.Output.create<List<GetDedicatedHostsOperationLock>>(pulumi.Input.decodeList<GetDedicatedHostsOperationLock>(map['operationLocks'], (value) => GetDedicatedHostsOperationLock.fromMap((value as Map).cast<String, dynamic>()))),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      zoneId: map['zoneId'] == null ? null : pulumi.Output.create<String>(map['zoneId'] as String),
    );
  }
}

