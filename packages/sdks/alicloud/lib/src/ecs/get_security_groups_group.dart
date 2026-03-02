// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetSecurityGroupsGroup {
  /// Creation time of the security group.
  final pulumi.Input<String> creationTime;
  /// The description of the security group.
  final pulumi.Input<String> description;
  /// The ID of the security group.
  final pulumi.Input<String> id;
  /// Whether to allow inner network access.
  final pulumi.Input<bool> innerAccess;
  /// The name of the security group.
  final pulumi.Input<String> name;
  /// The Id of resource group which the security_group belongs.
  final pulumi.Input<String> resourceGroupId;
  /// The type of the security group.
  final pulumi.Input<String> securityGroupType;
  /// A map of tags assigned to the ECS instances. It must be in the format:
  ///
  /// ```typescript
  /// import * as pulumi from "@pulumi/pulumi";
  /// import * as alicloud from "@pulumi/alicloud";
  ///
  /// const taggedSecurityGroups = alicloud.ecs.getSecurityGroups({
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
  /// tagged_security_groups = alicloud.ecs.get_security_groups(tags={
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
  ///     var taggedSecurityGroups = AliCloud.Ecs.GetSecurityGroups.Invoke(new()
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
  /// 		_, err := ecs.GetSecurityGroups(ctx, &ecs.GetSecurityGroupsArgs{
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
  /// import com.pulumi.alicloud.ecs.inputs.GetSecurityGroupsArgs;
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
  ///         final var taggedSecurityGroups = EcsFunctions.getSecurityGroups(GetSecurityGroupsArgs.builder()
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
  ///   taggedSecurityGroups:
  ///     fn::invoke:
  ///       function: alicloud:ecs:getSecurityGroups
  ///       arguments:
  ///         tags:
  ///           tagKey1: tagValue1
  ///           tagKey2: tagValue2
  /// ```
  final pulumi.Input<Map<String, String>>? tags;
  /// Used to retrieve security groups that belong to the specified VPC ID.
  final pulumi.Input<String> vpcId;

  /// Creates a new [GetSecurityGroupsGroup].
  /// [creationTime] Creation time of the security group.
  /// [description] The description of the security group.
  /// [id] The ID of the security group.
  /// [innerAccess] Whether to allow inner network access.
  /// [name] The name of the security group.
  /// [resourceGroupId] The Id of resource group which the security_group belongs.
  /// [securityGroupType] The type of the security group.
  /// [tags] A map of tags assigned to the ECS instances. It must be in the format:
  /// [vpcId] Used to retrieve security groups that belong to the specified VPC ID.
  GetSecurityGroupsGroup({
    required this.creationTime,
    required this.description,
    required this.id,
    required this.innerAccess,
    required this.name,
    required this.resourceGroupId,
    required this.securityGroupType,
    this.tags,
    required this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'creationTime': creationTime,
      'description': description,
      'id': id,
      'innerAccess': innerAccess,
      'name': name,
      'resourceGroupId': resourceGroupId,
      'securityGroupType': securityGroupType,
      'tags': ?tags,
      'vpcId': vpcId,
    };
  }

  factory GetSecurityGroupsGroup.fromMap(Map<String, dynamic> map) {
    return GetSecurityGroupsGroup(
      creationTime: (map['creationTime'] as String).input(),
      description: (map['description'] as String).input(),
      id: (map['id'] as String).input(),
      innerAccess: (map['innerAccess'] as bool).input(),
      name: (map['name'] as String).input(),
      resourceGroupId: (map['resourceGroupId'] as String).input(),
      securityGroupType: (map['securityGroupType'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      vpcId: (map['vpcId'] as String).input(),
    );
  }
}

