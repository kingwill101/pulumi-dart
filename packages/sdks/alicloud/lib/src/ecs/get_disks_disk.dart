// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_disks_disk_mount_instance.dart';
import 'get_disks_disk_operation_lock.dart';

class GetDisksDisk {
  /// Disk attachment time.
  final pulumi.Input<String> attachedTime;
  final pulumi.Input<String> autoSnapshotPolicyId;
  /// Availability zone of the disk.
  final pulumi.Input<String> availabilityZone;
  /// Disk category. Possible values: `cloud` (basic cloud disk), `cloud_efficiency` (ultra cloud disk), `ephemeral_ssd` (local SSD cloud disk), `cloud_ssd` (SSD cloud disk), and `cloud_essd` (ESSD cloud disk), `cloud_essd_entry`.
  final pulumi.Input<String> category;
  /// Disk creation time.
  final pulumi.Input<String> creationTime;
  final pulumi.Input<bool> deleteAutoSnapshot;
  final pulumi.Input<bool> deleteWithInstance;
  /// Disk description.
  final pulumi.Input<String> description;
  /// Disk detachment time.
  final pulumi.Input<String> detachedTime;
  final pulumi.Input<String> device;
  final pulumi.Input<String> diskId;
  final pulumi.Input<String> diskName;
  final pulumi.Input<String> diskType;
  final pulumi.Input<bool> enableAutoSnapshot;
  final pulumi.Input<bool> enableAutomatedSnapshotPolicy;
  /// Indicate whether the disk is encrypted or not. Possible values: `on` and `off`.
  final pulumi.Input<String> encrypted;
  /// Disk expiration time.
  final pulumi.Input<String> expirationTime;
  final pulumi.Input<String> expiredTime;
  /// ID of the disk.
  final pulumi.Input<String> id;
  /// ID of the image from which the disk is created. It is null unless the disk is created using an image.
  final pulumi.Input<String> imageId;
  /// Filter the results by the specified ECS instance ID.
  final pulumi.Input<String> instanceId;
  final pulumi.Input<int> iops;
  final pulumi.Input<int> iopsRead;
  final pulumi.Input<int> iopsWrite;
  final pulumi.Input<String> kmsKeyId;
  final pulumi.Input<int> mountInstanceNum;
  final pulumi.Input<List<GetDisksDiskMountInstance>> mountInstances;
  /// Disk name.
  final pulumi.Input<String> name;
  final pulumi.Input<List<GetDisksDiskOperationLock>> operationLocks;
  final pulumi.Input<String> paymentType;
  final pulumi.Input<String> performanceLevel;
  final pulumi.Input<bool> portable;
  final pulumi.Input<String> productCode;
  /// Region ID the disk belongs to.
  final pulumi.Input<String> regionId;
  /// The Id of resource group which the disk belongs.
  final pulumi.Input<String> resourceGroupId;
  /// Disk size in GiB.
  final pulumi.Input<int> size;
  /// Snapshot used to create the disk. It is null if no snapshot is used to create the disk.
  final pulumi.Input<String> snapshotId;
  /// Current status. Possible values: `In_use`, `Available`, `Attaching`, `Detaching`, `Creating` and `ReIniting`.
  final pulumi.Input<String> status;
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
  final pulumi.Input<Map<String, String>> tags;
  /// Disk type. Possible values: `system` and `data`.
  final pulumi.Input<String> type;
  final pulumi.Input<String> zoneId;

