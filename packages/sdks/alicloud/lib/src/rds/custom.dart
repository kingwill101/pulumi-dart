import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_args.dart';
import 'custom_state.dart';
import 'custom_system_disk.dart';

/// Provides a RDS Custom resource.
///
/// Dedicated RDS User host.
///
/// For information about RDS Custom and how to use it, see [What is Custom](https://next.api.alibabacloud.com/document/Rds/2014-08-15/RunRCInstances).
///
/// &gt; **NOTE:** Available since v1.247.0.
///
/// ## Example Usage
///
/// Basic Usage
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform-example";
/// const clusterId = config.get("clusterId") || "c18c40b2b336840e2b2bbf8ab291758e2";
/// const deploymentsetid = config.get("deploymentsetid") || "ds-2ze78ef5kyj9eveue92m";
/// const vswtich_id = config.get("vswtich-id") || "example_vswitch";
/// const vpcName = config.get("vpcName") || "beijing111";
/// const exampleRegionId = config.get("exampleRegionId") || "cn-beijing";
/// const description = config.get("description") || "ran_1-08_rccreatenodepool_api";
/// const exampleZoneId = config.get("exampleZoneId") || "cn-beijing-h";
/// const securitygroupName = config.get("securitygroupName") || "rds_custom_init_sg_cn_beijing";
/// const _default = alicloud.resourcemanager.getResourceGroups({});
/// const vpcId = new alicloud.vpc.Network("vpcId", {vpcName: vpcName});
/// const vSwitchId = new alicloud.vpc.Switch("vSwitchId", {
///     vpcId: vpcId.id,
///     zoneId: exampleZoneId,
///     vswitchName: vswtich_id,
///     cidrBlock: "172.16.5.0/24",
/// });
/// const securityGroupId = new alicloud.ecs.SecurityGroup("securityGroupId", {
///     vpcId: vpcId.id,
///     securityGroupName: securitygroupName,
/// });
/// const deploymentSet = new alicloud.ecs.EcsDeploymentSet("deploymentSet", {});
/// const keyPairName = new alicloud.ecs.EcsKeyPair("KeyPairName", {keyPairName: vSwitchId.id});
/// const defaultCustom = new alicloud.rds.Custom("default", {
///     amount: 1,
///     autoRenew: false,
///     period: 1,
///     autoPay: true,
///     instanceType: "mysql.x2.xlarge.6cm",
///     dataDisks: [{
///         category: "cloud_essd",
///         size: 50,
///         performanceLevel: "PL1",
///     }],
///     status: "Running",
///     securityGroupIds: [securityGroupId.id],
///     ioOptimized: "optimized",
///     description: description,
///     keyPairName: keyPairName.id,
///     zoneId: exampleZoneId,
///     instanceChargeType: "Prepaid",
///     internetMaxBandwidthOut: 0,
///     imageId: "aliyun_2_1903_x64_20G_alibase_20240628.vhd",
///     securityEnhancementStrategy: "Active",
///     periodUnit: "Month",
///     password: "jingyiTEST@123",
///     systemDisk: {
///         size: "40",
///         category: "cloud_essd",
///     },
///     hostName: "1743386110",
///     createMode: "0",
///     spotStrategy: "NoSpot",
///     vswitchId: vSwitchId.id,
///     supportCase: "eni",
///     deploymentSetId: deploymentsetid,
///     dryRun: false,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// cluster_id = config.get("clusterId")
/// if cluster_id is None:
///     cluster_id = "c18c40b2b336840e2b2bbf8ab291758e2"
/// deploymentsetid = config.get("deploymentsetid")
/// if deploymentsetid is None:
///     deploymentsetid = "ds-2ze78ef5kyj9eveue92m"
/// vswtich_id = config.get("vswtich-id")
/// if vswtich_id is None:
///     vswtich_id = "example_vswitch"
/// vpc_name = config.get("vpcName")
/// if vpc_name is None:
///     vpc_name = "beijing111"
/// example_region_id = config.get("exampleRegionId")
/// if example_region_id is None:
///     example_region_id = "cn-beijing"
/// description = config.get("description")
/// if description is None:
///     description = "ran_1-08_rccreatenodepool_api"
/// example_zone_id = config.get("exampleZoneId")
/// if example_zone_id is None:
///     example_zone_id = "cn-beijing-h"
/// securitygroup_name = config.get("securitygroupName")
/// if securitygroup_name is None:
///     securitygroup_name = "rds_custom_init_sg_cn_beijing"
/// default = alicloud.resourcemanager.get_resource_groups()
/// vpc_id = alicloud.vpc.Network("vpcId", vpc_name=vpc_name)
/// v_switch_id = alicloud.vpc.Switch("vSwitchId",
///     vpc_id=vpc_id.id,
///     zone_id=example_zone_id,
///     vswitch_name=vswtich_id,
///     cidr_block="172.16.5.0/24")
/// security_group_id = alicloud.ecs.SecurityGroup("securityGroupId",
///     vpc_id=vpc_id.id,
///     security_group_name=securitygroup_name)
/// deployment_set = alicloud.ecs.EcsDeploymentSet("deploymentSet")
/// key_pair_name = alicloud.ecs.EcsKeyPair("KeyPairName", key_pair_name=v_switch_id.id)
/// default_custom = alicloud.rds.Custom("default",
///     amount=1,
///     auto_renew=False,
///     period=1,
///     auto_pay=True,
///     instance_type="mysql.x2.xlarge.6cm",
///     data_disks=[{
///         "category": "cloud_essd",
///         "size": 50,
///         "performance_level": "PL1",
///     }],
///     status="Running",
///     security_group_ids=[security_group_id.id],
///     io_optimized="optimized",
///     description=description,
///     key_pair_name=key_pair_name.id,
///     zone_id=example_zone_id,
///     instance_charge_type="Prepaid",
///     internet_max_bandwidth_out=0,
///     image_id="aliyun_2_1903_x64_20G_alibase_20240628.vhd",
///     security_enhancement_strategy="Active",
///     period_unit="Month",
///     password="jingyiTEST@123",
///     system_disk={
///         "size": "40",
///         "category": "cloud_essd",
///     },
///     host_name="1743386110",
///     create_mode="0",
///     spot_strategy="NoSpot",
///     vswitch_id=v_switch_id.id,
///     support_case="eni",
///     deployment_set_id=deploymentsetid,
///     dry_run=False)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "terraform-example";
///     var clusterId = config.Get("clusterId") ?? "c18c40b2b336840e2b2bbf8ab291758e2";
///     var deploymentsetid = config.Get("deploymentsetid") ?? "ds-2ze78ef5kyj9eveue92m";
///     var vswtich_id = config.Get("vswtich-id") ?? "example_vswitch";
///     var vpcName = config.Get("vpcName") ?? "beijing111";
///     var exampleRegionId = config.Get("exampleRegionId") ?? "cn-beijing";
///     var description = config.Get("description") ?? "ran_1-08_rccreatenodepool_api";
///     var exampleZoneId = config.Get("exampleZoneId") ?? "cn-beijing-h";
///     var securitygroupName = config.Get("securitygroupName") ?? "rds_custom_init_sg_cn_beijing";
///     var @default = AliCloud.ResourceManager.GetResourceGroups.Invoke();
///
///     var vpcId = new AliCloud.Vpc.Network("vpcId", new()
///     {
///         VpcName = vpcName,
///     });
///
///     var vSwitchId = new AliCloud.Vpc.Switch("vSwitchId", new()
///     {
///         VpcId = vpcId.Id,
///         ZoneId = exampleZoneId,
///         VswitchName = vswtich_id,
///         CidrBlock = "172.16.5.0/24",
///     });
///
///     var securityGroupId = new AliCloud.Ecs.SecurityGroup("securityGroupId", new()
///     {
///         VpcId = vpcId.Id,
///         SecurityGroupName = securitygroupName,
///     });
///
///     var deploymentSet = new AliCloud.Ecs.EcsDeploymentSet("deploymentSet");
///
///     var keyPairName = new AliCloud.Ecs.EcsKeyPair("KeyPairName", new()
///     {
///         KeyPairName = vSwitchId.Id,
///     });
///
///     var defaultCustom = new AliCloud.Rds.Custom("default", new()
///     {
///         Amount = 1,
///         AutoRenew = false,
///         Period = 1,
///         AutoPay = true,
///         InstanceType = "mysql.x2.xlarge.6cm",
///         DataDisks = new[]
///         {
///             new AliCloud.Rds.Inputs.CustomDataDiskArgs
///             {
///                 Category = "cloud_essd",
///                 Size = 50,
///                 PerformanceLevel = "PL1",
///             },
///         },
///         Status = "Running",
///         SecurityGroupIds = new[]
///         {
///             securityGroupId.Id,
///         },
///         IoOptimized = "optimized",
///         Description = description,
///         KeyPairName = keyPairName.Id,
///         ZoneId = exampleZoneId,
///         InstanceChargeType = "Prepaid",
///         InternetMaxBandwidthOut = 0,
///         ImageId = "aliyun_2_1903_x64_20G_alibase_20240628.vhd",
///         SecurityEnhancementStrategy = "Active",
///         PeriodUnit = "Month",
///         Password = "jingyiTEST@123",
///         SystemDisk = new AliCloud.Rds.Inputs.CustomSystemDiskArgs
///         {
///             Size = "40",
///             Category = "cloud_essd",
///         },
///         HostName = "1743386110",
///         CreateMode = "0",
///         SpotStrategy = "NoSpot",
///         VswitchId = vSwitchId.Id,
///         SupportCase = "eni",
///         DeploymentSetId = deploymentsetid,
///         DryRun = false,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ecs"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/rds"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/resourcemanager"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "terraform-example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		clusterId := "c18c40b2b336840e2b2bbf8ab291758e2"
/// 		if param := cfg.Get("clusterId"); param != "" {
/// 			clusterId = param
/// 		}
/// 		deploymentsetid := "ds-2ze78ef5kyj9eveue92m"
/// 		if param := cfg.Get("deploymentsetid"); param != "" {
/// 			deploymentsetid = param
/// 		}
/// 		vswtich_id := "example_vswitch"
/// 		if param := cfg.Get("vswtich-id"); param != "" {
/// 			vswtich_id = param
/// 		}
/// 		vpcName := "beijing111"
/// 		if param := cfg.Get("vpcName"); param != "" {
/// 			vpcName = param
/// 		}
/// 		exampleRegionId := "cn-beijing"
/// 		if param := cfg.Get("exampleRegionId"); param != "" {
/// 			exampleRegionId = param
/// 		}
/// 		description := "ran_1-08_rccreatenodepool_api"
/// 		if param := cfg.Get("description"); param != "" {
/// 			description = param
/// 		}
/// 		exampleZoneId := "cn-beijing-h"
/// 		if param := cfg.Get("exampleZoneId"); param != "" {
/// 			exampleZoneId = param
/// 		}
/// 		securitygroupName := "rds_custom_init_sg_cn_beijing"
/// 		if param := cfg.Get("securitygroupName"); param != "" {
/// 			securitygroupName = param
/// 		}
/// 		_, err := resourcemanager.GetResourceGroups(ctx, &resourcemanager.GetResourceGroupsArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		vpcId, err := vpc.NewNetwork(ctx, "vpcId", &vpc.NetworkArgs{
/// 			VpcName: pulumi.String(vpcName),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		vSwitchId, err := vpc.NewSwitch(ctx, "vSwitchId", &vpc.SwitchArgs{
/// 			VpcId:       vpcId.ID(),
/// 			ZoneId:      pulumi.String(exampleZoneId),
/// 			VswitchName: pulumi.String(vswtich_id),
/// 			CidrBlock:   pulumi.String("172.16.5.0/24"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		securityGroupId, err := ecs.NewSecurityGroup(ctx, "securityGroupId", &ecs.SecurityGroupArgs{
/// 			VpcId:             vpcId.ID(),
/// 			SecurityGroupName: pulumi.String(securitygroupName),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ecs.NewEcsDeploymentSet(ctx, "deploymentSet", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		keyPairName, err := ecs.NewEcsKeyPair(ctx, "KeyPairName", &ecs.EcsKeyPairArgs{
/// 			KeyPairName: vSwitchId.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = rds.NewCustom(ctx, "default", &rds.CustomArgs{
/// 			Amount:       pulumi.Int(1),
/// 			AutoRenew:    pulumi.Bool(false),
/// 			Period:       pulumi.Int(1),
/// 			AutoPay:      pulumi.Bool(true),
/// 			InstanceType: pulumi.String("mysql.x2.xlarge.6cm"),
/// 			DataDisks: rds.CustomDataDiskArray{
/// 				&rds.CustomDataDiskArgs{
/// 					Category:         pulumi.String("cloud_essd"),
/// 					Size:             pulumi.Int(50),
/// 					PerformanceLevel: pulumi.String("PL1"),
/// 				},
/// 			},
/// 			Status: pulumi.String("Running"),
/// 			SecurityGroupIds: pulumi.StringArray{
/// 				securityGroupId.ID(),
/// 			},
/// 			IoOptimized:                 pulumi.String("optimized"),
/// 			Description:                 pulumi.String(description),
/// 			KeyPairName:                 keyPairName.ID(),
/// 			ZoneId:                      pulumi.String(exampleZoneId),
/// 			InstanceChargeType:          pulumi.String("Prepaid"),
/// 			InternetMaxBandwidthOut:     pulumi.Int(0),
/// 			ImageId:                     pulumi.String("aliyun_2_1903_x64_20G_alibase_20240628.vhd"),
/// 			SecurityEnhancementStrategy: pulumi.String("Active"),
/// 			PeriodUnit:                  pulumi.String("Month"),
/// 			Password:                    pulumi.String("jingyiTEST@123"),
/// 			SystemDisk: &rds.CustomSystemDiskArgs{
/// 				Size:     pulumi.String("40"),
/// 				Category: pulumi.String("cloud_essd"),
/// 			},
/// 			HostName:        pulumi.String("1743386110"),
/// 			CreateMode:      pulumi.String("0"),
/// 			SpotStrategy:    pulumi.String("NoSpot"),
/// 			VswitchId:       vSwitchId.ID(),
/// 			SupportCase:     pulumi.String("eni"),
/// 			DeploymentSetId: pulumi.String(deploymentsetid),
/// 			DryRun:          pulumi.Bool(false),
/// 		})
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
/// import com.pulumi.alicloud.resourcemanager.ResourcemanagerFunctions;
/// import com.pulumi.alicloud.resourcemanager.inputs.GetResourceGroupsArgs;
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.ecs.SecurityGroup;
/// import com.pulumi.alicloud.ecs.SecurityGroupArgs;
/// import com.pulumi.alicloud.ecs.EcsDeploymentSet;
/// import com.pulumi.alicloud.ecs.EcsKeyPair;
/// import com.pulumi.alicloud.ecs.EcsKeyPairArgs;
/// import com.pulumi.alicloud.rds.Custom;
/// import com.pulumi.alicloud.rds.CustomArgs;
/// import com.pulumi.alicloud.rds.inputs.CustomDataDiskArgs;
/// import com.pulumi.alicloud.rds.inputs.CustomSystemDiskArgs;
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
///         final var config = ctx.config();
///         final var name = config.get("name").orElse("terraform-example");
///         final var clusterId = config.get("clusterId").orElse("c18c40b2b336840e2b2bbf8ab291758e2");
///         final var deploymentsetid = config.get("deploymentsetid").orElse("ds-2ze78ef5kyj9eveue92m");
///         final var vswtich_id = config.get("vswtich-id").orElse("example_vswitch");
///         final var vpcName = config.get("vpcName").orElse("beijing111");
///         final var exampleRegionId = config.get("exampleRegionId").orElse("cn-beijing");
///         final var description = config.get("description").orElse("ran_1-08_rccreatenodepool_api");
///         final var exampleZoneId = config.get("exampleZoneId").orElse("cn-beijing-h");
///         final var securitygroupName = config.get("securitygroupName").orElse("rds_custom_init_sg_cn_beijing");
///         final var default = ResourcemanagerFunctions.getResourceGroups(GetResourceGroupsArgs.builder()
///             .build());
///
///         var vpcId = new Network("vpcId", NetworkArgs.builder()
///             .vpcName(vpcName)
///             .build());
///
///         var vSwitchId = new Switch("vSwitchId", SwitchArgs.builder()
///             .vpcId(vpcId.id())
///             .zoneId(exampleZoneId)
///             .vswitchName(vswtich_id)
///             .cidrBlock("172.16.5.0/24")
///             .build());
///
///         var securityGroupId = new SecurityGroup("securityGroupId", SecurityGroupArgs.builder()
///             .vpcId(vpcId.id())
///             .securityGroupName(securitygroupName)
///             .build());
///
///         var deploymentSet = new EcsDeploymentSet("deploymentSet");
///
///         var keyPairName = new EcsKeyPair("keyPairName", EcsKeyPairArgs.builder()
///             .keyPairName(vSwitchId.id())
///             .build());
///
///         var defaultCustom = new Custom("defaultCustom", CustomArgs.builder()
///             .amount(1)
///             .autoRenew(false)
///             .period(1)
///             .autoPay(true)
///             .instanceType("mysql.x2.xlarge.6cm")
///             .dataDisks(CustomDataDiskArgs.builder()
///                 .category("cloud_essd")
///                 .size(50)
///                 .performanceLevel("PL1")
///                 .build())
///             .status("Running")
///             .securityGroupIds(securityGroupId.id())
///             .ioOptimized("optimized")
///             .description(description)
///             .keyPairName(keyPairName.id())
///             .zoneId(exampleZoneId)
///             .instanceChargeType("Prepaid")
///             .internetMaxBandwidthOut(0)
///             .imageId("aliyun_2_1903_x64_20G_alibase_20240628.vhd")
///             .securityEnhancementStrategy("Active")
///             .periodUnit("Month")
///             .password("jingyiTEST@123")
///             .systemDisk(CustomSystemDiskArgs.builder()
///                 .size("40")
///                 .category("cloud_essd")
///                 .build())
///             .hostName("1743386110")
///             .createMode("0")
///             .spotStrategy("NoSpot")
///             .vswitchId(vSwitchId.id())
///             .supportCase("eni")
///             .deploymentSetId(deploymentsetid)
///             .dryRun(false)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: terraform-example
///   clusterId:
///     type: string
///     default: c18c40b2b336840e2b2bbf8ab291758e2
///   deploymentsetid:
///     type: string
///     default: ds-2ze78ef5kyj9eveue92m
///   vswtich-id:
///     type: string
///     default: example_vswitch
///   vpcName:
///     type: string
///     default: beijing111
///   exampleRegionId:
///     type: string
///     default: cn-beijing
///   description:
///     type: string
///     default: ran_1-08_rccreatenodepool_api
///   exampleZoneId:
///     type: string
///     default: cn-beijing-h
///   securitygroupName:
///     type: string
///     default: rds_custom_init_sg_cn_beijing
/// resources:
///   vpcId:
///     type: alicloud:vpc:Network
///     properties:
///       vpcName: ${vpcName}
///   vSwitchId:
///     type: alicloud:vpc:Switch
///     properties:
///       vpcId: ${vpcId.id}
///       zoneId: ${exampleZoneId}
///       vswitchName: ${["vswtich-id"]}
///       cidrBlock: 172.16.5.0/24
///   securityGroupId:
///     type: alicloud:ecs:SecurityGroup
///     properties:
///       vpcId: ${vpcId.id}
///       securityGroupName: ${securitygroupName}
///   deploymentSet:
///     type: alicloud:ecs:EcsDeploymentSet
///   keyPairName:
///     type: alicloud:ecs:EcsKeyPair
///     name: KeyPairName
///     properties:
///       keyPairName: ${vSwitchId.id}
///   defaultCustom:
///     type: alicloud:rds:Custom
///     name: default
///     properties:
///       amount: '1'
///       autoRenew: false
///       period: '1'
///       autoPay: true
///       instanceType: mysql.x2.xlarge.6cm
///       dataDisks:
///         - category: cloud_essd
///           size: '50'
///           performanceLevel: PL1
///       status: Running
///       securityGroupIds:
///         - ${securityGroupId.id}
///       ioOptimized: optimized
///       description: ${description}
///       keyPairName: ${keyPairName.id}
///       zoneId: ${exampleZoneId}
///       instanceChargeType: Prepaid
///       internetMaxBandwidthOut: '0'
///       imageId: aliyun_2_1903_x64_20G_alibase_20240628.vhd
///       securityEnhancementStrategy: Active
///       periodUnit: Month
///       password: jingyiTEST@123
///       systemDisk:
///         size: '40'
///         category: cloud_essd
///       hostName: '1743386110'
///       createMode: '0'
///       spotStrategy: NoSpot
///       vswitchId: ${vSwitchId.id}
///       supportCase: eni
///       deploymentSetId: ${deploymentsetid}
///       dryRun: false
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:resourcemanager:getResourceGroups
///       arguments: {}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// RDS Custom can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:rds/custom:Custom example <id>
/// ```
class Custom extends pulumi.CustomResource {
  /// Represents the number of instances created
  late final pulumi.Output<int?> amount;

