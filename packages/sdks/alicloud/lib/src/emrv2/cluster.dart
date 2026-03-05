import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_args.dart';
import 'cluster_state.dart';
import 'cluster_subscription_config.dart';

/// Provides a EMR cluster resource. This resource is based on EMR's new version OpenAPI.
///
/// For information about EMR New and how to use it, see [Add a domain](https://www.alibabacloud.com/help/doc-detail/28068.htm).
///
/// &gt; **NOTE:** Available since v1.199.0.
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
/// import * as random from "@pulumi/random";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "tf-example";
/// const _default = alicloud.resourcemanager.getResourceGroups({
///     status: "OK",
/// });
/// const defaultGetKeys = alicloud.kms.getKeys({
///     status: "Enabled",
/// });
/// const defaultGetZones = alicloud.getZones({
///     availableInstanceType: "ecs.g7.xlarge",
/// });
/// const defaultNetwork = new alicloud.vpc.Network("default", {
///     vpcName: name,
///     cidrBlock: "172.16.0.0/12",
/// });
/// const defaultSwitch = new alicloud.vpc.Switch("default", {
///     vpcId: defaultNetwork.id,
///     cidrBlock: "172.16.0.0/21",
///     zoneId: defaultGetZones.then(defaultGetZones => defaultGetZones.zones?.[0]?.id),
///     vswitchName: name,
/// });
/// const defaultInteger = new random.index.Integer("default", {
///     max: 99999,
///     min: 10000,
/// });
/// const defaultEcsKeyPair = new alicloud.ecs.EcsKeyPair("default", {keyPairName: `${name}-${defaultInteger.result}`});
/// const defaultSecurityGroup = new alicloud.ecs.SecurityGroup("default", {
///     name: name,
///     vpcId: defaultNetwork.id,
/// });
/// const defaultRole = new alicloud.ram.Role("default", {
///     name: name,
///     document: `    {
///         \\"Statement\\": [
///         {
///             \\"Action\\": \\"sts:AssumeRole\\",
///             \\"Effect\\": \\"Allow\\",
///             \\"Principal\\": {
///             \\"Service\\": [
///                 \\"emr.aliyuncs.com\\",
///                 \\"ecs.aliyuncs.com\\"
///             ]
///             }
///         }
///         ],
///         \\"Version\\": \\"1\\"
///     }
/// `,
///     description: "this is a role example.",
///     force: true,
/// });
/// const defaultCluster = new alicloud.emrv2.Cluster("default", {
///     nodeGroups: [
///         {
///             vswitchIds: [defaultSwitch.id],
///             instanceTypes: ["ecs.g7.xlarge"],
///             nodeCount: 1,
///             spotInstanceRemedy: false,
///             dataDisks: [{
///                 count: 3,
///                 category: "cloud_essd",
///                 size: 80,
///                 performanceLevel: "PL0",
///             }],
///             nodeGroupName: "emr-master",
///             paymentType: "PayAsYouGo",
///             withPublicIp: false,
///             gracefulShutdown: false,
///             systemDisk: {
///                 category: "cloud_essd",
///                 size: 80,
///                 performanceLevel: "PL0",
///                 count: 1,
///             },
///             nodeGroupType: "MASTER",
///         },
///         {
///             spotInstanceRemedy: false,
///             nodeGroupType: "CORE",
///             vswitchIds: [defaultSwitch.id],
///             nodeCount: 2,
///             gracefulShutdown: false,
///             systemDisk: {
///                 performanceLevel: "PL0",
///                 count: 1,
///                 category: "cloud_essd",
///                 size: 80,
///             },
///             dataDisks: [{
///                 count: 3,
///                 performanceLevel: "PL0",
///                 category: "cloud_essd",
///                 size: 80,
///             }],
///             nodeGroupName: "emr-core",
///             paymentType: "PayAsYouGo",
///             instanceTypes: ["ecs.g7.xlarge"],
///             withPublicIp: false,
///         },
///     ],
///     deployMode: "NORMAL",
///     tags: {
///         Created: "TF",
///         For: "example",
///     },
///     releaseVersion: "EMR-5.10.0",
///     applications: [
///         "HADOOP-COMMON",
///         "HDFS",
///         "YARN",
///     ],
///     nodeAttributes: [{
///         zoneId: defaultGetZones.then(defaultGetZones => defaultGetZones.zones?.[0]?.id),
///         keyPairName: defaultEcsKeyPair.id,
///         dataDiskEncrypted: true,
///         dataDiskKmsKeyId: defaultGetKeys.then(defaultGetKeys => defaultGetKeys.ids?.[0]),
///         vpcId: defaultNetwork.id,
///         ramRole: defaultRole.name,
///         securityGroupId: defaultSecurityGroup.id,
///     }],
///     resourceGroupId: _default.then(_default => _default.ids?.[0]),
///     clusterName: name,
///     paymentType: "PayAsYouGo",
///     clusterType: "DATAFLOW",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_random as random
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "tf-example"
/// default = alicloud.resourcemanager.get_resource_groups(status="OK")
/// default_get_keys = alicloud.kms.get_keys(status="Enabled")
/// default_get_zones = alicloud.get_zones(available_instance_type="ecs.g7.xlarge")
/// default_network = alicloud.vpc.Network("default",
///     vpc_name=name,
///     cidr_block="172.16.0.0/12")
/// default_switch = alicloud.vpc.Switch("default",
///     vpc_id=default_network.id,
///     cidr_block="172.16.0.0/21",
///     zone_id=default_get_zones.zones[0].id,
///     vswitch_name=name)
/// default_integer = random.index.Integer("default",
///     max=99999,
///     min=10000)
/// default_ecs_key_pair = alicloud.ecs.EcsKeyPair("default", key_pair_name=f"{name}-{default_integer['result']}")
/// default_security_group = alicloud.ecs.SecurityGroup("default",
///     name=name,
///     vpc_id=default_network.id)
/// default_role = alicloud.ram.Role("default",
///     name=name,
///     document="""    {
///         \"Statement\": [
///         {
///             \"Action\": \"sts:AssumeRole\",
///             \"Effect\": \"Allow\",
///             \"Principal\": {
///             \"Service\": [
///                 \"emr.aliyuncs.com\",
///                 \"ecs.aliyuncs.com\"
///             ]
///             }
///         }
///         ],
///         \"Version\": \"1\"
///     }
/// """,
///     description="this is a role example.",
///     force=True)
/// default_cluster = alicloud.emrv2.Cluster("default",
///     node_groups=[
///         {
///             "vswitch_ids": [default_switch.id],
///             "instance_types": ["ecs.g7.xlarge"],
///             "node_count": 1,
///             "spot_instance_remedy": False,
///             "data_disks": [{
///                 "count": 3,
///                 "category": "cloud_essd",
///                 "size": 80,
///                 "performance_level": "PL0",
///             }],
///             "node_group_name": "emr-master",
///             "payment_type": "PayAsYouGo",
///             "with_public_ip": False,
///             "graceful_shutdown": False,
///             "system_disk": {
///                 "category": "cloud_essd",
///                 "size": 80,
///                 "performance_level": "PL0",
///                 "count": 1,
///             },
///             "node_group_type": "MASTER",
///         },
///         {
///             "spot_instance_remedy": False,
///             "node_group_type": "CORE",
///             "vswitch_ids": [default_switch.id],
///             "node_count": 2,
///             "graceful_shutdown": False,
///             "system_disk": {
///                 "performance_level": "PL0",
///                 "count": 1,
///                 "category": "cloud_essd",
///                 "size": 80,
///             },
///             "data_disks": [{
///                 "count": 3,
///                 "performance_level": "PL0",
///                 "category": "cloud_essd",
///                 "size": 80,
///             }],
///             "node_group_name": "emr-core",
///             "payment_type": "PayAsYouGo",
///             "instance_types": ["ecs.g7.xlarge"],
///             "with_public_ip": False,
///         },
///     ],
///     deploy_mode="NORMAL",
///     tags={
///         "Created": "TF",
///         "For": "example",
///     },
///     release_version="EMR-5.10.0",
///     applications=[
///         "HADOOP-COMMON",
///         "HDFS",
///         "YARN",
///     ],
///     node_attributes=[{
///         "zone_id": default_get_zones.zones[0].id,
///         "key_pair_name": default_ecs_key_pair.id,
///         "data_disk_encrypted": True,
///         "data_disk_kms_key_id": default_get_keys.ids[0],
///         "vpc_id": default_network.id,
///         "ram_role": default_role.name,
///         "security_group_id": default_security_group.id,
///     }],
///     resource_group_id=default.ids[0],
///     cluster_name=name,
///     payment_type="PayAsYouGo",
///     cluster_type="DATAFLOW")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
/// using Random = Pulumi.Random;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "tf-example";
///     var @default = AliCloud.ResourceManager.GetResourceGroups.Invoke(new()
///     {
///         Status = "OK",
///     });
///
///     var defaultGetKeys = AliCloud.Kms.GetKeys.Invoke(new()
///     {
///         Status = "Enabled",
///     });
///
///     var defaultGetZones = AliCloud.GetZones.Invoke(new()
///     {
///         AvailableInstanceType = "ecs.g7.xlarge",
///     });
///
///     var defaultNetwork = new AliCloud.Vpc.Network("default", new()
///     {
///         VpcName = name,
///         CidrBlock = "172.16.0.0/12",
///     });
///
///     var defaultSwitch = new AliCloud.Vpc.Switch("default", new()
///     {
///         VpcId = defaultNetwork.Id,
///         CidrBlock = "172.16.0.0/21",
///         ZoneId = defaultGetZones.Apply(getZonesResult => getZonesResult.Zones[0]?.Id),
///         VswitchName = name,
///     });
///
///     var defaultInteger = new Random.Index.Integer("default", new()
///     {
///         Max = 99999,
///         Min = 10000,
///     });
///
///     var defaultEcsKeyPair = new AliCloud.Ecs.EcsKeyPair("default", new()
///     {
///         KeyPairName = $"{name}-{defaultInteger.Result}",
///     });
///
///     var defaultSecurityGroup = new AliCloud.Ecs.SecurityGroup("default", new()
///     {
///         Name = name,
///         VpcId = defaultNetwork.Id,
///     });
///
///     var defaultRole = new AliCloud.Ram.Role("default", new()
///     {
///         Name = name,
///         Document = @"    {
///         \""Statement\"": [
///         {
///             \""Action\"": \""sts:AssumeRole\"",
///             \""Effect\"": \""Allow\"",
///             \""Principal\"": {
///             \""Service\"": [
///                 \""emr.aliyuncs.com\"",
///                 \""ecs.aliyuncs.com\""
///             ]
///             }
///         }
///         ],
///         \""Version\"": \""1\""
///     }
/// ",
///         Description = "this is a role example.",
///         Force = true,
///     });
///
///     var defaultCluster = new AliCloud.Emrv2.Cluster("default", new()
///     {
///         NodeGroups = new[]
///         {
///             new AliCloud.Emrv2.Inputs.ClusterNodeGroupArgs
///             {
///                 VswitchIds = new[]
///                 {
///                     defaultSwitch.Id,
///                 },
///                 InstanceTypes = new[]
///                 {
///                     "ecs.g7.xlarge",
///                 },
///                 NodeCount = 1,
///                 SpotInstanceRemedy = false,
///                 DataDisks = new[]
///                 {
///                     new AliCloud.Emrv2.Inputs.ClusterNodeGroupDataDiskArgs
///                     {
///                         Count = 3,
///                         Category = "cloud_essd",
///                         Size = 80,
///                         PerformanceLevel = "PL0",
///                     },
///                 },
///                 NodeGroupName = "emr-master",
///                 PaymentType = "PayAsYouGo",
///                 WithPublicIp = false,
///                 GracefulShutdown = false,
///                 SystemDisk = new AliCloud.Emrv2.Inputs.ClusterNodeGroupSystemDiskArgs
///                 {
///                     Category = "cloud_essd",
///                     Size = 80,
///                     PerformanceLevel = "PL0",
///                     Count = 1,
///                 },
///                 NodeGroupType = "MASTER",
///             },
///             new AliCloud.Emrv2.Inputs.ClusterNodeGroupArgs
///             {
///                 SpotInstanceRemedy = false,
///                 NodeGroupType = "CORE",
///                 VswitchIds = new[]
///                 {
///                     defaultSwitch.Id,
///                 },
///                 NodeCount = 2,
///                 GracefulShutdown = false,
///                 SystemDisk = new AliCloud.Emrv2.Inputs.ClusterNodeGroupSystemDiskArgs
///                 {
///                     PerformanceLevel = "PL0",
///                     Count = 1,
///                     Category = "cloud_essd",
///                     Size = 80,
///                 },
///                 DataDisks = new[]
///                 {
///                     new AliCloud.Emrv2.Inputs.ClusterNodeGroupDataDiskArgs
///                     {
///                         Count = 3,
///                         PerformanceLevel = "PL0",
///                         Category = "cloud_essd",
///                         Size = 80,
///                     },
///                 },
///                 NodeGroupName = "emr-core",
///                 PaymentType = "PayAsYouGo",
///                 InstanceTypes = new[]
///                 {
///                     "ecs.g7.xlarge",
///                 },
///                 WithPublicIp = false,
///             },
///         },
///         DeployMode = "NORMAL",
///         Tags =
///         {
///             { "Created", "TF" },
///             { "For", "example" },
///         },
///         ReleaseVersion = "EMR-5.10.0",
///         Applications = new[]
///         {
///             "HADOOP-COMMON",
///             "HDFS",
///             "YARN",
///         },
///         NodeAttributes = new[]
///         {
///             new AliCloud.Emrv2.Inputs.ClusterNodeAttributeArgs
///             {
///                 ZoneId = defaultGetZones.Apply(getZonesResult => getZonesResult.Zones[0]?.Id),
///                 KeyPairName = defaultEcsKeyPair.Id,
///                 DataDiskEncrypted = true,
///                 DataDiskKmsKeyId = defaultGetKeys.Apply(getKeysResult => getKeysResult.Ids[0]),
///                 VpcId = defaultNetwork.Id,
///                 RamRole = defaultRole.Name,
///                 SecurityGroupId = defaultSecurityGroup.Id,
///             },
///         },
///         ResourceGroupId = @default.Apply(@default => @default.Apply(getResourceGroupsResult => getResourceGroupsResult.Ids[0])),
///         ClusterName = name,
///         PaymentType = "PayAsYouGo",
///         ClusterType = "DATAFLOW",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ecs"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/emrv2"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/kms"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ram"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/resourcemanager"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "tf-example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_default, err := resourcemanager.GetResourceGroups(ctx, &resourcemanager.GetResourceGroupsArgs{
/// 			Status: pulumi.StringRef("OK"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetKeys, err := kms.GetKeys(ctx, &kms.GetKeysArgs{
/// 			Status: pulumi.StringRef("Enabled"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetZones, err := alicloud.GetZones(ctx, &alicloud.GetZonesArgs{
/// 			AvailableInstanceType: pulumi.StringRef("ecs.g7.xlarge"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultNetwork, err := vpc.NewNetwork(ctx, "default", &vpc.NetworkArgs{
/// 			VpcName:   pulumi.String(name),
/// 			CidrBlock: pulumi.String("172.16.0.0/12"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSwitch, err := vpc.NewSwitch(ctx, "default", &vpc.SwitchArgs{
/// 			VpcId:       defaultNetwork.ID(),
/// 			CidrBlock:   pulumi.String("172.16.0.0/21"),
/// 			ZoneId:      pulumi.String(defaultGetZones.Zones[0].Id),
/// 			VswitchName: pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultInteger, err := random.NewInteger(ctx, "default", &random.IntegerArgs{
/// 			Max: 99999,
/// 			Min: 10000,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultEcsKeyPair, err := ecs.NewEcsKeyPair(ctx, "default", &ecs.EcsKeyPairArgs{
/// 			KeyPairName: pulumi.Sprintf("%v-%v", name, defaultInteger.Result),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSecurityGroup, err := ecs.NewSecurityGroup(ctx, "default", &ecs.SecurityGroupArgs{
/// 			Name:  pulumi.String(name),
/// 			VpcId: defaultNetwork.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultRole, err := ram.NewRole(ctx, "default", &ram.RoleArgs{
/// 			Name: pulumi.String(name),
/// 			Document: pulumi.String(`    {
///         \"Statement\": [
///         {
///             \"Action\": \"sts:AssumeRole\",
///             \"Effect\": \"Allow\",
///             \"Principal\": {
///             \"Service\": [
///                 \"emr.aliyuncs.com\",
///                 \"ecs.aliyuncs.com\"
///             ]
///             }
///         }
///         ],
///         \"Version\": \"1\"
///     }
/// `),
/// 			Description: pulumi.String("this is a role example."),
/// 			Force:       pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = emrv2.NewCluster(ctx, "default", &emrv2.ClusterArgs{
/// 			NodeGroups: emrv2.ClusterNodeGroupArray{
/// 				&emrv2.ClusterNodeGroupArgs{
/// 					VswitchIds: pulumi.StringArray{
/// 						defaultSwitch.ID(),
/// 					},
/// 					InstanceTypes: pulumi.StringArray{
/// 						pulumi.String("ecs.g7.xlarge"),
/// 					},
/// 					NodeCount:          pulumi.Int(1),
/// 					SpotInstanceRemedy: pulumi.Bool(false),
/// 					DataDisks: emrv2.ClusterNodeGroupDataDiskArray{
/// 						&emrv2.ClusterNodeGroupDataDiskArgs{
/// 							Count:            pulumi.Int(3),
/// 							Category:         pulumi.String("cloud_essd"),
/// 							Size:             pulumi.Int(80),
/// 							PerformanceLevel: pulumi.String("PL0"),
/// 						},
/// 					},
/// 					NodeGroupName:    pulumi.String("emr-master"),
/// 					PaymentType:      pulumi.String("PayAsYouGo"),
/// 					WithPublicIp:     pulumi.Bool(false),
/// 					GracefulShutdown: pulumi.Bool(false),
/// 					SystemDisk: &emrv2.ClusterNodeGroupSystemDiskArgs{
/// 						Category:         pulumi.String("cloud_essd"),
/// 						Size:             pulumi.Int(80),
/// 						PerformanceLevel: pulumi.String("PL0"),
/// 						Count:            pulumi.Int(1),
/// 					},
/// 					NodeGroupType: pulumi.String("MASTER"),
/// 				},
/// 				&emrv2.ClusterNodeGroupArgs{
/// 					SpotInstanceRemedy: pulumi.Bool(false),
/// 					NodeGroupType:      pulumi.String("CORE"),
/// 					VswitchIds: pulumi.StringArray{
/// 						defaultSwitch.ID(),
/// 					},
/// 					NodeCount:        pulumi.Int(2),
/// 					GracefulShutdown: pulumi.Bool(false),
/// 					SystemDisk: &emrv2.ClusterNodeGroupSystemDiskArgs{
/// 						PerformanceLevel: pulumi.String("PL0"),
/// 						Count:            pulumi.Int(1),
/// 						Category:         pulumi.String("cloud_essd"),
/// 						Size:             pulumi.Int(80),
/// 					},
/// 					DataDisks: emrv2.ClusterNodeGroupDataDiskArray{
/// 						&emrv2.ClusterNodeGroupDataDiskArgs{
/// 							Count:            pulumi.Int(3),
/// 							PerformanceLevel: pulumi.String("PL0"),
/// 							Category:         pulumi.String("cloud_essd"),
/// 							Size:             pulumi.Int(80),
/// 						},
/// 					},
/// 					NodeGroupName: pulumi.String("emr-core"),
/// 					PaymentType:   pulumi.String("PayAsYouGo"),
/// 					InstanceTypes: pulumi.StringArray{
/// 						pulumi.String("ecs.g7.xlarge"),
/// 					},
/// 					WithPublicIp: pulumi.Bool(false),
/// 				},
/// 			},
/// 			DeployMode: pulumi.String("NORMAL"),
/// 			Tags: pulumi.StringMap{
/// 				"Created": pulumi.String("TF"),
/// 				"For":     pulumi.String("example"),
/// 			},
/// 			ReleaseVersion: pulumi.String("EMR-5.10.0"),
/// 			Applications: pulumi.StringArray{
/// 				pulumi.String("HADOOP-COMMON"),
/// 				pulumi.String("HDFS"),
/// 				pulumi.String("YARN"),
/// 			},
/// 			NodeAttributes: emrv2.ClusterNodeAttributeArray{
/// 				&emrv2.ClusterNodeAttributeArgs{
/// 					ZoneId:            pulumi.String(defaultGetZones.Zones[0].Id),
/// 					KeyPairName:       defaultEcsKeyPair.ID(),
/// 					DataDiskEncrypted: pulumi.Bool(true),
/// 					DataDiskKmsKeyId:  pulumi.String(defaultGetKeys.Ids[0]),
/// 					VpcId:             defaultNetwork.ID(),
/// 					RamRole:           defaultRole.Name,
/// 					SecurityGroupId:   defaultSecurityGroup.ID(),
/// 				},
/// 			},
/// 			ResourceGroupId: pulumi.String(_default.Ids[0]),
/// 			ClusterName:     pulumi.String(name),
/// 			PaymentType:     pulumi.String("PayAsYouGo"),
/// 			ClusterType:     pulumi.String("DATAFLOW"),
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
/// import com.pulumi.alicloud.kms.KmsFunctions;
/// import com.pulumi.alicloud.kms.inputs.GetKeysArgs;
/// import com.pulumi.alicloud.AlicloudFunctions;
/// import com.pulumi.alicloud.inputs.GetZonesArgs;
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.random.Integer;
/// import com.pulumi.random.IntegerArgs;
/// import com.pulumi.alicloud.ecs.EcsKeyPair;
/// import com.pulumi.alicloud.ecs.EcsKeyPairArgs;
/// import com.pulumi.alicloud.ecs.SecurityGroup;
/// import com.pulumi.alicloud.ecs.SecurityGroupArgs;
/// import com.pulumi.alicloud.ram.Role;
/// import com.pulumi.alicloud.ram.RoleArgs;
/// import com.pulumi.alicloud.emrv2.Cluster;
/// import com.pulumi.alicloud.emrv2.ClusterArgs;
/// import com.pulumi.alicloud.emrv2.inputs.ClusterNodeGroupArgs;
/// import com.pulumi.alicloud.emrv2.inputs.ClusterNodeGroupSystemDiskArgs;
/// import com.pulumi.alicloud.emrv2.inputs.ClusterNodeAttributeArgs;
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
///         final var name = config.get("name").orElse("tf-example");
///         final var default = ResourcemanagerFunctions.getResourceGroups(GetResourceGroupsArgs.builder()
///             .status("OK")
///             .build());
///
///         final var defaultGetKeys = KmsFunctions.getKeys(GetKeysArgs.builder()
///             .status("Enabled")
///             .build());
///
///         final var defaultGetZones = AlicloudFunctions.getZones(GetZonesArgs.builder()
///             .availableInstanceType("ecs.g7.xlarge")
///             .build());
///
///         var defaultNetwork = new Network("defaultNetwork", NetworkArgs.builder()
///             .vpcName(name)
///             .cidrBlock("172.16.0.0/12")
///             .build());
///
///         var defaultSwitch = new Switch("defaultSwitch", SwitchArgs.builder()
///             .vpcId(defaultNetwork.id())
///             .cidrBlock("172.16.0.0/21")
///             .zoneId(defaultGetZones.zones()[0].id())
///             .vswitchName(name)
///             .build());
///
///         var defaultInteger = new Integer("defaultInteger", IntegerArgs.builder()
///             .max(99999)
///             .min(10000)
///             .build());
///
///         var defaultEcsKeyPair = new EcsKeyPair("defaultEcsKeyPair", EcsKeyPairArgs.builder()
///             .keyPairName(String.format("%s-%s", name,defaultInteger.result()))
///             .build());
///
///         var defaultSecurityGroup = new SecurityGroup("defaultSecurityGroup", SecurityGroupArgs.builder()
///             .name(name)
///             .vpcId(defaultNetwork.id())
///             .build());
///
///         var defaultRole = new Role("defaultRole", RoleArgs.builder()
///             .name(name)
///             .document("""
///     {
///         \"Statement\": [
///         {
///             \"Action\": \"sts:AssumeRole\",
///             \"Effect\": \"Allow\",
///             \"Principal\": {
///             \"Service\": [
///                 \"emr.aliyuncs.com\",
///                 \"ecs.aliyuncs.com\"
///             ]
///             }
///         }
///         ],
///         \"Version\": \"1\"
///     }
///             """)
///             .description("this is a role example.")
///             .force(true)
///             .build());
///
///         var defaultCluster = new Cluster("defaultCluster", ClusterArgs.builder()
///             .nodeGroups(
///                 ClusterNodeGroupArgs.builder()
///                     .vswitchIds(defaultSwitch.id())
///                     .instanceTypes("ecs.g7.xlarge")
///                     .nodeCount(1)
///                     .spotInstanceRemedy(false)
///                     .dataDisks(ClusterNodeGroupDataDiskArgs.builder()
///                         .count(3)
///                         .category("cloud_essd")
///                         .size(80)
///                         .performanceLevel("PL0")
///                         .build())
///                     .nodeGroupName("emr-master")
///                     .paymentType("PayAsYouGo")
///                     .withPublicIp(false)
///                     .gracefulShutdown(false)
///                     .systemDisk(ClusterNodeGroupSystemDiskArgs.builder()
///                         .category("cloud_essd")
///                         .size(80)
///                         .performanceLevel("PL0")
///                         .count(1)
///                         .build())
///                     .nodeGroupType("MASTER")
///                     .build(),
///                 ClusterNodeGroupArgs.builder()
///                     .spotInstanceRemedy(false)
///                     .nodeGroupType("CORE")
///                     .vswitchIds(defaultSwitch.id())
///                     .nodeCount(2)
///                     .gracefulShutdown(false)
///                     .systemDisk(ClusterNodeGroupSystemDiskArgs.builder()
///                         .performanceLevel("PL0")
///                         .count(1)
///                         .category("cloud_essd")
///                         .size(80)
///                         .build())
///                     .dataDisks(ClusterNodeGroupDataDiskArgs.builder()
///                         .count(3)
///                         .performanceLevel("PL0")
///                         .category("cloud_essd")
///                         .size(80)
///                         .build())
///                     .nodeGroupName("emr-core")
///                     .paymentType("PayAsYouGo")
///                     .instanceTypes("ecs.g7.xlarge")
///                     .withPublicIp(false)
///                     .build())
///             .deployMode("NORMAL")
///             .tags(Map.ofEntries(
///                 Map.entry("Created", "TF"),
///                 Map.entry("For", "example")
///             ))
///             .releaseVersion("EMR-5.10.0")
///             .applications(
///                 "HADOOP-COMMON",
///                 "HDFS",
///                 "YARN")
///             .nodeAttributes(ClusterNodeAttributeArgs.builder()
///                 .zoneId(defaultGetZones.zones()[0].id())
///                 .keyPairName(defaultEcsKeyPair.id())
///                 .dataDiskEncrypted(true)
///                 .dataDiskKmsKeyId(defaultGetKeys.ids()[0])
///                 .vpcId(defaultNetwork.id())
///                 .ramRole(defaultRole.name())
///                 .securityGroupId(defaultSecurityGroup.id())
///                 .build())
///             .resourceGroupId(default_.ids()[0])
///             .clusterName(name)
///             .paymentType("PayAsYouGo")
///             .clusterType("DATAFLOW")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: tf-example
/// resources:
///   defaultNetwork:
///     type: alicloud:vpc:Network
///     name: default
///     properties:
///       vpcName: ${name}
///       cidrBlock: 172.16.0.0/12
///   defaultSwitch:
///     type: alicloud:vpc:Switch
///     name: default
///     properties:
///       vpcId: ${defaultNetwork.id}
///       cidrBlock: 172.16.0.0/21
///       zoneId: ${defaultGetZones.zones[0].id}
///       vswitchName: ${name}
///   defaultInteger:
///     type: random:Integer
///     name: default
///     properties:
///       max: 99999
///       min: 10000
///   defaultEcsKeyPair:
///     type: alicloud:ecs:EcsKeyPair
///     name: default
///     properties:
///       keyPairName: ${name}-${defaultInteger.result}
///   defaultSecurityGroup:
///     type: alicloud:ecs:SecurityGroup
///     name: default
///     properties:
///       name: ${name}
///       vpcId: ${defaultNetwork.id}
///   defaultRole:
///     type: alicloud:ram:Role
///     name: default
///     properties:
///       name: ${name}
///       document: |2
///             {
///                 \"Statement\": [
///                 {
///                     \"Action\": \"sts:AssumeRole\",
///                     \"Effect\": \"Allow\",
///                     \"Principal\": {
///                     \"Service\": [
///                         \"emr.aliyuncs.com\",
///                         \"ecs.aliyuncs.com\"
///                     ]
///                     }
///                 }
///                 ],
///                 \"Version\": \"1\"
///             }
///       description: this is a role example.
///       force: true
///   defaultCluster:
///     type: alicloud:emrv2:Cluster
///     name: default
///     properties:
///       nodeGroups:
///         - vswitchIds:
///             - ${defaultSwitch.id}
///           instanceTypes:
///             - ecs.g7.xlarge
///           nodeCount: '1'
///           spotInstanceRemedy: 'false'
///           dataDisks:
///             - count: '3'
///               category: cloud_essd
///               size: '80'
///               performanceLevel: PL0
///           nodeGroupName: emr-master
///           paymentType: PayAsYouGo
///           withPublicIp: 'false'
///           gracefulShutdown: 'false'
///           systemDisk:
///             category: cloud_essd
///             size: '80'
///             performanceLevel: PL0
///             count: '1'
///           nodeGroupType: MASTER
///         - spotInstanceRemedy: 'false'
///           nodeGroupType: CORE
///           vswitchIds:
///             - ${defaultSwitch.id}
///           nodeCount: '2'
///           gracefulShutdown: 'false'
///           systemDisk:
///             performanceLevel: PL0
///             count: '1'
///             category: cloud_essd
///             size: '80'
///           dataDisks:
///             - count: '3'
///               performanceLevel: PL0
///               category: cloud_essd
///               size: '80'
///           nodeGroupName: emr-core
///           paymentType: PayAsYouGo
///           instanceTypes:
///             - ecs.g7.xlarge
///           withPublicIp: 'false'
///       deployMode: NORMAL
///       tags:
///         Created: TF
///         For: example
///       releaseVersion: EMR-5.10.0
///       applications:
///         - HADOOP-COMMON
///         - HDFS
///         - YARN
///       nodeAttributes:
///         - zoneId: ${defaultGetZones.zones[0].id}
///           keyPairName: ${defaultEcsKeyPair.id}
///           dataDiskEncrypted: 'true'
///           dataDiskKmsKeyId: ${defaultGetKeys.ids[0]}
///           vpcId: ${defaultNetwork.id}
///           ramRole: ${defaultRole.name}
///           securityGroupId: ${defaultSecurityGroup.id}
///       resourceGroupId: ${default.ids[0]}
///       clusterName: ${name}
///       paymentType: PayAsYouGo
///       clusterType: DATAFLOW
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:resourcemanager:getResourceGroups
///       arguments:
///         status: OK
///   defaultGetKeys:
///     fn::invoke:
///       function: alicloud:kms:getKeys
///       arguments:
///         status: Enabled
///   defaultGetZones:
///     fn::invoke:
///       function: alicloud:getZones
///       arguments:
///         availableInstanceType: ecs.g7.xlarge
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Aliclioud E-MapReduce cluster can be imported using the id e.g.
///
/// ```sh
/// $ pulumi import alicloud:emrv2/cluster:Cluster default <id>
/// ```
class Cluster extends pulumi.CustomResource {
  /// The application configurations of EMR cluster. See `application_configs` below.
  late final pulumi.Output<List<Map<String, dynamic>>?> applicationConfigs;

