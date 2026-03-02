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
    this.dedicatedHostId,
    this.dedicatedHostName,
    this.dedicatedHostType,
    this.ids,
    this.nameRegex,
    this.operationLocks,
    this.outputFile,
    this.resourceGroupId,
    this.status,
    this.tags,
    this.zoneId,
  });

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
      dedicatedHostId: map['dedicatedHostId'] == null ? null : (map['dedicatedHostId']! as String).input(),
      dedicatedHostName: map['dedicatedHostName'] == null ? null : (map['dedicatedHostName']! as String).input(),
      dedicatedHostType: map['dedicatedHostType'] == null ? null : (map['dedicatedHostType']! as String).input(),
      ids: map['ids'] == null ? null : ((map['ids']! as List).cast<String>()).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex']! as String).input(),
      operationLocks: map['operationLocks'] == null ? null : (pulumi.Input.decodeList<GetDedicatedHostsOperationLock>(map['operationLocks']!, (value) => GetDedicatedHostsOperationLock.fromMap((value as Map).cast<String, dynamic>()))).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile']! as String).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      zoneId: map['zoneId'] == null ? null : (map['zoneId']! as String).input(),
    );
  }
}