  /// Whether to pay automatically. Value range:
  late final pulumi.Output<bool?> autoPay;

  /// Whether the instance is automatically renewed. Valid values: true/false. The default is false.
  late final pulumi.Output<bool?> autoRenew;

  /// Reserved parameters are not supported.
  late final pulumi.Output<String?> createExtraParam;

  /// Whether to allow joining the ACK cluster. When this parameter is set to `1`, the created instance can be added to the ACK cluster through The `AttachRCInstances` API to efficiently manage container applications.
  late final pulumi.Output<String?> createMode;

  /// Data disk See `data_disk` below.
  late final pulumi.Output<List<Map<String, dynamic>>?> dataDisks;

  /// The ID of the deployment set.
  late final pulumi.Output<String?> deploymentSetId;

  /// Instance description. It must be 2 to 256 characters in length and cannot start with http:// or https.
  late final pulumi.Output<String?> description;

  /// Instance configuration type, value range:
  ///
  /// &gt; **NOTE:**  This parameter does not need to be uploaded, and the system can automatically determine whether to upgrade or downgrade. If you want to upload, please follow the following logic rules.
  /// - `Up` (default): upgrade the instance specification. Please ensure that your account balance is sufficient.
  /// - `Down`: Downgrade instance specifications. When the instance type set to InstanceType is lower than the current instance type, set Direction = down.
  late final pulumi.Output<String?> direction;

