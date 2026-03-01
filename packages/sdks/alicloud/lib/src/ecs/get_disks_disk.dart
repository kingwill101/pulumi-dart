// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_disks_disk_mount_instance.dart';
import 'get_disks_disk_operation_lock.dart';

class GetDisksDisk {
  /// Disk attachment time.
  final String attachedTime;
  final String autoSnapshotPolicyId;
  /// Availability zone of the disk.
  final String availabilityZone;
  /// Disk category. Possible values: `cloud` (basic cloud disk), `cloud_efficiency` (ultra cloud disk), `ephemeral_ssd` (local SSD cloud disk), `cloud_ssd` (SSD cloud disk), and `cloud_essd` (ESSD cloud disk), `cloud_essd_entry`.
  final String category;
  /// Disk creation time.
  final String creationTime;
  final bool deleteAutoSnapshot;
  final bool deleteWithInstance;
  /// Disk description.
  final String description;
  /// Disk detachment time.
  final String detachedTime;
  final String device;
  final String diskId;
  final String diskName;
  final String diskType;
  final bool enableAutoSnapshot;
  final bool enableAutomatedSnapshotPolicy;
  /// Indicate whether the disk is encrypted or not. Possible values: `on` and `off`.
  final String encrypted;
  /// Disk expiration time.
  final String expirationTime;
  final String expiredTime;
  /// ID of the disk.
  final String id;
  /// ID of the image from which the disk is created. It is null unless the disk is created using an image.
  final String imageId;
  /// Filter the results by the specified ECS instance ID.
  final String instanceId;
  final int iops;
  final int iopsRead;
  final int iopsWrite;
  final String kmsKeyId;
  final int mountInstanceNum;
  final List<GetDisksDiskMountInstance> mountInstances;
  /// Disk name.
  final String name;
  final List<GetDisksDiskOperationLock> operationLocks;
  final String paymentType;
  final String performanceLevel;
  final bool portable;
  final String productCode;
  /// Region ID the disk belongs to.
  final String regionId;
  /// The Id of resource group which the disk belongs.
  final String resourceGroupId;
  /// Disk size in GiB.
  final int size;
  /// Snapshot used to create the disk. It is null if no snapshot is used to create the disk.
  final String snapshotId;
  /// Current status. Possible values: `In_use`, `Available`, `Attaching`, `Detaching`, `Creating` and `ReIniting`.
  final String status;
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
  final Map<String, String> tags;
  /// Disk type. Possible values: `system` and `data`.
  final String type;
  final String zoneId;

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
  GetDisksDisk({
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
      'mountInstances': pulumi.Input.encodeList<GetDisksDiskMountInstance, Map<String, dynamic>>(mountInstances, (value) => value.toMap()),
      'name': name,
      'operationLocks': pulumi.Input.encodeList<GetDisksDiskOperationLock, Map<String, dynamic>>(operationLocks, (value) => value.toMap()),
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
      attachedTime: map['attachedTime'] as String,
      autoSnapshotPolicyId: map['autoSnapshotPolicyId'] as String,
      availabilityZone: map['availabilityZone'] as String,
      category: map['category'] as String,
      creationTime: map['creationTime'] as String,
      deleteAutoSnapshot: map['deleteAutoSnapshot'] as bool,
      deleteWithInstance: map['deleteWithInstance'] as bool,
      description: map['description'] as String,
      detachedTime: map['detachedTime'] as String,
      device: map['device'] as String,
      diskId: map['diskId'] as String,
      diskName: map['diskName'] as String,
      diskType: map['diskType'] as String,
      enableAutoSnapshot: map['enableAutoSnapshot'] as bool,
      enableAutomatedSnapshotPolicy: map['enableAutomatedSnapshotPolicy'] as bool,
      encrypted: map['encrypted'] as String,
      expirationTime: map['expirationTime'] as String,
      expiredTime: map['expiredTime'] as String,
      id: map['id'] as String,
      imageId: map['imageId'] as String,
      instanceId: map['instanceId'] as String,
      iops: map['iops'] as int,
      iopsRead: map['iopsRead'] as int,
      iopsWrite: map['iopsWrite'] as int,
      kmsKeyId: map['kmsKeyId'] as String,
      mountInstanceNum: map['mountInstanceNum'] as int,
      mountInstances: pulumi.Input.decodeList<GetDisksDiskMountInstance>(map['mountInstances'], (value) => GetDisksDiskMountInstance.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      operationLocks: pulumi.Input.decodeList<GetDisksDiskOperationLock>(map['operationLocks'], (value) => GetDisksDiskOperationLock.fromMap((value as Map).cast<String, dynamic>())),
      paymentType: map['paymentType'] as String,
      performanceLevel: map['performanceLevel'] as String,
      portable: map['portable'] as bool,
      productCode: map['productCode'] as String,
      regionId: map['regionId'] as String,
      resourceGroupId: map['resourceGroupId'] as String,
      size: map['size'] as int,
      snapshotId: map['snapshotId'] as String,
      status: map['status'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      type: map['type'] as String,
      zoneId: map['zoneId'] as String,
    );
  }
}

