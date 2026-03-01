// ignore_for_file: unused_element, unnecessary_cast


class GetInstancesInstance {
  /// The cluster type of the instance. Possible values: `SSD`, `HYBRID`.
  final String clusterType;
  /// The create time of the instance.
  final String createTime;
  /// The description of the instance.
  final String description;
  /// (Removed since v1.221.0) The instance quota which indicating the maximum number of tables.
  final int entityQuota;
  /// ID of the instance.
  final String id;
  /// Instance name.
  final String name;
  /// (Removed since v1.221.0) The network type of the instance. Possible values: `NORMAL`, `VPC`, `VPC_CONSOLE`.
  final String network;
  /// (Available since v1.221.0) The set of request sources that are allowed access. Possible values: `TRUST_PROXY`.
  final List<String> networkSourceAcls;
  /// (Available since v1.221.0) The set of network types that are allowed access. Possible values: `CLASSIC`, `VPC`, `INTERNET`.
  final List<String> networkTypeAcls;
  /// (Available since v1.221.0) instance policy, json string.
  final String policy;
  /// (Available since v1.221.0) instance policy version.
  final int policyVersion;
  /// (Available since v1.221.0) The resource group the instance belongs to.
  final String resourceGroupId;
  /// Instance status. Possible values: `Running`, `Disabled`, `Deleting`.
  final String status;
  /// (Available since v1.221.0) The instance quota which indicating the maximum number of tables.
  final int tableQuota;
  /// A map of tags assigned to the instance. It must be in the format:
  ///
  /// ```typescript
  /// import * as pulumi from "@pulumi/pulumi";
  /// import * as alicloud from "@pulumi/alicloud";
  ///
  /// const instancesDs = alicloud.ots.getInstances({
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
  /// instances_ds = alicloud.ots.get_instances(tags={
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
  ///     var instancesDs = AliCloud.Ots.GetInstances.Invoke(new()
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
  /// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ots"
  /// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
  /// )
  ///
  /// func main() {
  /// 	pulumi.Run(func(ctx *pulumi.Context) error {
  /// 		_, err := ots.GetInstances(ctx, &ots.GetInstancesArgs{
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
  /// import com.pulumi.alicloud.ots.OtsFunctions;
  /// import com.pulumi.alicloud.ots.inputs.GetInstancesArgs;
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
  ///         final var instancesDs = OtsFunctions.getInstances(GetInstancesArgs.builder()
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
  ///   instancesDs:
  ///     fn::invoke:
  ///       function: alicloud:ots:getInstances
  ///       arguments:
  ///         tags:
  ///           tagKey1: tagValue1
  ///           tagKey2: tagValue2
  /// ```
  final Map<String, String> tags;
  /// The user id of the instance.
  final String userId;

  /// Creates a new [GetInstancesInstance].
  /// [clusterType] The cluster type of the instance. Possible values: `SSD`, `HYBRID`.
  /// [createTime] The create time of the instance.
  /// [description] The description of the instance.
  /// [entityQuota] (Removed since v1.221.0) The instance quota which indicating the maximum number of tables.
  /// [id] ID of the instance.
  /// [name] Instance name.
  /// [network] (Removed since v1.221.0) The network type of the instance. Possible values: `NORMAL`, `VPC`, `VPC_CONSOLE`.
  /// [networkSourceAcls] (Available since v1.221.0) The set of request sources that are allowed access. Possible values: `TRUST_PROXY`.
  /// [networkTypeAcls] (Available since v1.221.0) The set of network types that are allowed access. Possible values: `CLASSIC`, `VPC`, `INTERNET`.
  /// [policy] (Available since v1.221.0) instance policy, json string.
  /// [policyVersion] (Available since v1.221.0) instance policy version.
  /// [resourceGroupId] (Available since v1.221.0) The resource group the instance belongs to.
  /// [status] Instance status. Possible values: `Running`, `Disabled`, `Deleting`.
  /// [tableQuota] (Available since v1.221.0) The instance quota which indicating the maximum number of tables.
  /// [tags] A map of tags assigned to the instance. It must be in the format:
  /// [userId] The user id of the instance.
  GetInstancesInstance({
    required this.clusterType,
    required this.createTime,
    required this.description,
    required this.entityQuota,
    required this.id,
    required this.name,
    required this.network,
    required this.networkSourceAcls,
    required this.networkTypeAcls,
    required this.policy,
    required this.policyVersion,
    required this.resourceGroupId,
    required this.status,
    required this.tableQuota,
    required this.tags,
    required this.userId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterType': clusterType,
      'createTime': createTime,
      'description': description,
      'entityQuota': entityQuota,
      'id': id,
      'name': name,
      'network': network,
      'networkSourceAcls': networkSourceAcls,
      'networkTypeAcls': networkTypeAcls,
      'policy': policy,
      'policyVersion': policyVersion,
      'resourceGroupId': resourceGroupId,
      'status': status,
      'tableQuota': tableQuota,
      'tags': tags,
      'userId': userId,
    };
  }

  factory GetInstancesInstance.fromMap(Map<String, dynamic> map) {
    return GetInstancesInstance(
      clusterType: map['clusterType'] as String,
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      entityQuota: map['entityQuota'] as int,
      id: map['id'] as String,
      name: map['name'] as String,
      network: map['network'] as String,
      networkSourceAcls: (map['networkSourceAcls'] as List).cast<String>(),
      networkTypeAcls: (map['networkTypeAcls'] as List).cast<String>(),
      policy: map['policy'] as String,
      policyVersion: map['policyVersion'] as int,
      resourceGroupId: map['resourceGroupId'] as String,
      status: map['status'] as String,
      tableQuota: map['tableQuota'] as int,
      tags: (map['tags'] as Map).cast<String, String>(),
      userId: map['userId'] as String,
    );
  }
}

