// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_load_balancers_balancer_backend_server.dart';
import 'get_load_balancers_balancer_listener_ports_and_protocal.dart';
import 'get_load_balancers_balancer_listener_ports_and_protocol.dart';

class GetLoadBalancersBalancer {
  /// Service address of the SLBs.
  final String address;
  final String addressIpVersion;
  final String addressType;
  final int autoReleaseTime;
  final List<GetLoadBalancersBalancerBackendServer> backendServers;
  final int bandwidth;
  final int createTimeStamp;
  final String deleteProtection;
  final String endTime;
  final int endTimeStamp;
  /// ID of the SLB.
  final String id;
  final String internetChargeType;
  final List<GetLoadBalancersBalancerListenerPortsAndProtocal> listenerPortsAndProtocals;
  final List<GetLoadBalancersBalancerListenerPortsAndProtocol> listenerPortsAndProtocols;
  final String loadBalancerId;
  final String loadBalancerName;
  final String loadBalancerSpec;
  final String masterZoneId;
  final String modificationProtectionReason;
  final String modificationProtectionStatus;
  /// Network type of the SLBs. Valid values: `vpc` and `classic`.
  final String networkType;
  final String paymentType;
  final String regionIdAlias;
  final String renewalCycUnit;
  final int renewalDuration;
  final String renewalStatus;
  /// The Id of resource group which SLB belongs.
  final String resourceGroupId;
  final String slaveZoneId;
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

  /// Creates a new [GetLoadBalancersBalancer].
  /// [address] Service address of the SLBs.
  /// [addressIpVersion] Required.
  /// [addressType] Required.
  /// [autoReleaseTime] Required.
  /// [backendServers] Required.
  /// [bandwidth] Required.
  /// [createTimeStamp] Required.
  /// [deleteProtection] Required.
  /// [endTime] Required.
  /// [endTimeStamp] Required.
  /// [id] ID of the SLB.
  /// [internetChargeType] Required.
  /// [listenerPortsAndProtocals] Required.
  /// [listenerPortsAndProtocols] Required.
  /// [loadBalancerId] Required.
  /// [loadBalancerName] Required.
  /// [loadBalancerSpec] Required.
  /// [masterZoneId] Required.
  /// [modificationProtectionReason] Required.
  /// [modificationProtectionStatus] Required.
  /// [networkType] Network type of the SLBs. Valid values: `vpc` and `classic`.
  /// [paymentType] Required.
  /// [regionIdAlias] Required.
  /// [renewalCycUnit] Required.
  /// [renewalDuration] Required.
  /// [renewalStatus] Required.
  /// [resourceGroupId] The Id of resource group which SLB belongs.
  /// [slaveZoneId] Required.
  /// [status] SLB current status. Possible values: `inactive`, `active` and `locked`.
  /// [tags] A map of tags assigned to the SLB instances. The `tags` can have a maximum of 5 tag. It must be in the format:
  /// [vpcId] ID of the VPC linked to the SLBs.
  /// [vswitchId] ID of the vSwitch linked to the SLBs.
  GetLoadBalancersBalancer({
    required this.address,
    required this.addressIpVersion,
    required this.addressType,
    required this.autoReleaseTime,
    required this.backendServers,
    required this.bandwidth,
    required this.createTimeStamp,
    required this.deleteProtection,
    required this.endTime,
    required this.endTimeStamp,
    required this.id,
    required this.internetChargeType,
    required this.listenerPortsAndProtocals,
    required this.listenerPortsAndProtocols,
    required this.loadBalancerId,
    required this.loadBalancerName,
    required this.loadBalancerSpec,
    required this.masterZoneId,
    required this.modificationProtectionReason,
    required this.modificationProtectionStatus,
    required this.networkType,
    required this.paymentType,
    required this.regionIdAlias,
    required this.renewalCycUnit,
    required this.renewalDuration,
    required this.renewalStatus,
    required this.resourceGroupId,
    required this.slaveZoneId,
    required this.status,
    required this.tags,
    required this.vpcId,
    required this.vswitchId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': address,
      'addressIpVersion': addressIpVersion,
      'addressType': addressType,
      'autoReleaseTime': autoReleaseTime,
      'backendServers': pulumi.Input.encodeList<GetLoadBalancersBalancerBackendServer, Map<String, dynamic>>(backendServers, (value) => value.toMap()),
      'bandwidth': bandwidth,
      'createTimeStamp': createTimeStamp,
      'deleteProtection': deleteProtection,
      'endTime': endTime,
      'endTimeStamp': endTimeStamp,
      'id': id,
      'internetChargeType': internetChargeType,
      'listenerPortsAndProtocals': pulumi.Input.encodeList<GetLoadBalancersBalancerListenerPortsAndProtocal, Map<String, dynamic>>(listenerPortsAndProtocals, (value) => value.toMap()),
      'listenerPortsAndProtocols': pulumi.Input.encodeList<GetLoadBalancersBalancerListenerPortsAndProtocol, Map<String, dynamic>>(listenerPortsAndProtocols, (value) => value.toMap()),
      'loadBalancerId': loadBalancerId,
      'loadBalancerName': loadBalancerName,
      'loadBalancerSpec': loadBalancerSpec,
      'masterZoneId': masterZoneId,
      'modificationProtectionReason': modificationProtectionReason,
      'modificationProtectionStatus': modificationProtectionStatus,
      'networkType': networkType,
      'paymentType': paymentType,
      'regionIdAlias': regionIdAlias,
      'renewalCycUnit': renewalCycUnit,
      'renewalDuration': renewalDuration,
      'renewalStatus': renewalStatus,
      'resourceGroupId': resourceGroupId,
      'slaveZoneId': slaveZoneId,
      'status': status,
      'tags': tags,
      'vpcId': vpcId,
      'vswitchId': vswitchId,
    };
  }