  /// Whether to pre-check the operation of creating an instance. Valid values:
  late final pulumi.Output<bool?> dryRun;

  /// Whether to forcibly release the running instance. Value: true/false
  late final pulumi.Output<bool?> force;

  /// Whether to force shutdown. Value range:
  late final pulumi.Output<bool?> forceStop;

  /// The instance host name.
  late final pulumi.Output<String?> hostName;

  /// The ID of the image used by the instance.
  late final pulumi.Output<String?> imageId;

  /// The Payment type. Currently, only `Prepaid` (package year and month) types are supported.
  late final pulumi.Output<String?> instanceChargeType;

  /// The type of the created RDS Custom dedicated host instance.
  late final pulumi.Output<String> instanceType;

  /// Reserved parameters are not supported.
  late final pulumi.Output<String?> internetChargeType;

  /// Reserved parameters are not supported.
  late final pulumi.Output<int?> internetMaxBandwidthOut;

  /// Reserved parameters are not supported.
  late final pulumi.Output<String?> ioOptimized;

  /// The key pair name. Only flyer names are supported.
  late final pulumi.Output<String?> keyPairName;

  /// The account and password of the instance.
  late final pulumi.Output<String?> password;

  /// Prepaid renewal duration, unit: Month/Year.
  late final pulumi.Output<int?> period;

