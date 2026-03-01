// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instances_instance_disk_device_mapping.dart';

class GetInstancesInstance {
  /// Availability zone where instances are located.
  final String availabilityZone;
  /// Instance creation time.
  final String creationTime;
  /// Instance description.
  final String description;
  /// Description of the attached disks.
  final List<GetInstancesInstanceDiskDeviceMapping> diskDeviceMappings;
  /// EIP address the VPC instance is using.
  final String eip;
  /// ID of the instance.
  final String id;
  /// The image ID of some ECS instance used.
  final String imageId;
  /// Instance charge type.
  final String instanceChargeType;
  /// Instance type.
  final String instanceType;
  /// Instance network charge type.
  final String internetChargeType;
  /// Max output bandwidth for internet.
  final int internetMaxBandwidthOut;
  /// Key pair the instance is using.
  final String keyName;
  /// Instance name.
  final String name;
  /// Instance private IP address.
  final String privateIp;
  /// Instance public IP address.
  final String publicIp;
  /// The RAM role name which the instance attaches.
  final String ramRoleName;
  /// Region ID the instance belongs to.
  final String regionId;
  /// The ID of resource group which the instance belongs.
  final String resourceGroupId;
  /// List of security group IDs the instance belongs to.
  final List<String> securityGroups;
  /// Spot strategy the instance is using.
  final String spotStrategy;
  /// Instance status. Valid values: "Creating", "Starting", "Running", "Stopping" and "Stopped". If undefined, all statuses are considered.
  final String status;
  /// A map of tags assigned to the ECS instances. It must be in the format:
  ///
  /// ```typescript
  /// import * as pulumi from "@pulumi/pulumi";
  /// import * as alicloud from "@pulumi/alicloud";
  ///
  /// const taggedInstances = alicloud.ecs.getInstances({
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
  /// tagged_instances = alicloud.ecs.get_instances(tags={
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
  ///     var taggedInstances = AliCloud.Ecs.GetInstances.Invoke(new()
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
  /// 		_, err := ecs.GetInstances(ctx, &ecs.GetInstancesArgs{
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
  /// import com.pulumi.alicloud.ecs.inputs.GetInstancesArgs;
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
  ///         final var taggedInstances = EcsFunctions.getInstances(GetInstancesArgs.builder()
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
  ///   taggedInstances:
  ///     fn::invoke:
  ///       function: alicloud:ecs:getInstances
  ///       arguments:
  ///         tags:
  ///           tagKey1: tagValue1
  ///           tagKey2: tagValue2
  /// ```
  final Map<String, String> tags;
  /// ID of the VPC linked to the instances.
  final String vpcId;
  /// ID of the vSwitch linked to the instances.
  final String vswitchId;

  /// Creates a new [GetInstancesInstance].
  /// [availabilityZone] Availability zone where instances are located.
  /// [creationTime] Instance creation time.
  /// [description] Instance description.
  /// [diskDeviceMappings] Description of the attached disks.
  /// [eip] EIP address the VPC instance is using.
  /// [id] ID of the instance.
  /// [imageId] The image ID of some ECS instance used.
  /// [instanceChargeType] Instance charge type.
  /// [instanceType] Instance type.
  /// [internetChargeType] Instance network charge type.
  /// [internetMaxBandwidthOut] Max output bandwidth for internet.
  /// [keyName] Key pair the instance is using.
  /// [name] Instance name.
  /// [privateIp] Instance private IP address.
  /// [publicIp] Instance public IP address.
  /// [ramRoleName] The RAM role name which the instance attaches.
  /// [regionId] Region ID the instance belongs to.
  /// [resourceGroupId] The ID of resource group which the instance belongs.
  /// [securityGroups] List of security group IDs the instance belongs to.
  /// [spotStrategy] Spot strategy the instance is using.
  /// [status] Instance status. Valid values: "Creating", "Starting", "Running", "Stopping" and "Stopped". If undefined, all statuses are considered.
  /// [tags] A map of tags assigned to the ECS instances. It must be in the format:
  /// [vpcId] ID of the VPC linked to the instances.
  /// [vswitchId] ID of the vSwitch linked to the instances.
  GetInstancesInstance({
    required this.availabilityZone,
    required this.creationTime,
    required this.description,
    required this.diskDeviceMappings,
    required this.eip,
    required this.id,
    required this.imageId,
    required this.instanceChargeType,
    required this.instanceType,
    required this.internetChargeType,
    required this.internetMaxBandwidthOut,
    required this.keyName,
    required this.name,
    required this.privateIp,
    required this.publicIp,
    required this.ramRoleName,
    required this.regionId,
    required this.resourceGroupId,
    required this.securityGroups,
    required this.spotStrategy,
    required this.status,
    required this.tags,
    required this.vpcId,
    required this.vswitchId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityZone': availabilityZone,
      'creationTime': creationTime,
      'description': description,
      'diskDeviceMappings': pulumi.Input.encodeList<GetInstancesInstanceDiskDeviceMapping, Map<String, dynamic>>(diskDeviceMappings, (value) => value.toMap()),
      'eip': eip,
      'id': id,
      'imageId': imageId,
      'instanceChargeType': instanceChargeType,
      'instanceType': instanceType,
      'internetChargeType': internetChargeType,
      'internetMaxBandwidthOut': internetMaxBandwidthOut,
      'keyName': keyName,
      'name': name,
      'privateIp': privateIp,
      'publicIp': publicIp,
      'ramRoleName': ramRoleName,
      'regionId': regionId,
      'resourceGroupId': resourceGroupId,
      'securityGroups': securityGroups,
      'spotStrategy': spotStrategy,
      'status': status,
      'tags': tags,
      'vpcId': vpcId,
      'vswitchId': vswitchId,
    };
  }

  factory GetInstancesInstance.fromMap(Map<String, dynamic> map) {
    return GetInstancesInstance(
      availabilityZone: map['availabilityZone'] as String,
      creationTime: map['creationTime'] as String,
      description: map['description'] as String,
      diskDeviceMappings: pulumi.Input.decodeList<GetInstancesInstanceDiskDeviceMapping>(map['diskDeviceMappings'], (value) => GetInstancesInstanceDiskDeviceMapping.fromMap((value as Map).cast<String, dynamic>())),
      eip: map['eip'] as String,
      id: map['id'] as String,
      imageId: map['imageId'] as String,
      instanceChargeType: map['instanceChargeType'] as String,
      instanceType: map['instanceType'] as String,
      internetChargeType: map['internetChargeType'] as String,
      internetMaxBandwidthOut: map['internetMaxBandwidthOut'] as int,
      keyName: map['keyName'] as String,
      name: map['name'] as String,
      privateIp: map['privateIp'] as String,
      publicIp: map['publicIp'] as String,
      ramRoleName: map['ramRoleName'] as String,
      regionId: map['regionId'] as String,
      resourceGroupId: map['resourceGroupId'] as String,
      securityGroups: (map['securityGroups'] as List).cast<String>(),
      spotStrategy: map['spotStrategy'] as String,
      status: map['status'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      vpcId: map['vpcId'] as String,
      vswitchId: map['vswitchId'] as String,
    );
  }
}

