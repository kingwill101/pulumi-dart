// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_slb_get_load_balancers_get_load_balancers_args_doc}
/// Arguments for getLoadBalancers.
/// {@endtemplate}
/// {@macro pulumi_slb_get_load_balancers_get_load_balancers_args_doc}
class GetLoadBalancersArgs {
  /// Service address of the SLBs.
  final pulumi.Input<String>? address;
  final pulumi.Input<String>? addressIpVersion;
  final pulumi.Input<String>? addressType;
  final pulumi.Input<bool>? enableDetails;
  /// A list of SLBs IDs.
  final pulumi.Input<List<String>>? ids;
  final pulumi.Input<String>? internetChargeType;
  final pulumi.Input<String>? loadBalancerName;
  final pulumi.Input<String>? masterZoneId;
  /// A regex string to filter results by SLB name.
  final pulumi.Input<String>? nameRegex;
  /// Network type of the SLBs. Valid values: `vpc` and `classic`.
  final pulumi.Input<String>? networkType;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  final pulumi.Input<int>? pageNumber;
  final pulumi.Input<int>? pageSize;
  final pulumi.Input<String>? paymentType;
  /// The Id of resource group which SLB belongs.
  final pulumi.Input<String>? resourceGroupId;
  final pulumi.Input<String>? serverId;
  final pulumi.Input<String>? serverIntranetAddress;
  final pulumi.Input<String>? slaveZoneId;
  /// SLB current status. Possible values: `inactive`, `active` and `locked`.
  final pulumi.Input<String>? status;
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
  final pulumi.Input<Map<String, String>>? tags;
  /// ID of the VPC linked to the SLBs.
  final pulumi.Input<String>? vpcId;
  /// ID of the vSwitch linked to the SLBs.
  final pulumi.Input<String>? vswitchId;

  /// Creates a new [GetLoadBalancersArgs].
  /// [address] Service address of the SLBs.
  /// [addressIpVersion] Optional.
  /// [addressType] Optional.
  /// [enableDetails] Optional.
  /// [ids] A list of SLBs IDs.
  /// [internetChargeType] Optional.
  /// [loadBalancerName] Optional.
  /// [masterZoneId] Optional.
  /// [nameRegex] A regex string to filter results by SLB name.
  /// [networkType] Network type of the SLBs. Valid values: `vpc` and `classic`.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [pageNumber] Optional.
  /// [pageSize] Optional.
  /// [paymentType] Optional.
  /// [resourceGroupId] The Id of resource group which SLB belongs.
  /// [serverId] Optional.
  /// [serverIntranetAddress] Optional.
  /// [slaveZoneId] Optional.
  /// [status] SLB current status. Possible values: `inactive`, `active` and `locked`.
  /// [tags] A map of tags assigned to the SLB instances. The `tags` can have a maximum of 5 tag. It must be in the format:
  /// [vpcId] ID of the VPC linked to the SLBs.
  /// [vswitchId] ID of the vSwitch linked to the SLBs.
  GetLoadBalancersArgs({
    String? address,
    String? addressIpVersion,
    String? addressType,
    bool? enableDetails,
    List<String>? ids,
    String? internetChargeType,
    String? loadBalancerName,
    String? masterZoneId,
    String? nameRegex,
    String? networkType,
    String? outputFile,
    int? pageNumber,
    int? pageSize,
    String? paymentType,
    String? resourceGroupId,
    String? serverId,
    String? serverIntranetAddress,
    String? slaveZoneId,
    String? status,
    Map<String, String>? tags,
    String? vpcId,
    String? vswitchId,
  }) :
      address = pulumi.Input.asOptionalInput<String>(address),
      addressIpVersion = pulumi.Input.asOptionalInput<String>(addressIpVersion),
      addressType = pulumi.Input.asOptionalInput<String>(addressType),
      enableDetails = pulumi.Input.asOptionalInput<bool>(enableDetails),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      internetChargeType = pulumi.Input.asOptionalInput<String>(internetChargeType),
      loadBalancerName = pulumi.Input.asOptionalInput<String>(loadBalancerName),
      masterZoneId = pulumi.Input.asOptionalInput<String>(masterZoneId),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      networkType = pulumi.Input.asOptionalInput<String>(networkType),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      pageNumber = pulumi.Input.asOptionalInput<int>(pageNumber),
      pageSize = pulumi.Input.asOptionalInput<int>(pageSize),
      paymentType = pulumi.Input.asOptionalInput<String>(paymentType),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      serverId = pulumi.Input.asOptionalInput<String>(serverId),
      serverIntranetAddress = pulumi.Input.asOptionalInput<String>(serverIntranetAddress),
      slaveZoneId = pulumi.Input.asOptionalInput<String>(slaveZoneId),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId),
      vswitchId = pulumi.Input.asOptionalInput<String>(vswitchId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address,
      'addressIpVersion': ?addressIpVersion,
      'addressType': ?addressType,
      'enableDetails': ?enableDetails,
      'ids': ?ids,
      'internetChargeType': ?internetChargeType,
      'loadBalancerName': ?loadBalancerName,
      'masterZoneId': ?masterZoneId,
      'nameRegex': ?nameRegex,
      'networkType': ?networkType,
      'outputFile': ?outputFile,
      'pageNumber': ?pageNumber,
      'pageSize': ?pageSize,
      'paymentType': ?paymentType,
      'resourceGroupId': ?resourceGroupId,
      'serverId': ?serverId,
      'serverIntranetAddress': ?serverIntranetAddress,
      'slaveZoneId': ?slaveZoneId,
      'status': ?status,
      'tags': ?tags,
      'vpcId': ?vpcId,
      'vswitchId': ?vswitchId,
    };
  }

  factory GetLoadBalancersArgs.fromMap(Map<String, dynamic> map) {
    return GetLoadBalancersArgs(
      address: map['address'] == null ? null : map['address'] as String,
      addressIpVersion: map['addressIpVersion'] == null ? null : map['addressIpVersion'] as String,
      addressType: map['addressType'] == null ? null : map['addressType'] as String,
      enableDetails: map['enableDetails'] == null ? null : map['enableDetails'] as bool,
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      internetChargeType: map['internetChargeType'] == null ? null : map['internetChargeType'] as String,
      loadBalancerName: map['loadBalancerName'] == null ? null : map['loadBalancerName'] as String,
      masterZoneId: map['masterZoneId'] == null ? null : map['masterZoneId'] as String,
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      networkType: map['networkType'] == null ? null : map['networkType'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      pageNumber: map['pageNumber'] == null ? null : map['pageNumber'] as int,
      pageSize: map['pageSize'] == null ? null : map['pageSize'] as int,
      paymentType: map['paymentType'] == null ? null : map['paymentType'] as String,
      resourceGroupId: map['resourceGroupId'] == null ? null : map['resourceGroupId'] as String,
      serverId: map['serverId'] == null ? null : map['serverId'] as String,
      serverIntranetAddress: map['serverIntranetAddress'] == null ? null : map['serverIntranetAddress'] as String,
      slaveZoneId: map['slaveZoneId'] == null ? null : map['slaveZoneId'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      vpcId: map['vpcId'] == null ? null : map['vpcId'] as String,
      vswitchId: map['vswitchId'] == null ? null : map['vswitchId'] as String,
    );
  }
}

