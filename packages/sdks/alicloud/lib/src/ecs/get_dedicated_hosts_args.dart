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
      'operationLocks':
          ?pulumi.Input.mapOptionalInputValue<
            List<GetDedicatedHostsOperationLock>,
            List<Map<String, dynamic>>
          >(
            operationLocks,
            (value) =>
                pulumi.Input.encodeList<
                  GetDedicatedHostsOperationLock,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'outputFile': ?outputFile,
      'resourceGroupId': ?resourceGroupId,
      'status': ?status,
      'tags': ?tags,
      'zoneId': ?zoneId,
    };
  }

  factory GetDedicatedHostsArgs.fromMap(Map<String, dynamic> map) {
    return GetDedicatedHostsArgs(
      dedicatedHostId: (() {
        final guardedValue = map['dedicatedHostId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dedicatedHostName: (() {
        final guardedValue = map['dedicatedHostName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dedicatedHostType: (() {
        final guardedValue = map['dedicatedHostType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ids: (() {
        final guardedValue = map['ids'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      nameRegex: (() {
        final guardedValue = map['nameRegex'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      operationLocks: (() {
        final guardedValue = map['operationLocks'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<GetDedicatedHostsOperationLock>(
            guardedValue,
            (value) => GetDedicatedHostsOperationLock.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupId: (() {
        final guardedValue = map['resourceGroupId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      zoneId: (() {
        final guardedValue = map['zoneId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