  /// The unit of duration of the year-to-month billing method. Value range:
  /// - `Year`: Year
  /// - `Month` (default): Month
  late final pulumi.Output<String?> periodUnit;

  /// The region ID. Callable DescribeRegions to get.
  late final pulumi.Output<String> regionId;

  /// The ID of the resource group
  late final pulumi.Output<String> resourceGroupId;

  /// Reserved parameters are not supported.
  late final pulumi.Output<String?> securityEnhancementStrategy;

  /// Security group list
  late final pulumi.Output<List<String>?> securityGroupIds;

  /// The bidding strategy for pay-as-you-go instances. This parameter takes effect when the value of `InstanceChargeType` is set to **PostPaid. Value range:
  /// - `NoSpot`: normal pay-as-you-go instances.
  /// - `SpotAsPriceGo`: The system automatically bids and follows the actual price in the current market.
  ///
  /// Default value: **NoSpot * *.
  late final pulumi.Output<String?> spotStrategy;

  /// The status of the resource
  late final pulumi.Output<String> status;

  /// Supported scenarios: createMode:supportCase, for example: NATIVE("0", "eni"),RCK("1", "rck"),ACK_EDGE("1", "edge");
  late final pulumi.Output<String?> supportCase;

  /// System disk specifications. See `system_disk` below.
  late final pulumi.Output<CustomSystemDisk?> systemDisk;

