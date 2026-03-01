// ignore_for_file: unused_element, unnecessary_cast


class GetLoadBalancersSlb {
  /// Service address of the SLBs.
  final String address;
  /// SLB creation time.
  final String creationTime;
  /// ID of the SLB.
  final String id;
  /// SLB addressType: internet if `true`, intranet if `false`. Must be `false` when `network_type` is `vpc`.
  final bool internet;
  /// Master availability zone of the SLBs.
  final String masterAvailabilityZone;
  /// SLB name.
  final String name;
  /// Network type of the SLBs. Valid values: `vpc` and `classic`.
  final String networkType;
  /// Region ID the SLB belongs to.
  final String regionId;
  /// Slave availability zone of the SLBs.
  final String slaveAvailabilityZone;
  /// SLB current status. Possible values: `inactive`, `active` and `locked`.
  final String status;
  /// A map of tags assigned to the SLB instances. The `tags` can have a maximum of 5 tag. It must be in the format:
  ///
  /// ```typescript
  /// import * as pulumi from "@pulumi/pulumi";
  /// import * as alicloud from "@pulumi/alicloud";
  ///
  /// const taggedInstances = alicloud.slb.getLoadBalancers({
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
  /// tagged_instances = alicloud.slb.get_load_balancers(tags={
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
  ///     var taggedInstances = AliCloud.Slb.GetLoadBalancers.Invoke(new()
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
  /// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/slb"
  /// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
  /// )
  ///
  /// func main() {
  /// 	pulumi.Run(func(ctx *pulumi.Context) error {
  /// 		_, err := slb.GetLoadBalancers(ctx, &slb.GetLoadBalancersArgs{
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
  /// import com.pulumi.alicloud.slb.SlbFunctions;
  /// import com.pulumi.alicloud.slb.inputs.GetLoadBalancersArgs;
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
  ///         final var taggedInstances = SlbFunctions.getLoadBalancers(GetLoadBalancersArgs.builder()
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
  ///       function: alicloud:slb:getLoadBalancers
  ///       arguments:
  ///         tags:
  ///           tagKey1: tagValue1
  ///           tagKey2: tagValue2
  /// ```
  final Map<String, String> tags;
  /// ID of the VPC linked to the SLBs.
  final String vpcId;
  /// ID of the vSwitch linked to the SLBs.
  final String vswitchId;

  /// Creates a new [GetLoadBalancersSlb].
  /// [address] Service address of the SLBs.
  /// [creationTime] SLB creation time.
  /// [id] ID of the SLB.
  /// [internet] SLB addressType: internet if `true`, intranet if `false`. Must be `false` when `network_type` is `vpc`.
  /// [masterAvailabilityZone] Master availability zone of the SLBs.
  /// [name] SLB name.
  /// [networkType] Network type of the SLBs. Valid values: `vpc` and `classic`.
  /// [regionId] Region ID the SLB belongs to.
  /// [slaveAvailabilityZone] Slave availability zone of the SLBs.
  /// [status] SLB current status. Possible values: `inactive`, `active` and `locked`.
  /// [tags] A map of tags assigned to the SLB instances. The `tags` can have a maximum of 5 tag. It must be in the format:
  /// [vpcId] ID of the VPC linked to the SLBs.
  /// [vswitchId] ID of the vSwitch linked to the SLBs.
  GetLoadBalancersSlb({
    required this.address,
    required this.creationTime,
    required this.id,
    required this.internet,
    required this.masterAvailabilityZone,
    required this.name,
    required this.networkType,
    required this.regionId,
    required this.slaveAvailabilityZone,
    required this.status,
    required this.tags,
    required this.vpcId,
    required this.vswitchId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': address,
      'creationTime': creationTime,
      'id': id,
      'internet': internet,
      'masterAvailabilityZone': masterAvailabilityZone,
      'name': name,
      'networkType': networkType,
      'regionId': regionId,
      'slaveAvailabilityZone': slaveAvailabilityZone,
      'status': status,
      'tags': tags,
      'vpcId': vpcId,
      'vswitchId': vswitchId,
    };
  }

  factory GetLoadBalancersSlb.fromMap(Map<String, dynamic> map) {
    return GetLoadBalancersSlb(
      address: map['address'] as String,
      creationTime: map['creationTime'] as String,
      id: map['id'] as String,
      internet: map['internet'] as bool,
      masterAvailabilityZone: map['masterAvailabilityZone'] as String,
      name: map['name'] as String,
      networkType: map['networkType'] as String,
      regionId: map['regionId'] as String,
      slaveAvailabilityZone: map['slaveAvailabilityZone'] as String,
      status: map['status'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      vpcId: map['vpcId'] as String,
      vswitchId: map['vswitchId'] as String,
    );
  }
}

