// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_disks_operation_lock.dart';

/// {@template pulumi_ecs_get_disks_get_disks_args_doc}
/// Arguments for getDisks.
/// {@endtemplate}
/// {@macro pulumi_ecs_get_disks_get_disks_args_doc}
class GetDisksArgs {
  final pulumi.Input<List<String>>? additionalAttributes;
  final pulumi.Input<String>? autoSnapshotPolicyId;
  /// Availability zone of the disk.
  final pulumi.Input<String>? availabilityZone;
  /// Disk category. Possible values: `cloud` (basic cloud disk), `cloud_efficiency` (ultra cloud disk), `ephemeral_ssd` (local SSD cloud disk), `cloud_ssd` (SSD cloud disk), and `cloud_essd` (ESSD cloud disk), `cloud_essd_entry`.
  final pulumi.Input<String>? category;
  final pulumi.Input<bool>? deleteAutoSnapshot;
  final pulumi.Input<bool>? deleteWithInstance;
  final pulumi.Input<String>? diskName;
  final pulumi.Input<String>? diskType;
  final pulumi.Input<bool>? dryRun;
  final pulumi.Input<bool>? enableAutoSnapshot;
  final pulumi.Input<bool>? enableAutomatedSnapshotPolicy;
  final pulumi.Input<bool>? enableShared;
  /// Indicate whether the disk is encrypted or not. Possible values: `on` and `off`.
  final pulumi.Input<String>? encrypted;
  /// A list of disks IDs.
  final pulumi.Input<List<String>>? ids;
  /// Filter the results by the specified ECS instance ID.
  final pulumi.Input<String>? instanceId;
  final pulumi.Input<String>? kmsKeyId;
  /// A regex string to filter results by disk name.
  final pulumi.Input<String>? nameRegex;
  final pulumi.Input<List<GetDisksOperationLock>>? operationLocks;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  final pulumi.Input<int>? pageNumber;
  final pulumi.Input<int>? pageSize;
  final pulumi.Input<String>? paymentType;
  final pulumi.Input<bool>? portable;
  /// The Id of resource group which the disk belongs.
  final pulumi.Input<String>? resourceGroupId;
  /// Snapshot used to create the disk. It is null if no snapshot is used to create the disk.
  final pulumi.Input<String>? snapshotId;
  /// Current status. Possible values: `In_use`, `Available`, `Attaching`, `Detaching`, `Creating` and `ReIniting`.
  final pulumi.Input<String>? status;
  /// A map of tags assigned to the disks. It must be in the format:
  ///
  /// ```typescript
  /// import * as pulumi from "@pulumi/pulumi";
  /// import * as alicloud from "@pulumi/alicloud";
  ///
  /// const disksDs = alicloud.ecs.getDisks({
  ///     tags: {
  ///         tagKey1: "tagValue1",
  ///         tagKey2: "tagValue2",
  ///     },
  /// });
  /// ```
  /// ```python
  /// import pulumi
  /// import pulumi_alicloud as alicloud
  ///
  /// disks_ds = alicloud.ecs.get_disks(tags={
  ///     "tagKey1": "tagValue1",
  ///     "tagKey2": "tagValue2",
  /// })
  /// ```
  /// ```csharp
  /// using System.Collections.Generic;
  /// using System.Linq;
  /// using Pulumi;
  /// using AliCloud = Pulumi.AliCloud;
  ///
  /// return await Deployment.RunAsync(() =>
  /// {
  ///     var disksDs = AliCloud.Ecs.GetDisks.Invoke(new()
  ///     {
  ///         Tags =
  ///         {
  ///             { "tagKey1", "tagValue1" },
  ///             { "tagKey2", "tagValue2" },
  ///         },
  ///     });
  ///
  /// });
  /// ```
  /// ```go
  /// package main
  ///
  /// import (
  /// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ecs"
  /// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
  /// )
  ///
  /// func main() {
  /// 	pulumi.Run(func(ctx *pulumi.Context) error {
  /// 		_, err := ecs.GetDisks(ctx, &ecs.GetDisksArgs{
  /// 			Tags: map[string]interface{}{
  /// 				"tagKey1": "tagValue1",
  /// 				"tagKey2": "tagValue2",
  /// 			},
  /// 		}, nil)
  /// 		if err != nil {
  /// 			return err
  /// 		}
  /// 		return nil
  /// 	})
  /// }
  /// ```
  /// ```java
  /// package generated_program;
  ///
  /// import com.pulumi.Context;
  /// import com.pulumi.Pulumi;
  /// import com.pulumi.core.Output;
  /// import com.pulumi.alicloud.ecs.EcsFunctions;
  /// import com.pulumi.alicloud.ecs.inputs.GetDisksArgs;
  /// import java.util.List;
  /// import java.util.ArrayList;
  /// import java.util.Map;
  /// import java.io.File;
  /// import java.nio.file.Files;
  /// import java.nio.file.Paths;
  ///
  /// public class App {
  ///     public static void main(String[] args) {
  ///         Pulumi.run(App::stack);
  ///     }
  ///
  ///     public static void stack(Context ctx) {
  ///         final var disksDs = EcsFunctions.getDisks(GetDisksArgs.builder()
  ///             .tags(Map.ofEntries(
  ///                 Map.entry("tagKey1", "tagValue1"),
  ///                 Map.entry("tagKey2", "tagValue2")
  ///             ))
  ///             .build());
  ///
  ///     }
  /// }
  /// ```
  /// ```yaml
  /// variables:
  ///   disksDs:
  ///     fn::invoke:
  ///       function: alicloud:ecs:getDisks
  ///       arguments:
  ///         tags:
  ///           tagKey1: tagValue1
  ///           tagKey2: tagValue2
  /// ```
  final pulumi.Input<Map<String, String>>? tags;
  /// Disk type. Possible values: `system` and `data`.
  final pulumi.Input<String>? type;
  final pulumi.Input<String>? zoneId;