  /// The tag of the resource
  late final pulumi.Output<Map<String, String>?> tags;

  /// The ID of the virtual switch. The zone in which the vSwitch is located must correspond to the zone ID entered in ZoneId.
  /// The network type InstanceNetworkType must be VPC.
  late final pulumi.Output<String> vswitchId;

  /// The zone ID  of the resource
  late final pulumi.Output<String?> zoneId;

  /// Creates a new [Custom].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Custom]. {@macro pulumi_rds_custom_custom_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Custom(String name, {CustomArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'alicloud:rds/custom:Custom',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    amount = registerOutput<int?>('amount');
    autoPay = registerOutput<bool?>('autoPay');
    autoRenew = registerOutput<bool?>('autoRenew');
    createExtraParam = registerOutput<String?>('createExtraParam');
    createMode = registerOutput<String?>('createMode');
    dataDisks = registerOutput<List<Map<String, dynamic>>?>('dataDisks');
    deploymentSetId = registerOutput<String?>('deploymentSetId');
    description = registerOutput<String?>('description');
    direction = registerOutput<String?>('direction');
    dryRun = registerOutput<bool?>('dryRun');
    force = registerOutput<bool?>('force');
    forceStop = registerOutput<bool?>('forceStop');
    hostName = registerOutput<String?>('hostName');
    imageId = registerOutput<String?>('imageId');
    instanceChargeType = registerOutput<String?>('instanceChargeType');
    instanceType = registerOutput<String>('instanceType');
    internetChargeType = registerOutput<String?>('internetChargeType');
    internetMaxBandwidthOut = registerOutput<int?>('internetMaxBandwidthOut');
    ioOptimized = registerOutput<String?>('ioOptimized');
    keyPairName = registerOutput<String?>('keyPairName');
    password = registerOutput<String?>('password');
    period = registerOutput<int?>('period');
    periodUnit = registerOutput<String?>('periodUnit');
    regionId = registerOutput<String>('regionId');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    securityEnhancementStrategy = registerOutput<String?>(
      'securityEnhancementStrategy',
    );
    securityGroupIds = registerOutput<List<String>?>('securityGroupIds');
    spotStrategy = registerOutput<String?>('spotStrategy');
    status = registerOutput<String>('status');
    supportCase = registerOutput<String?>('supportCase');
    systemDisk = registerOutput<CustomSystemDisk?>(
      'systemDisk',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return CustomSystemDisk.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    tags = registerOutput<Map<String, String>?>('tags');
    vswitchId = registerOutput<String>('vswitchId');
    zoneId = registerOutput<String?>('zoneId');
  }

