// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ecs_get_instances_get_instances_args_doc}
/// Arguments for getInstances.
/// {@endtemplate}
/// {@macro pulumi_ecs_get_instances_get_instances_args_doc}
class GetInstancesArgs {
  /// Availability zone where instances are located.
  final pulumi.Input<String>? availabilityZone;
  /// Default to `true`. If false, the attributes `ram_role_name` and `disk_device_mappings` will not be fetched and output.
  final pulumi.Input<bool>? enableDetails;
  /// A list of ECS instance IDs.
  final pulumi.Input<List<String>>? ids;
  /// The image ID of some ECS instance used.
  final pulumi.Input<String>? imageId;
  /// The name of the instance. Fuzzy search with the asterisk (*) wildcard characters is supported.
  final pulumi.Input<String>? instanceName;
  /// A regex string to filter results by instance name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  final pulumi.Input<int>? pageNumber;
  final pulumi.Input<int>? pageSize;
  /// The RAM role name which the instance attaches.
  final pulumi.Input<String>? ramRoleName;
  /// The ID of resource group which the instance belongs.
  final pulumi.Input<String>? resourceGroupId;
  /// Instance status. Valid values: "Creating", "Starting", "Running", "Stopping" and "Stopped". If undefined, all statuses are considered.
  final pulumi.Input<String>? status;
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
  final pulumi.Input<Map<String, String>>? tags;
  /// ID of the VPC linked to the instances.
  final pulumi.Input<String>? vpcId;
  /// ID of the vSwitch linked to the instances.
  final pulumi.Input<String>? vswitchId;

  /// Creates a new [GetInstancesArgs].
  /// [availabilityZone] Availability zone where instances are located.
  /// [enableDetails] Default to `true`. If false, the attributes `ram_role_name` and `disk_device_mappings` will not be fetched and output.
  /// [ids] A list of ECS instance IDs.
  /// [imageId] The image ID of some ECS instance used.
  /// [instanceName] The name of the instance. Fuzzy search with the asterisk (*) wildcard characters is supported.
  /// [nameRegex] A regex string to filter results by instance name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [pageNumber] Optional.
  /// [pageSize] Optional.
  /// [ramRoleName] The RAM role name which the instance attaches.
  /// [resourceGroupId] The ID of resource group which the instance belongs.
  /// [status] Instance status. Valid values: "Creating", "Starting", "Running", "Stopping" and "Stopped". If undefined, all statuses are considered.
  /// [tags] A map of tags assigned to the ECS instances. It must be in the format:
  /// [vpcId] ID of the VPC linked to the instances.
  /// [vswitchId] ID of the vSwitch linked to the instances.
  GetInstancesArgs({
    pulumi.Output<String>? availabilityZone,
    pulumi.Output<bool>? enableDetails,
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? imageId,
    pulumi.Output<String>? instanceName,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? outputFile,
    pulumi.Output<int>? pageNumber,
    pulumi.Output<int>? pageSize,
    pulumi.Output<String>? ramRoleName,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? vpcId,
    pulumi.Output<String>? vswitchId,
  }) :
      availabilityZone = pulumi.Input.asOptionalInput<String>(availabilityZone),
      enableDetails = pulumi.Input.asOptionalInput<bool>(enableDetails),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      imageId = pulumi.Input.asOptionalInput<String>(imageId),
      instanceName = pulumi.Input.asOptionalInput<String>(instanceName),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      pageNumber = pulumi.Input.asOptionalInput<int>(pageNumber),
      pageSize = pulumi.Input.asOptionalInput<int>(pageSize),
      ramRoleName = pulumi.Input.asOptionalInput<String>(ramRoleName),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId),
      vswitchId = pulumi.Input.asOptionalInput<String>(vswitchId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityZone': ?availabilityZone,
      'enableDetails': ?enableDetails,
      'ids': ?ids,
      'imageId': ?imageId,
      'instanceName': ?instanceName,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'pageNumber': ?pageNumber,
      'pageSize': ?pageSize,
      'ramRoleName': ?ramRoleName,
      'resourceGroupId': ?resourceGroupId,
      'status': ?status,
      'tags': ?tags,
      'vpcId': ?vpcId,
      'vswitchId': ?vswitchId,
    };
  }

  factory GetInstancesArgs.fromMap(Map<String, dynamic> map) {
    return GetInstancesArgs(
      availabilityZone: map['availabilityZone'] == null ? null : pulumi.Output.create<String>(map['availabilityZone'] as String),
      enableDetails: map['enableDetails'] == null ? null : pulumi.Output.create<bool>(map['enableDetails'] as bool),
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      imageId: map['imageId'] == null ? null : pulumi.Output.create<String>(map['imageId'] as String),
      instanceName: map['instanceName'] == null ? null : pulumi.Output.create<String>(map['instanceName'] as String),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      pageNumber: map['pageNumber'] == null ? null : pulumi.Output.create<int>(map['pageNumber'] as int),
      pageSize: map['pageSize'] == null ? null : pulumi.Output.create<int>(map['pageSize'] as int),
      ramRoleName: map['ramRoleName'] == null ? null : pulumi.Output.create<String>(map['ramRoleName'] as String),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      vpcId: map['vpcId'] == null ? null : pulumi.Output.create<String>(map['vpcId'] as String),
      vswitchId: map['vswitchId'] == null ? null : pulumi.Output.create<String>(map['vswitchId'] as String),
    );
  }
}