  /// The applications of EMR cluster to be installed, e.g. HADOOP-COMMON, HDFS, YARN, HIVE, SPARK2, SPARK3, ZOOKEEPER etc. You can find all valid applications in emr web console.
  late final pulumi.Output<List<String>> applications;

  /// The bootstrap scripts to be effected when creating emr-cluster or resize emr-cluster, if priority is not specified, the scripts will execute in the declared order. See `bootstrap_scripts` below.
  late final pulumi.Output<List<Map<String, dynamic>>?> bootstrapScripts;

  /// The name of emr cluster. The name length must be less than 64. Supported characters: chinese character, english character, number, "-", "_".
  late final pulumi.Output<String> clusterName;

  /// EMR Cluster Type, e.g. DATALAKE, OLAP, DATAFLOW, DATASERVING, CUSTOM etc. You can find all valid EMR cluster type in emr web console.
  late final pulumi.Output<String> clusterType;

  /// The deletion protection of EMR cluster.
  late final pulumi.Output<bool?> deletionProtection;

  /// The deploy mode of EMR cluster. Supported value: NORMAL or HA.
  late final pulumi.Output<String> deployMode;

  /// The log collect strategy of EMR cluster.
  late final pulumi.Output<String> logCollectStrategy;

  /// The node attributes of ecs instances which the emr-cluster belongs. See `node_attributes` below.
  late final pulumi.Output<List<Map<String, dynamic>>> nodeAttributes;