  /// Gets an existing [Custom] resource's state with the given [name] and [id].
  static Custom get(
    String name,
    pulumi.Input<String> id, {
    CustomState? state,
  }) {
    return Custom._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Custom._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:rds/custom:Custom',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    amount = registerOutput<int?>('amount');
    autoPay = registerOutput<bool?>('autoPay');
    autoRenew = registerOutput<bool?>('autoRenew');
    createExtraParam = registerOutput<String?>('createExtraParam');
    createMode = registerOutput<String?>('createMode');
    dataDisks = registerOutput<List<Map<String, dynamic>>?>('dataDisks');
    deploymentSetId = registerOutput<String?>('deploymentSetId');
    description = registerOutput<String?>('description');
    direction = registerOutput<String?>('direction');
    dryRun = registerOutput<bool?>('dryRun');
    force = registerOutput<bool?>('force');
    forceStop = registerOutput<bool?>('forceStop');
    hostName = registerOutput<String?>('hostName');
    imageId = registerOutput<String?>('imageId');
    instanceChargeType = registerOutput<String?>('instanceChargeType');
    instanceType = registerOutput<String>('instanceType');
    internetChargeType = registerOutput<String?>('internetChargeType');
    internetMaxBandwidthOut = registerOutput<int?>('internetMaxBandwidthOut');
    ioOptimized = registerOutput<String?>('ioOptimized');
    keyPairName = registerOutput<String?>('keyPairName');
    password = registerOutput<String?>('password');
    period = registerOutput<int?>('period');
    periodUnit = registerOutput<String?>('periodUnit');
    regionId = registerOutput<String>('regionId');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    securityEnhancementStrategy = registerOutput<String?>(
      'securityEnhancementStrategy',
    );
    securityGroupIds = registerOutput<List<String>?>('securityGroupIds');
    spotStrategy = registerOutput<String?>('spotStrategy');
    status = registerOutput<String>('status');
    supportCase = registerOutput<String?>('supportCase');
    systemDisk = registerOutput<CustomSystemDisk?>(
      'systemDisk',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return CustomSystemDisk.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    tags = registerOutput<Map<String, String>?>('tags');
    vswitchId = registerOutput<String>('vswitchId');
    zoneId = registerOutput<String?>('zoneId');
  }
}