  /// Creates a new [GetDisksDisk].
  /// [attachedTime] Disk attachment time.
  /// [autoSnapshotPolicyId] Required.
  /// [availabilityZone] Availability zone of the disk.
  /// [category] Disk category. Possible values: `cloud` (basic cloud disk), `cloud_efficiency` (ultra cloud disk), `ephemeral_ssd` (local SSD cloud disk), `cloud_ssd` (SSD cloud disk), and `cloud_essd` (ESSD cloud disk), `cloud_essd_entry`.
  /// [creationTime] Disk creation time.
  /// [deleteAutoSnapshot] Required.
  /// [deleteWithInstance] Required.
  /// [description] Disk description.
  /// [detachedTime] Disk detachment time.
  /// [device] Required.
  /// [diskId] Required.
  /// [diskName] Required.
  /// [diskType] Required.
  /// [enableAutoSnapshot] Required.
  /// [enableAutomatedSnapshotPolicy] Required.
  /// [encrypted] Indicate whether the disk is encrypted or not. Possible values: `on` and `off`.
  /// [expirationTime] Disk expiration time.
  /// [expiredTime] Required.
  /// [id] ID of the disk.
  /// [imageId] ID of the image from which the disk is created. It is null unless the disk is created using an image.
  /// [instanceId] Filter the results by the specified ECS instance ID.
  /// [iops] Required.
  /// [iopsRead] Required.
  /// [iopsWrite] Required.
  /// [kmsKeyId] Required.
  /// [mountInstanceNum] Required.
  /// [mountInstances] Required.
  /// [name] Disk name.
  /// [operationLocks] Required.
  /// [paymentType] Required.
  /// [performanceLevel] Required.
  /// [portable] Required.
  /// [productCode] Required.
  /// [regionId] Region ID the disk belongs to.
  /// [resourceGroupId] The Id of resource group which the disk belongs.
  /// [size] Disk size in GiB.
  /// [snapshotId] Snapshot used to create the disk. It is null if no snapshot is used to create the disk.
  /// [status] Current status. Possible values: `In_use`, `Available`, `Attaching`, `Detaching`, `Creating` and `ReIniting`.
  /// [tags] A map of tags assigned to the disks. It must be in the format:
  /// [type] Disk type. Possible values: `system` and `data`.
  /// [zoneId] Required.
  const GetDisksDisk({
    required this.attachedTime,
    required this.autoSnapshotPolicyId,
    required this.availabilityZone,
    required this.category,
    required this.creationTime,
    required this.deleteAutoSnapshot,
    required this.deleteWithInstance,
    required this.description,
    required this.detachedTime,
    required this.device,
    required this.diskId,
    required this.diskName,
    required this.diskType,
    required this.enableAutoSnapshot,
    required this.enableAutomatedSnapshotPolicy,
    required this.encrypted,
    required this.expirationTime,
    required this.expiredTime,
    required this.id,
    required this.imageId,
    required this.instanceId,
    required this.iops,
    required this.iopsRead,
    required this.iopsWrite,
    required this.kmsKeyId,
    required this.mountInstanceNum,
    required this.mountInstances,
    required this.name,
    required this.operationLocks,
    required this.paymentType,
    required this.performanceLevel,
    required this.portable,
    required this.productCode,
    required this.regionId,
    required this.resourceGroupId,
    required this.size,
    required this.snapshotId,
    required this.status,
    required this.tags,
    required this.type,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attachedTime': attachedTime,
      'autoSnapshotPolicyId': autoSnapshotPolicyId,
      'availabilityZone': availabilityZone,
      'category': category,
      'creationTime': creationTime,
      'deleteAutoSnapshot': deleteAutoSnapshot,
      'deleteWithInstance': deleteWithInstance,
      'description': description,
      'detachedTime': detachedTime,
      'device': device,
      'diskId': diskId,
      'diskName': diskName,
      'diskType': diskType,
      'enableAutoSnapshot': enableAutoSnapshot,
      'enableAutomatedSnapshotPolicy': enableAutomatedSnapshotPolicy,
      'encrypted': encrypted,
      'expirationTime': expirationTime,
      'expiredTime': expiredTime,
      'id': id,
      'imageId': imageId,
      'instanceId': instanceId,
      'iops': iops,
      'iopsRead': iopsRead,
      'iopsWrite': iopsWrite,
      'kmsKeyId': kmsKeyId,
      'mountInstanceNum': mountInstanceNum,
      'mountInstances': pulumi.Input.mapInputValue<List<GetDisksDiskMountInstance>, List<Map<String, dynamic>>>(mountInstances, (value) => pulumi.Input.encodeList<GetDisksDiskMountInstance, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': name,
      'operationLocks': pulumi.Input.mapInputValue<List<GetDisksDiskOperationLock>, List<Map<String, dynamic>>>(operationLocks, (value) => pulumi.Input.encodeList<GetDisksDiskOperationLock, Map<String, dynamic>>(value, (value) => value.toMap())),
      'paymentType': paymentType,
      'performanceLevel': performanceLevel,
      'portable': portable,
      'productCode': productCode,
      'regionId': regionId,
      'resourceGroupId': resourceGroupId,
      'size': size,
      'snapshotId': snapshotId,
      'status': status,
      'tags': tags,
      'type': type,
      'zoneId': zoneId,
    };
  }

  factory GetDisksDisk.fromMap(Map<String, dynamic> map) {
    return GetDisksDisk(
      attachedTime: pulumi.Input.fromValue(map['attachedTime'] as String),
      autoSnapshotPolicyId: pulumi.Input.fromValue(map['autoSnapshotPolicyId'] as String),
      availabilityZone: pulumi.Input.fromValue(map['availabilityZone'] as String),
      category: pulumi.Input.fromValue(map['category'] as String),
      creationTime: pulumi.Input.fromValue(map['creationTime'] as String),
      deleteAutoSnapshot: pulumi.Input.fromValue(map['deleteAutoSnapshot'] as bool),
      deleteWithInstance: pulumi.Input.fromValue(map['deleteWithInstance'] as bool),
      description: pulumi.Input.fromValue(map['description'] as String),
      detachedTime: pulumi.Input.fromValue(map['detachedTime'] as String),
      device: pulumi.Input.fromValue(map['device'] as String),
      diskId: pulumi.Input.fromValue(map['diskId'] as String),
      diskName: pulumi.Input.fromValue(map['diskName'] as String),
      diskType: pulumi.Input.fromValue(map['diskType'] as String),
      enableAutoSnapshot: pulumi.Input.fromValue(map['enableAutoSnapshot'] as bool),
      enableAutomatedSnapshotPolicy: pulumi.Input.fromValue(map['enableAutomatedSnapshotPolicy'] as bool),
      encrypted: pulumi.Input.fromValue(map['encrypted'] as String),
      expirationTime: pulumi.Input.fromValue(map['expirationTime'] as String),
      expiredTime: pulumi.Input.fromValue(map['expiredTime'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      imageId: pulumi.Input.fromValue(map['imageId'] as String),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      iops: pulumi.Input.fromValue(map['iops'] as int),
      iopsRead: pulumi.Input.fromValue(map['iopsRead'] as int),
      iopsWrite: pulumi.Input.fromValue(map['iopsWrite'] as int),
      kmsKeyId: pulumi.Input.fromValue(map['kmsKeyId'] as String),
      mountInstanceNum: pulumi.Input.fromValue(map['mountInstanceNum'] as int),
      mountInstances: pulumi.Input.fromValue(pulumi.Input.decodeList<GetDisksDiskMountInstance>(map['mountInstances']!, (value) => GetDisksDiskMountInstance.fromMap((value as Map).cast<String, dynamic>()))),
      name: pulumi.Input.fromValue(map['name'] as String),
      operationLocks: pulumi.Input.fromValue(pulumi.Input.decodeList<GetDisksDiskOperationLock>(map['operationLocks']!, (value) => GetDisksDiskOperationLock.fromMap((value as Map).cast<String, dynamic>()))),
      paymentType: pulumi.Input.fromValue(map['paymentType'] as String),
      performanceLevel: pulumi.Input.fromValue(map['performanceLevel'] as String),
      portable: pulumi.Input.fromValue(map['portable'] as bool),
      productCode: pulumi.Input.fromValue(map['productCode'] as String),
      regionId: pulumi.Input.fromValue(map['regionId'] as String),
      resourceGroupId: pulumi.Input.fromValue(map['resourceGroupId'] as String),
      size: pulumi.Input.fromValue(map['size'] as int),
      snapshotId: pulumi.Input.fromValue(map['snapshotId'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      tags: pulumi.Input.fromValue((map['tags'] as Map).cast<String, String>()),
      type: pulumi.Input.fromValue(map['type'] as String),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}