  factory GetLoadBalancersBalancer.fromMap(Map<String, dynamic> map) {
    return GetLoadBalancersBalancer(
      address: map['address'] as String,
      addressIpVersion: map['addressIpVersion'] as String,
      addressType: map['addressType'] as String,
      autoReleaseTime: map['autoReleaseTime'] as int,
      backendServers: pulumi.Input.decodeList<GetLoadBalancersBalancerBackendServer>(map['backendServers'], (value) => GetLoadBalancersBalancerBackendServer.fromMap((value as Map).cast<String, dynamic>())),
      bandwidth: map['bandwidth'] as int,
      createTimeStamp: map['createTimeStamp'] as int,
      deleteProtection: map['deleteProtection'] as String,
      endTime: map['endTime'] as String,
      endTimeStamp: map['endTimeStamp'] as int,
      id: map['id'] as String,
      internetChargeType: map['internetChargeType'] as String,
      listenerPortsAndProtocals: pulumi.Input.decodeList<GetLoadBalancersBalancerListenerPortsAndProtocal>(map['listenerPortsAndProtocals'], (value) => GetLoadBalancersBalancerListenerPortsAndProtocal.fromMap((value as Map).cast<String, dynamic>())),
      listenerPortsAndProtocols: pulumi.Input.decodeList<GetLoadBalancersBalancerListenerPortsAndProtocol>(map['listenerPortsAndProtocols'], (value) => GetLoadBalancersBalancerListenerPortsAndProtocol.fromMap((value as Map).cast<String, dynamic>())),
      loadBalancerId: map['loadBalancerId'] as String,
      loadBalancerName: map['loadBalancerName'] as String,
      loadBalancerSpec: map['loadBalancerSpec'] as String,
      masterZoneId: map['masterZoneId'] as String,
      modificationProtectionReason: map['modificationProtectionReason'] as String,
      modificationProtectionStatus: map['modificationProtectionStatus'] as String,
      networkType: map['networkType'] as String,
      paymentType: map['paymentType'] as String,
      regionIdAlias: map['regionIdAlias'] as String,
      renewalCycUnit: map['renewalCycUnit'] as String,
      renewalDuration: map['renewalDuration'] as int,
      renewalStatus: map['renewalStatus'] as String,
      resourceGroupId: map['resourceGroupId'] as String,
      slaveZoneId: map['slaveZoneId'] as String,
      status: map['status'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      vpcId: map['vpcId'] as String,
      vswitchId: map['vswitchId'] as String,
    );
  }
}