  /// Groups of node, You can specify MASTER as a group, CORE as a group (just like the above example). See `node_groups` below. **NOTE:** Since version 1.227.0, the type of `node_groups` changed from Set to List.
  late final pulumi.Output<List<Map<String, dynamic>>> nodeGroups;

  /// Payment Type for this cluster. Supported value: PayAsYouGo or Subscription. **NOTE:** From version 1.227.0, `payment_type` can be modified.
  late final pulumi.Output<String> paymentType;

  /// EMR Version, e.g. EMR-5.10.0. You can find the all valid EMR Version in emr web console.
  late final pulumi.Output<String> releaseVersion;

  /// The Id of resource group which the emr-cluster belongs.
  late final pulumi.Output<String> resourceGroupId;

  /// The security mode of EMR cluster. Supported value: NORMAL or KERBEROS.
  late final pulumi.Output<String> securityMode;

  /// The detail configuration of subscription payment type. See `subscription_config` below.
  late final pulumi.Output<ClusterSubscriptionConfig?> subscriptionConfig;

  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [Cluster].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Cluster]. {@macro pulumi_emrv2_cluster_cluster_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Cluster(
    String name, {
    ClusterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:emrv2/cluster:Cluster',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    applicationConfigs = registerOutput<List<Map<String, dynamic>>?>(
      'applicationConfigs',
    );
    applications = registerOutput<List<String>>('applications');
    bootstrapScripts = registerOutput<List<Map<String, dynamic>>?>(
      'bootstrapScripts',
    );
    clusterName = registerOutput<String>('clusterName');
    clusterType = registerOutput<String>('clusterType');
    deletionProtection = registerOutput<bool?>('deletionProtection');
    deployMode = registerOutput<String>('deployMode');
    logCollectStrategy = registerOutput<String>('logCollectStrategy');
    nodeAttributes = registerOutput<List<Map<String, dynamic>>>(
      'nodeAttributes',
    );
    nodeGroups = registerOutput<List<Map<String, dynamic>>>('nodeGroups');
    paymentType = registerOutput<String>('paymentType');
    releaseVersion = registerOutput<String>('releaseVersion');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    securityMode = registerOutput<String>('securityMode');
    subscriptionConfig = registerOutput<ClusterSubscriptionConfig?>(
      'subscriptionConfig',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ClusterSubscriptionConfig.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [Cluster] resource's state with the given [name] and [id].
  static Cluster get(
    String name,
    pulumi.Input<String> id, {
    ClusterState? state,
  }) {
    return Cluster._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Cluster._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:emrv2/cluster:Cluster',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    applicationConfigs = registerOutput<List<Map<String, dynamic>>?>(
      'applicationConfigs',
    );
    applications = registerOutput<List<String>>('applications');
    bootstrapScripts = registerOutput<List<Map<String, dynamic>>?>(
      'bootstrapScripts',
    );
    clusterName = registerOutput<String>('clusterName');
    clusterType = registerOutput<String>('clusterType');
    deletionProtection = registerOutput<bool?>('deletionProtection');
    deployMode = registerOutput<String>('deployMode');
    logCollectStrategy = registerOutput<String>('logCollectStrategy');
    nodeAttributes = registerOutput<List<Map<String, dynamic>>>(
      'nodeAttributes',
    );
    nodeGroups = registerOutput<List<Map<String, dynamic>>>('nodeGroups');
    paymentType = registerOutput<String>('paymentType');
    releaseVersion = registerOutput<String>('releaseVersion');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    securityMode = registerOutput<String>('securityMode');
    subscriptionConfig = registerOutput<ClusterSubscriptionConfig?>(
      'subscriptionConfig',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ClusterSubscriptionConfig.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    tags = registerOutput<Map<String, String>?>('tags');
  }
}