  /// Creates a new [GetDisksArgs].
  /// [additionalAttributes] Optional.
  /// [autoSnapshotPolicyId] Optional.
  /// [availabilityZone] Availability zone of the disk.
  /// [category] Disk category. Possible values: `cloud` (basic cloud disk), `cloud_efficiency` (ultra cloud disk), `ephemeral_ssd` (local SSD cloud disk), `cloud_ssd` (SSD cloud disk), and `cloud_essd` (ESSD cloud disk), `cloud_essd_entry`.
  /// [deleteAutoSnapshot] Optional.
  /// [deleteWithInstance] Optional.
  /// [diskName] Optional.
  /// [diskType] Optional.
  /// [dryRun] Optional.
  /// [enableAutoSnapshot] Optional.
  /// [enableAutomatedSnapshotPolicy] Optional.
  /// [enableShared] Optional.
  /// [encrypted] Indicate whether the disk is encrypted or not. Possible values: `on` and `off`.
  /// [ids] A list of disks IDs.
  /// [instanceId] Filter the results by the specified ECS instance ID.
  /// [kmsKeyId] Optional.
  /// [nameRegex] A regex string to filter results by disk name.
  /// [operationLocks] Optional.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [pageNumber] Optional.
  /// [pageSize] Optional.
  /// [paymentType] Optional.
  /// [portable] Optional.
  /// [resourceGroupId] The Id of resource group which the disk belongs.
  /// [snapshotId] Snapshot used to create the disk. It is null if no snapshot is used to create the disk.
  /// [status] Current status. Possible values: `In_use`, `Available`, `Attaching`, `Detaching`, `Creating` and `ReIniting`.
  /// [tags] A map of tags assigned to the disks. It must be in the format:
  /// [type] Disk type. Possible values: `system` and `data`.
  /// [zoneId] Optional.
  GetDisksArgs({
    pulumi.Output<List<String>>? additionalAttributes,
    pulumi.Output<String>? autoSnapshotPolicyId,
    pulumi.Output<String>? availabilityZone,
    pulumi.Output<String>? category,
    pulumi.Output<bool>? deleteAutoSnapshot,
    pulumi.Output<bool>? deleteWithInstance,
    pulumi.Output<String>? diskName,
    pulumi.Output<String>? diskType,
    pulumi.Output<bool>? dryRun,
    pulumi.Output<bool>? enableAutoSnapshot,
    pulumi.Output<bool>? enableAutomatedSnapshotPolicy,
    pulumi.Output<bool>? enableShared,
    pulumi.Output<String>? encrypted,
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? instanceId,
    pulumi.Output<String>? kmsKeyId,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<List<GetDisksOperationLock>>? operationLocks,
    pulumi.Output<String>? outputFile,
    pulumi.Output<int>? pageNumber,
    pulumi.Output<int>? pageSize,
    pulumi.Output<String>? paymentType,
    pulumi.Output<bool>? portable,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<String>? snapshotId,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? type,
    pulumi.Output<String>? zoneId,
  }) :
      additionalAttributes = pulumi.Input.asOptionalInput<List<String>>(additionalAttributes),
      autoSnapshotPolicyId = pulumi.Input.asOptionalInput<String>(autoSnapshotPolicyId),
      availabilityZone = pulumi.Input.asOptionalInput<String>(availabilityZone),
      category = pulumi.Input.asOptionalInput<String>(category),
      deleteAutoSnapshot = pulumi.Input.asOptionalInput<bool>(deleteAutoSnapshot),
      deleteWithInstance = pulumi.Input.asOptionalInput<bool>(deleteWithInstance),
      diskName = pulumi.Input.asOptionalInput<String>(diskName),
      diskType = pulumi.Input.asOptionalInput<String>(diskType),
      dryRun = pulumi.Input.asOptionalInput<bool>(dryRun),
      enableAutoSnapshot = pulumi.Input.asOptionalInput<bool>(enableAutoSnapshot),
      enableAutomatedSnapshotPolicy = pulumi.Input.asOptionalInput<bool>(enableAutomatedSnapshotPolicy),
      enableShared = pulumi.Input.asOptionalInput<bool>(enableShared),
      encrypted = pulumi.Input.asOptionalInput<String>(encrypted),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      instanceId = pulumi.Input.asOptionalInput<String>(instanceId),
      kmsKeyId = pulumi.Input.asOptionalInput<String>(kmsKeyId),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      operationLocks = pulumi.Input.asOptionalInput<List<GetDisksOperationLock>>(operationLocks),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      pageNumber = pulumi.Input.asOptionalInput<int>(pageNumber),
      pageSize = pulumi.Input.asOptionalInput<int>(pageSize),
      paymentType = pulumi.Input.asOptionalInput<String>(paymentType),
      portable = pulumi.Input.asOptionalInput<bool>(portable),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      snapshotId = pulumi.Input.asOptionalInput<String>(snapshotId),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      type = pulumi.Input.asOptionalInput<String>(type),
      zoneId = pulumi.Input.asOptionalInput<String>(zoneId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalAttributes': ?additionalAttributes,
      'autoSnapshotPolicyId': ?autoSnapshotPolicyId,
      'availabilityZone': ?availabilityZone,
      'category': ?category,
      'deleteAutoSnapshot': ?deleteAutoSnapshot,
      'deleteWithInstance': ?deleteWithInstance,
      'diskName': ?diskName,
      'diskType': ?diskType,
      'dryRun': ?dryRun,
      'enableAutoSnapshot': ?enableAutoSnapshot,
      'enableAutomatedSnapshotPolicy': ?enableAutomatedSnapshotPolicy,
      'enableShared': ?enableShared,
      'encrypted': ?encrypted,
      'ids': ?ids,
      'instanceId': ?instanceId,
      'kmsKeyId': ?kmsKeyId,
      'nameRegex': ?nameRegex,
      'operationLocks': ?pulumi.Input.mapOptionalInputValue<List<GetDisksOperationLock>, List<Map<String, dynamic>>>(operationLocks, (value) => pulumi.Input.encodeList<GetDisksOperationLock, Map<String, dynamic>>(value, (value) => value.toMap())),
      'outputFile': ?outputFile,
      'pageNumber': ?pageNumber,
      'pageSize': ?pageSize,
      'paymentType': ?paymentType,
      'portable': ?portable,
      'resourceGroupId': ?resourceGroupId,
      'snapshotId': ?snapshotId,
      'status': ?status,
      'tags': ?tags,
      'type': ?type,
      'zoneId': ?zoneId,
    };
  }

  factory GetDisksArgs.fromMap(Map<String, dynamic> map) {
    return GetDisksArgs(
      additionalAttributes: map['additionalAttributes'] == null ? null : pulumi.Output.create<List<String>>((map['additionalAttributes'] as List).cast<String>()),
      autoSnapshotPolicyId: map['autoSnapshotPolicyId'] == null ? null : pulumi.Output.create<String>(map['autoSnapshotPolicyId'] as String),
      availabilityZone: map['availabilityZone'] == null ? null : pulumi.Output.create<String>(map['availabilityZone'] as String),
      category: map['category'] == null ? null : pulumi.Output.create<String>(map['category'] as String),
      deleteAutoSnapshot: map['deleteAutoSnapshot'] == null ? null : pulumi.Output.create<bool>(map['deleteAutoSnapshot'] as bool),
      deleteWithInstance: map['deleteWithInstance'] == null ? null : pulumi.Output.create<bool>(map['deleteWithInstance'] as bool),
      diskName: map['diskName'] == null ? null : pulumi.Output.create<String>(map['diskName'] as String),
      diskType: map['diskType'] == null ? null : pulumi.Output.create<String>(map['diskType'] as String),
      dryRun: map['dryRun'] == null ? null : pulumi.Output.create<bool>(map['dryRun'] as bool),
      enableAutoSnapshot: map['enableAutoSnapshot'] == null ? null : pulumi.Output.create<bool>(map['enableAutoSnapshot'] as bool),
      enableAutomatedSnapshotPolicy: map['enableAutomatedSnapshotPolicy'] == null ? null : pulumi.Output.create<bool>(map['enableAutomatedSnapshotPolicy'] as bool),
      enableShared: map['enableShared'] == null ? null : pulumi.Output.create<bool>(map['enableShared'] as bool),
      encrypted: map['encrypted'] == null ? null : pulumi.Output.create<String>(map['encrypted'] as String),
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      instanceId: map['instanceId'] == null ? null : pulumi.Output.create<String>(map['instanceId'] as String),
      kmsKeyId: map['kmsKeyId'] == null ? null : pulumi.Output.create<String>(map['kmsKeyId'] as String),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      operationLocks: map['operationLocks'] == null ? null : pulumi.Output.create<List<GetDisksOperationLock>>(pulumi.Input.decodeList<GetDisksOperationLock>(map['operationLocks'], (value) => GetDisksOperationLock.fromMap((value as Map).cast<String, dynamic>()))),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      pageNumber: map['pageNumber'] == null ? null : pulumi.Output.create<int>(map['pageNumber'] as int),
      pageSize: map['pageSize'] == null ? null : pulumi.Output.create<int>(map['pageSize'] as int),
      paymentType: map['paymentType'] == null ? null : pulumi.Output.create<String>(map['paymentType'] as String),
      portable: map['portable'] == null ? null : pulumi.Output.create<bool>(map['portable'] as bool),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      snapshotId: map['snapshotId'] == null ? null : pulumi.Output.create<String>(map['snapshotId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
      zoneId: map['zoneId'] == null ? null : pulumi.Output.create<String>(map['zoneId'] as String),
    );
  }
}

