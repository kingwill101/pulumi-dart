import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_instances_args.dart';
import 'get_cluster_instances_result.dart';
import 'get_clusters_args.dart';
import 'get_clusters_result.dart';

/// This data source provides the Emr Cluster ecs instances of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available since v1.243.0.
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const _default = alicloud.resourcemanager.getResourceGroups({
///     status: "OK",
/// });
/// const defaultGetZones = alicloud.getZones({
///     availableInstanceType: "ecs.g7.xlarge",
/// });
/// const defaultNetwork = new alicloud.vpc.Network("default", {
///     vpcName: "TF-VPC",
///     cidrBlock: "172.16.0.0/12",
/// });
/// const defaultSwitch = new alicloud.vpc.Switch("default", {
///     vpcId: defaultNetwork.id,
///     cidrBlock: "172.16.0.0/21",
///     zoneId: defaultGetZones.then(defaultGetZones => defaultGetZones.zones?.[0]?.id),
///     vswitchName: "TF_VSwitch",
/// });
/// const defaultEcsKeyPair = new alicloud.ecs.EcsKeyPair("default", {keyPairName: "terraform-kp"});
/// const defaultSecurityGroup = new alicloud.ecs.SecurityGroup("default", {
///     name: "TF_SECURITY_GROUP",
///     vpcId: defaultNetwork.id,
/// });
/// const defaultRole = new alicloud.ram.Role("default", {
///     name: "emrtf",
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
///     description: "this is a role test.",
///     force: true,
/// });
/// const defaultCluster = new alicloud.emrv2.Cluster("default", {
///     paymentType: "PayAsYouGo",
///     clusterType: "DATALAKE",
///     releaseVersion: "EMR-5.10.0",
///     clusterName: "terraform-emr-cluster-v2",
///     deployMode: "NORMAL",
///     securityMode: "NORMAL",
///     applications: [
///         "HADOOP-COMMON",
///         "HDFS",
///         "YARN",
///         "HIVE",
///         "SPARK3",
///         "TEZ",
///     ],
///     applicationConfigs: [
///         {
///             applicationName: "HIVE",
///             configFileName: "hivemetastore-site.xml",
///             configItemKey: "hive.metastore.type",
///             configItemValue: "DLF",
///             configScope: "CLUSTER",
///         },
///         {
///             applicationName: "SPARK3",
///             configFileName: "hive-site.xml",
///             configItemKey: "hive.metastore.type",
///             configItemValue: "DLF",
///             configScope: "CLUSTER",
///         },
///     ],
///     nodeAttributes: [{
///         ramRole: defaultRole.name,
///         securityGroupId: defaultSecurityGroup.id,
///         vpcId: defaultNetwork.id,
///         zoneId: defaultGetZones.then(defaultGetZones => defaultGetZones.zones?.[0]?.id),
///         keyPairName: defaultEcsKeyPair.id,
///     }],
///     tags: {
///         created: "tf",
///     },
///     nodeGroups: [
///         {
///             nodeGroupType: "MASTER",
///             nodeGroupName: "emr-master",
///             paymentType: "PayAsYouGo",
///             vswitchIds: [defaultSwitch.id],
///             withPublicIp: false,
///             instanceTypes: ["ecs.g7.xlarge"],
///             nodeCount: 1,
///             systemDisk: {
///                 category: "cloud_essd",
///                 size: 80,
///                 count: 1,
///             },
///             dataDisks: [{
///                 category: "cloud_essd",
///                 size: 80,
///                 count: 3,
///             }],
///         },
///         {
///             nodeGroupType: "CORE",
///             nodeGroupName: "emr-core",
///             paymentType: "PayAsYouGo",
///             vswitchIds: [defaultSwitch.id],
///             withPublicIp: false,
///             instanceTypes: ["ecs.g7.xlarge"],
///             nodeCount: 3,
///             systemDisk: {
///                 category: "cloud_essd",
///                 size: 80,
///                 count: 1,
///             },
///             dataDisks: [{
///                 category: "cloud_essd",
///                 size: 80,
///                 count: 3,
///             }],
///         },
///     ],
///     resourceGroupId: _default.then(_default => _default.ids?.[0]),
/// });
/// const ids = alicloud.emrv2.getClusterInstances({});
/// export const emrv2ClusterInstancesId1 = ids.then(ids => ids.instances?.[0]?.instanceId);
/// const nodeGroupNames = alicloud.emrv2.getClusterInstances({
///     nodeGroupNames: ["emr-core"],
/// });
/// export const emrv2ClusterInstancesId2 = nodeGroupNames.then(nodeGroupNames => nodeGroupNames.instances?.[0]?.instanceId);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.resourcemanager.get_resource_groups(status="OK")
/// default_get_zones = alicloud.get_zones(available_instance_type="ecs.g7.xlarge")
/// default_network = alicloud.vpc.Network("default",
///     vpc_name="TF-VPC",
///     cidr_block="172.16.0.0/12")
/// default_switch = alicloud.vpc.Switch("default",
///     vpc_id=default_network.id,
///     cidr_block="172.16.0.0/21",
///     zone_id=default_get_zones.zones[0].id,
///     vswitch_name="TF_VSwitch")
/// default_ecs_key_pair = alicloud.ecs.EcsKeyPair("default", key_pair_name="terraform-kp")
/// default_security_group = alicloud.ecs.SecurityGroup("default",
///     name="TF_SECURITY_GROUP",
///     vpc_id=default_network.id)
/// default_role = alicloud.ram.Role("default",
///     name="emrtf",
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
///     description="this is a role test.",
///     force=True)
/// default_cluster = alicloud.emrv2.Cluster("default",
///     payment_type="PayAsYouGo",
///     cluster_type="DATALAKE",
///     release_version="EMR-5.10.0",
///     cluster_name="terraform-emr-cluster-v2",
///     deploy_mode="NORMAL",
///     security_mode="NORMAL",
///     applications=[
///         "HADOOP-COMMON",
///         "HDFS",
///         "YARN",
///         "HIVE",
///         "SPARK3",
///         "TEZ",
///     ],
///     application_configs=[
///         {
///             "application_name": "HIVE",
///             "config_file_name": "hivemetastore-site.xml",
///             "config_item_key": "hive.metastore.type",
///             "config_item_value": "DLF",
///             "config_scope": "CLUSTER",
///         },
///         {
///             "application_name": "SPARK3",
///             "config_file_name": "hive-site.xml",
///             "config_item_key": "hive.metastore.type",
///             "config_item_value": "DLF",
///             "config_scope": "CLUSTER",
///         },
///     ],
///     node_attributes=[{
///         "ram_role": default_role.name,
///         "security_group_id": default_security_group.id,
///         "vpc_id": default_network.id,
///         "zone_id": default_get_zones.zones[0].id,
///         "key_pair_name": default_ecs_key_pair.id,
///     }],
///     tags={
///         "created": "tf",
///     },
///     node_groups=[
///         {
///             "node_group_type": "MASTER",
///             "node_group_name": "emr-master",
///             "payment_type": "PayAsYouGo",
///             "vswitch_ids": [default_switch.id],
///             "with_public_ip": False,
///             "instance_types": ["ecs.g7.xlarge"],
///             "node_count": 1,
///             "system_disk": {
///                 "category": "cloud_essd",
///                 "size": 80,
///                 "count": 1,
///             },
///             "data_disks": [{
///                 "category": "cloud_essd",
///                 "size": 80,
///                 "count": 3,
///             }],
///         },
///         {
///             "node_group_type": "CORE",
///             "node_group_name": "emr-core",
///             "payment_type": "PayAsYouGo",
///             "vswitch_ids": [default_switch.id],
///             "with_public_ip": False,
///             "instance_types": ["ecs.g7.xlarge"],
///             "node_count": 3,
///             "system_disk": {
///                 "category": "cloud_essd",
///                 "size": 80,
///                 "count": 1,
///             },
///             "data_disks": [{
///                 "category": "cloud_essd",
///                 "size": 80,
///                 "count": 3,
///             }],
///         },
///     ],
///     resource_group_id=default.ids[0])
/// ids = alicloud.emrv2.get_cluster_instances()
/// pulumi.export("emrv2ClusterInstancesId1", ids.instances[0].instance_id)
/// node_group_names = alicloud.emrv2.get_cluster_instances(node_group_names=["emr-core"])
/// pulumi.export("emrv2ClusterInstancesId2", node_group_names.instances[0].instance_id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.ResourceManager.GetResourceGroups.Invoke(new()
///     {
///         Status = "OK",
///     });
///
///     var defaultGetZones = AliCloud.GetZones.Invoke(new()
///     {
///         AvailableInstanceType = "ecs.g7.xlarge",
///     });
///
///     var defaultNetwork = new AliCloud.Vpc.Network("default", new()
///     {
///         VpcName = "TF-VPC",
///         CidrBlock = "172.16.0.0/12",
///     });
///
///     var defaultSwitch = new AliCloud.Vpc.Switch("default", new()
///     {
///         VpcId = defaultNetwork.Id,
///         CidrBlock = "172.16.0.0/21",
///         ZoneId = defaultGetZones.Apply(getZonesResult => getZonesResult.Zones[0]?.Id),
///         VswitchName = "TF_VSwitch",
///     });
///
///     var defaultEcsKeyPair = new AliCloud.Ecs.EcsKeyPair("default", new()
///     {
///         KeyPairName = "terraform-kp",
///     });
///
///     var defaultSecurityGroup = new AliCloud.Ecs.SecurityGroup("default", new()
///     {
///         Name = "TF_SECURITY_GROUP",
///         VpcId = defaultNetwork.Id,
///     });
///
///     var defaultRole = new AliCloud.Ram.Role("default", new()
///     {
///         Name = "emrtf",
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
///         Description = "this is a role test.",
///         Force = true,
///     });
///
///     var defaultCluster = new AliCloud.Emrv2.Cluster("default", new()
///     {
///         PaymentType = "PayAsYouGo",
///         ClusterType = "DATALAKE",
///         ReleaseVersion = "EMR-5.10.0",
///         ClusterName = "terraform-emr-cluster-v2",
///         DeployMode = "NORMAL",
///         SecurityMode = "NORMAL",
///         Applications = new[]
///         {
///             "HADOOP-COMMON",
///             "HDFS",
///             "YARN",
///             "HIVE",
///             "SPARK3",
///             "TEZ",
///         },
///         ApplicationConfigs = new[]
///         {
///             new AliCloud.Emrv2.Inputs.ClusterApplicationConfigArgs
///             {
///                 ApplicationName = "HIVE",
///                 ConfigFileName = "hivemetastore-site.xml",
///                 ConfigItemKey = "hive.metastore.type",
///                 ConfigItemValue = "DLF",
///                 ConfigScope = "CLUSTER",
///             },
///             new AliCloud.Emrv2.Inputs.ClusterApplicationConfigArgs
///             {
///                 ApplicationName = "SPARK3",
///                 ConfigFileName = "hive-site.xml",
///                 ConfigItemKey = "hive.metastore.type",
///                 ConfigItemValue = "DLF",
///                 ConfigScope = "CLUSTER",
///             },
///         },
///         NodeAttributes = new[]
///         {
///             new AliCloud.Emrv2.Inputs.ClusterNodeAttributeArgs
///             {
///                 RamRole = defaultRole.Name,
///                 SecurityGroupId = defaultSecurityGroup.Id,
///                 VpcId = defaultNetwork.Id,
///                 ZoneId = defaultGetZones.Apply(getZonesResult => getZonesResult.Zones[0]?.Id),
///                 KeyPairName = defaultEcsKeyPair.Id,
///             },
///         },
///         Tags =
///         {
///             { "created", "tf" },
///         },
///         NodeGroups = new[]
///         {
///             new AliCloud.Emrv2.Inputs.ClusterNodeGroupArgs
///             {
///                 NodeGroupType = "MASTER",
///                 NodeGroupName = "emr-master",
///                 PaymentType = "PayAsYouGo",
///                 VswitchIds = new[]
///                 {
///                     defaultSwitch.Id,
///                 },
///                 WithPublicIp = false,
///                 InstanceTypes = new[]
///                 {
///                     "ecs.g7.xlarge",
///                 },
///                 NodeCount = 1,
///                 SystemDisk = new AliCloud.Emrv2.Inputs.ClusterNodeGroupSystemDiskArgs
///                 {
///                     Category = "cloud_essd",
///                     Size = 80,
///                     Count = 1,
///                 },
///                 DataDisks = new[]
///                 {
///                     new AliCloud.Emrv2.Inputs.ClusterNodeGroupDataDiskArgs
///                     {
///                         Category = "cloud_essd",
///                         Size = 80,
///                         Count = 3,
///                     },
///                 },
///             },
///             new AliCloud.Emrv2.Inputs.ClusterNodeGroupArgs
///             {
///                 NodeGroupType = "CORE",
///                 NodeGroupName = "emr-core",
///                 PaymentType = "PayAsYouGo",
///                 VswitchIds = new[]
///                 {
///                     defaultSwitch.Id,
///                 },
///                 WithPublicIp = false,
///                 InstanceTypes = new[]
///                 {
///                     "ecs.g7.xlarge",
///                 },
///                 NodeCount = 3,
///                 SystemDisk = new AliCloud.Emrv2.Inputs.ClusterNodeGroupSystemDiskArgs
///                 {
///                     Category = "cloud_essd",
///                     Size = 80,
///                     Count = 1,
///                 },
///                 DataDisks = new[]
///                 {
///                     new AliCloud.Emrv2.Inputs.ClusterNodeGroupDataDiskArgs
///                     {
///                         Category = "cloud_essd",
///                         Size = 80,
///                         Count = 3,
///                     },
///                 },
///             },
///         },
///         ResourceGroupId = @default.Apply(@default => @default.Apply(getResourceGroupsResult => getResourceGroupsResult.Ids[0])),
///     });
///
///     var ids = AliCloud.Emrv2.GetClusterInstances.Invoke();
///
///     var nodeGroupNames = AliCloud.Emrv2.GetClusterInstances.Invoke(new()
///     {
///         NodeGroupNames = new[]
///         {
///             "emr-core",
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["emrv2ClusterInstancesId1"] = ids.Apply(getClusterInstancesResult => getClusterInstancesResult.Instances[0]?.InstanceId),
///         ["emrv2ClusterInstancesId2"] = nodeGroupNames.Apply(getClusterInstancesResult => getClusterInstancesResult.Instances[0]?.InstanceId),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ecs"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/emrv2"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ram"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/resourcemanager"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := resourcemanager.GetResourceGroups(ctx, &resourcemanager.GetResourceGroupsArgs{
/// 			Status: pulumi.StringRef("OK"),
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
/// 			VpcName:   pulumi.String("TF-VPC"),
/// 			CidrBlock: pulumi.String("172.16.0.0/12"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSwitch, err := vpc.NewSwitch(ctx, "default", &vpc.SwitchArgs{
/// 			VpcId:       defaultNetwork.ID(),
/// 			CidrBlock:   pulumi.String("172.16.0.0/21"),
/// 			ZoneId:      pulumi.String(defaultGetZones.Zones[0].Id),
/// 			VswitchName: pulumi.String("TF_VSwitch"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultEcsKeyPair, err := ecs.NewEcsKeyPair(ctx, "default", &ecs.EcsKeyPairArgs{
/// 			KeyPairName: pulumi.String("terraform-kp"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSecurityGroup, err := ecs.NewSecurityGroup(ctx, "default", &ecs.SecurityGroupArgs{
/// 			Name:  pulumi.String("TF_SECURITY_GROUP"),
/// 			VpcId: defaultNetwork.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultRole, err := ram.NewRole(ctx, "default", &ram.RoleArgs{
/// 			Name: pulumi.String("emrtf"),
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
/// 			Description: pulumi.String("this is a role test."),
/// 			Force:       pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = emrv2.NewCluster(ctx, "default", &emrv2.ClusterArgs{
/// 			PaymentType:    pulumi.String("PayAsYouGo"),
/// 			ClusterType:    pulumi.String("DATALAKE"),
/// 			ReleaseVersion: pulumi.String("EMR-5.10.0"),
/// 			ClusterName:    pulumi.String("terraform-emr-cluster-v2"),
/// 			DeployMode:     pulumi.String("NORMAL"),
/// 			SecurityMode:   pulumi.String("NORMAL"),
/// 			Applications: pulumi.StringArray{
/// 				pulumi.String("HADOOP-COMMON"),
/// 				pulumi.String("HDFS"),
/// 				pulumi.String("YARN"),
/// 				pulumi.String("HIVE"),
/// 				pulumi.String("SPARK3"),
/// 				pulumi.String("TEZ"),
/// 			},
/// 			ApplicationConfigs: emrv2.ClusterApplicationConfigArray{
/// 				&emrv2.ClusterApplicationConfigArgs{
/// 					ApplicationName: pulumi.String("HIVE"),
/// 					ConfigFileName:  pulumi.String("hivemetastore-site.xml"),
/// 					ConfigItemKey:   pulumi.String("hive.metastore.type"),
/// 					ConfigItemValue: pulumi.String("DLF"),
/// 					ConfigScope:     pulumi.String("CLUSTER"),
/// 				},
/// 				&emrv2.ClusterApplicationConfigArgs{
/// 					ApplicationName: pulumi.String("SPARK3"),
/// 					ConfigFileName:  pulumi.String("hive-site.xml"),
/// 					ConfigItemKey:   pulumi.String("hive.metastore.type"),
/// 					ConfigItemValue: pulumi.String("DLF"),
/// 					ConfigScope:     pulumi.String("CLUSTER"),
/// 				},
/// 			},
/// 			NodeAttributes: emrv2.ClusterNodeAttributeArray{
/// 				&emrv2.ClusterNodeAttributeArgs{
/// 					RamRole:         defaultRole.Name,
/// 					SecurityGroupId: defaultSecurityGroup.ID(),
/// 					VpcId:           defaultNetwork.ID(),
/// 					ZoneId:          pulumi.String(defaultGetZones.Zones[0].Id),
/// 					KeyPairName:     defaultEcsKeyPair.ID(),
/// 				},
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"created": pulumi.String("tf"),
/// 			},
/// 			NodeGroups: emrv2.ClusterNodeGroupArray{
/// 				&emrv2.ClusterNodeGroupArgs{
/// 					NodeGroupType: pulumi.String("MASTER"),
/// 					NodeGroupName: pulumi.String("emr-master"),
/// 					PaymentType:   pulumi.String("PayAsYouGo"),
/// 					VswitchIds: pulumi.StringArray{
/// 						defaultSwitch.ID(),
/// 					},
/// 					WithPublicIp: pulumi.Bool(false),
/// 					InstanceTypes: pulumi.StringArray{
/// 						pulumi.String("ecs.g7.xlarge"),
/// 					},
/// 					NodeCount: pulumi.Int(1),
/// 					SystemDisk: &emrv2.ClusterNodeGroupSystemDiskArgs{
/// 						Category: pulumi.String("cloud_essd"),
/// 						Size:     pulumi.Int(80),
/// 						Count:    pulumi.Int(1),
/// 					},
/// 					DataDisks: emrv2.ClusterNodeGroupDataDiskArray{
/// 						&emrv2.ClusterNodeGroupDataDiskArgs{
/// 							Category: pulumi.String("cloud_essd"),
/// 							Size:     pulumi.Int(80),
/// 							Count:    pulumi.Int(3),
/// 						},
/// 					},
/// 				},
/// 				&emrv2.ClusterNodeGroupArgs{
/// 					NodeGroupType: pulumi.String("CORE"),
/// 					NodeGroupName: pulumi.String("emr-core"),
/// 					PaymentType:   pulumi.String("PayAsYouGo"),
/// 					VswitchIds: pulumi.StringArray{
/// 						defaultSwitch.ID(),
/// 					},
/// 					WithPublicIp: pulumi.Bool(false),
/// 					InstanceTypes: pulumi.StringArray{
/// 						pulumi.String("ecs.g7.xlarge"),
/// 					},
/// 					NodeCount: pulumi.Int(3),
/// 					SystemDisk: &emrv2.ClusterNodeGroupSystemDiskArgs{
/// 						Category: pulumi.String("cloud_essd"),
/// 						Size:     pulumi.Int(80),
/// 						Count:    pulumi.Int(1),
/// 					},
/// 					DataDisks: emrv2.ClusterNodeGroupDataDiskArray{
/// 						&emrv2.ClusterNodeGroupDataDiskArgs{
/// 							Category: pulumi.String("cloud_essd"),
/// 							Size:     pulumi.Int(80),
/// 							Count:    pulumi.Int(3),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			ResourceGroupId: pulumi.String(_default.Ids[0]),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ids, err := emrv2.GetClusterInstances(ctx, &emrv2.GetClusterInstancesArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("emrv2ClusterInstancesId1", ids.Instances[0].InstanceId)
/// 		nodeGroupNames, err := emrv2.GetClusterInstances(ctx, &emrv2.GetClusterInstancesArgs{
/// 			NodeGroupNames: []string{
/// 				"emr-core",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("emrv2ClusterInstancesId2", nodeGroupNames.Instances[0].InstanceId)
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
/// import com.pulumi.alicloud.AlicloudFunctions;
/// import com.pulumi.alicloud.inputs.GetZonesArgs;
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.ecs.EcsKeyPair;
/// import com.pulumi.alicloud.ecs.EcsKeyPairArgs;
/// import com.pulumi.alicloud.ecs.SecurityGroup;
/// import com.pulumi.alicloud.ecs.SecurityGroupArgs;
/// import com.pulumi.alicloud.ram.Role;
/// import com.pulumi.alicloud.ram.RoleArgs;
/// import com.pulumi.alicloud.emrv2.Cluster;
/// import com.pulumi.alicloud.emrv2.ClusterArgs;
/// import com.pulumi.alicloud.emrv2.inputs.ClusterApplicationConfigArgs;
/// import com.pulumi.alicloud.emrv2.inputs.ClusterNodeAttributeArgs;
/// import com.pulumi.alicloud.emrv2.inputs.ClusterNodeGroupArgs;
/// import com.pulumi.alicloud.emrv2.inputs.ClusterNodeGroupSystemDiskArgs;
/// import com.pulumi.alicloud.emrv2.Emrv2Functions;
/// import com.pulumi.alicloud.emrv2.inputs.GetClusterInstancesArgs;
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
///         final var default = ResourcemanagerFunctions.getResourceGroups(GetResourceGroupsArgs.builder()
///             .status("OK")
///             .build());
///
///         final var defaultGetZones = AlicloudFunctions.getZones(GetZonesArgs.builder()
///             .availableInstanceType("ecs.g7.xlarge")
///             .build());
///
///         var defaultNetwork = new Network("defaultNetwork", NetworkArgs.builder()
///             .vpcName("TF-VPC")
///             .cidrBlock("172.16.0.0/12")
///             .build());
///
///         var defaultSwitch = new Switch("defaultSwitch", SwitchArgs.builder()
///             .vpcId(defaultNetwork.id())
///             .cidrBlock("172.16.0.0/21")
///             .zoneId(defaultGetZones.zones()[0].id())
///             .vswitchName("TF_VSwitch")
///             .build());
///
///         var defaultEcsKeyPair = new EcsKeyPair("defaultEcsKeyPair", EcsKeyPairArgs.builder()
///             .keyPairName("terraform-kp")
///             .build());
///
///         var defaultSecurityGroup = new SecurityGroup("defaultSecurityGroup", SecurityGroupArgs.builder()
///             .name("TF_SECURITY_GROUP")
///             .vpcId(defaultNetwork.id())
///             .build());
///
///         var defaultRole = new Role("defaultRole", RoleArgs.builder()
///             .name("emrtf")
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
///             .description("this is a role test.")
///             .force(true)
///             .build());
///
///         var defaultCluster = new Cluster("defaultCluster", ClusterArgs.builder()
///             .paymentType("PayAsYouGo")
///             .clusterType("DATALAKE")
///             .releaseVersion("EMR-5.10.0")
///             .clusterName("terraform-emr-cluster-v2")
///             .deployMode("NORMAL")
///             .securityMode("NORMAL")
///             .applications(
///                 "HADOOP-COMMON",
///                 "HDFS",
///                 "YARN",
///                 "HIVE",
///                 "SPARK3",
///                 "TEZ")
///             .applicationConfigs(
///                 ClusterApplicationConfigArgs.builder()
///                     .applicationName("HIVE")
///                     .configFileName("hivemetastore-site.xml")
///                     .configItemKey("hive.metastore.type")
///                     .configItemValue("DLF")
///                     .configScope("CLUSTER")
///                     .build(),
///                 ClusterApplicationConfigArgs.builder()
///                     .applicationName("SPARK3")
///                     .configFileName("hive-site.xml")
///                     .configItemKey("hive.metastore.type")
///                     .configItemValue("DLF")
///                     .configScope("CLUSTER")
///                     .build())
///             .nodeAttributes(ClusterNodeAttributeArgs.builder()
///                 .ramRole(defaultRole.name())
///                 .securityGroupId(defaultSecurityGroup.id())
///                 .vpcId(defaultNetwork.id())
///                 .zoneId(defaultGetZones.zones()[0].id())
///                 .keyPairName(defaultEcsKeyPair.id())
///                 .build())
///             .tags(Map.of("created", "tf"))
///             .nodeGroups(
///                 ClusterNodeGroupArgs.builder()
///                     .nodeGroupType("MASTER")
///                     .nodeGroupName("emr-master")
///                     .paymentType("PayAsYouGo")
///                     .vswitchIds(defaultSwitch.id())
///                     .withPublicIp(false)
///                     .instanceTypes("ecs.g7.xlarge")
///                     .nodeCount(1)
///                     .systemDisk(ClusterNodeGroupSystemDiskArgs.builder()
///                         .category("cloud_essd")
///                         .size(80)
///                         .count(1)
///                         .build())
///                     .dataDisks(ClusterNodeGroupDataDiskArgs.builder()
///                         .category("cloud_essd")
///                         .size(80)
///                         .count(3)
///                         .build())
///                     .build(),
///                 ClusterNodeGroupArgs.builder()
///                     .nodeGroupType("CORE")
///                     .nodeGroupName("emr-core")
///                     .paymentType("PayAsYouGo")
///                     .vswitchIds(defaultSwitch.id())
///                     .withPublicIp(false)
///                     .instanceTypes("ecs.g7.xlarge")
///                     .nodeCount(3)
///                     .systemDisk(ClusterNodeGroupSystemDiskArgs.builder()
///                         .category("cloud_essd")
///                         .size(80)
///                         .count(1)
///                         .build())
///                     .dataDisks(ClusterNodeGroupDataDiskArgs.builder()
///                         .category("cloud_essd")
///                         .size(80)
///                         .count(3)
///                         .build())
///                     .build())
///             .resourceGroupId(default_.ids()[0])
///             .build());
///
///         final var ids = Emrv2Functions.getClusterInstances(GetClusterInstancesArgs.builder()
///             .build());
///
///         ctx.export("emrv2ClusterInstancesId1", ids.instances()[0].instanceId());
///         final var nodeGroupNames = Emrv2Functions.getClusterInstances(GetClusterInstancesArgs.builder()
///             .nodeGroupNames("emr-core")
///             .build());
///
///         ctx.export("emrv2ClusterInstancesId2", nodeGroupNames.instances()[0].instanceId());
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   defaultNetwork:
///     type: alicloud:vpc:Network
///     name: default
///     properties:
///       vpcName: TF-VPC
///       cidrBlock: 172.16.0.0/12
///   defaultSwitch:
///     type: alicloud:vpc:Switch
///     name: default
///     properties:
///       vpcId: ${defaultNetwork.id}
///       cidrBlock: 172.16.0.0/21
///       zoneId: ${defaultGetZones.zones[0].id}
///       vswitchName: TF_VSwitch
///   defaultEcsKeyPair:
///     type: alicloud:ecs:EcsKeyPair
///     name: default
///     properties:
///       keyPairName: terraform-kp
///   defaultSecurityGroup:
///     type: alicloud:ecs:SecurityGroup
///     name: default
///     properties:
///       name: TF_SECURITY_GROUP
///       vpcId: ${defaultNetwork.id}
///   defaultRole:
///     type: alicloud:ram:Role
///     name: default
///     properties:
///       name: emrtf
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
///       description: this is a role test.
///       force: true
///   defaultCluster:
///     type: alicloud:emrv2:Cluster
///     name: default
///     properties:
///       paymentType: PayAsYouGo
///       clusterType: DATALAKE
///       releaseVersion: EMR-5.10.0
///       clusterName: terraform-emr-cluster-v2
///       deployMode: NORMAL
///       securityMode: NORMAL
///       applications:
///         - HADOOP-COMMON
///         - HDFS
///         - YARN
///         - HIVE
///         - SPARK3
///         - TEZ
///       applicationConfigs:
///         - applicationName: HIVE
///           configFileName: hivemetastore-site.xml
///           configItemKey: hive.metastore.type
///           configItemValue: DLF
///           configScope: CLUSTER
///         - applicationName: SPARK3
///           configFileName: hive-site.xml
///           configItemKey: hive.metastore.type
///           configItemValue: DLF
///           configScope: CLUSTER
///       nodeAttributes:
///         - ramRole: ${defaultRole.name}
///           securityGroupId: ${defaultSecurityGroup.id}
///           vpcId: ${defaultNetwork.id}
///           zoneId: ${defaultGetZones.zones[0].id}
///           keyPairName: ${defaultEcsKeyPair.id}
///       tags:
///         created: tf
///       nodeGroups:
///         - nodeGroupType: MASTER
///           nodeGroupName: emr-master
///           paymentType: PayAsYouGo
///           vswitchIds:
///             - ${defaultSwitch.id}
///           withPublicIp: false
///           instanceTypes:
///             - ecs.g7.xlarge
///           nodeCount: 1
///           systemDisk:
///             category: cloud_essd
///             size: 80
///             count: 1
///           dataDisks:
///             - category: cloud_essd
///               size: 80
///               count: 3
///         - nodeGroupType: CORE
///           nodeGroupName: emr-core
///           paymentType: PayAsYouGo
///           vswitchIds:
///             - ${defaultSwitch.id}
///           withPublicIp: false
///           instanceTypes:
///             - ecs.g7.xlarge
///           nodeCount: 3
///           systemDisk:
///             category: cloud_essd
///             size: 80
///             count: 1
///           dataDisks:
///             - category: cloud_essd
///               size: 80
///               count: 3
///       resourceGroupId: ${default.ids[0]}
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:resourcemanager:getResourceGroups
///       arguments:
///         status: OK
///   defaultGetZones:
///     fn::invoke:
///       function: alicloud:getZones
///       arguments:
///         availableInstanceType: ecs.g7.xlarge
///   ids:
///     fn::invoke:
///       function: alicloud:emrv2:getClusterInstances
///       arguments: {}
///   nodeGroupNames:
///     fn::invoke:
///       function: alicloud:emrv2:getClusterInstances
///       arguments:
///         nodeGroupNames:
///           - emr-core
/// outputs:
///   emrv2ClusterInstancesId1: ${ids.instances[0].instanceId}
///   emrv2ClusterInstancesId2: ${nodeGroupNames.instances[0].instanceId}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_emrv2_get_cluster_instances_get_cluster_instances_args_doc}
/// [options] Invoke options controlling this call.
Future<GetClusterInstancesResult> getClusterInstances(
  GetClusterInstancesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:emrv2/getClusterInstances:getClusterInstances',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetClusterInstancesResult.fromMap(result);
}

/// This data source provides the Emr Clusters of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available since v1.199.0.
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const _default = alicloud.resourcemanager.getResourceGroups({
///     status: "OK",
/// });
/// const defaultGetZones = alicloud.getZones({
///     availableInstanceType: "ecs.g7.xlarge",
/// });
/// const defaultNetwork = new alicloud.vpc.Network("default", {
///     vpcName: "TF-VPC",
///     cidrBlock: "172.16.0.0/12",
/// });
/// const defaultSwitch = new alicloud.vpc.Switch("default", {
///     vpcId: defaultNetwork.id,
///     cidrBlock: "172.16.0.0/21",
///     zoneId: defaultGetZones.then(defaultGetZones => defaultGetZones.zones?.[0]?.id),
///     vswitchName: "TF_VSwitch",
/// });
/// const defaultEcsKeyPair = new alicloud.ecs.EcsKeyPair("default", {keyPairName: "terraform-kp"});
/// const defaultSecurityGroup = new alicloud.ecs.SecurityGroup("default", {
///     name: "TF_SECURITY_GROUP",
///     vpcId: defaultNetwork.id,
/// });
/// const defaultRole = new alicloud.ram.Role("default", {
///     name: "emrtf",
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
///     description: "this is a role test.",
///     force: true,
/// });
/// const defaultCluster = new alicloud.emrv2.Cluster("default", {
///     paymentType: "PayAsYouGo",
///     clusterType: "DATALAKE",
///     releaseVersion: "EMR-5.10.0",
///     clusterName: "terraform-emr-cluster-v2",
///     deployMode: "NORMAL",
///     securityMode: "NORMAL",
///     applications: [
///         "HADOOP-COMMON",
///         "HDFS",
///         "YARN",
///         "HIVE",
///         "SPARK3",
///         "TEZ",
///     ],
///     applicationConfigs: [
///         {
///             applicationName: "HIVE",
///             configFileName: "hivemetastore-site.xml",
///             configItemKey: "hive.metastore.type",
///             configItemValue: "DLF",
///             configScope: "CLUSTER",
///         },
///         {
///             applicationName: "SPARK3",
///             configFileName: "hive-site.xml",
///             configItemKey: "hive.metastore.type",
///             configItemValue: "DLF",
///             configScope: "CLUSTER",
///         },
///     ],
///     nodeAttributes: [{
///         ramRole: defaultRole.name,
///         securityGroupId: defaultSecurityGroup.id,
///         vpcId: defaultNetwork.id,
///         zoneId: defaultGetZones.then(defaultGetZones => defaultGetZones.zones?.[0]?.id),
///         keyPairName: defaultEcsKeyPair.id,
///     }],
///     tags: {
///         created: "tf",
///     },
///     nodeGroups: [
///         {
///             nodeGroupType: "MASTER",
///             nodeGroupName: "emr-master",
///             paymentType: "PayAsYouGo",
///             vswitchIds: [defaultSwitch.id],
///             withPublicIp: false,
///             instanceTypes: ["ecs.g7.xlarge"],
///             nodeCount: 1,
///             systemDisk: {
///                 category: "cloud_essd",
///                 size: 80,
///                 count: 1,
///             },
///             dataDisks: [{
///                 category: "cloud_essd",
///                 size: 80,
///                 count: 3,
///             }],
///         },
///         {
///             nodeGroupType: "CORE",
///             nodeGroupName: "emr-core",
///             paymentType: "PayAsYouGo",
///             vswitchIds: [defaultSwitch.id],
///             withPublicIp: false,
///             instanceTypes: ["ecs.g7.xlarge"],
///             nodeCount: 3,
///             systemDisk: {
///                 category: "cloud_essd",
///                 size: 80,
///                 count: 1,
///             },
///             dataDisks: [{
///                 category: "cloud_essd",
///                 size: 80,
///                 count: 3,
///             }],
///         },
///     ],
///     resourceGroupId: _default.then(_default => _default.ids?.[0]),
/// });
/// const ids = alicloud.emrv2.getClusters({});
/// export const emrv2ClustersId1 = ids.then(ids => ids.clusters?.[0]?.id);
/// const nameRegex = alicloud.emrv2.getClusters({
///     nameRegex: defaultAlicloudEmrCluster.name,
/// });
/// export const emrv2ClustersId2 = nameRegex.then(nameRegex => nameRegex.clusters?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.resourcemanager.get_resource_groups(status="OK")
/// default_get_zones = alicloud.get_zones(available_instance_type="ecs.g7.xlarge")
/// default_network = alicloud.vpc.Network("default",
///     vpc_name="TF-VPC",
///     cidr_block="172.16.0.0/12")
/// default_switch = alicloud.vpc.Switch("default",
///     vpc_id=default_network.id,
///     cidr_block="172.16.0.0/21",
///     zone_id=default_get_zones.zones[0].id,
///     vswitch_name="TF_VSwitch")
/// default_ecs_key_pair = alicloud.ecs.EcsKeyPair("default", key_pair_name="terraform-kp")
/// default_security_group = alicloud.ecs.SecurityGroup("default",
///     name="TF_SECURITY_GROUP",
///     vpc_id=default_network.id)
/// default_role = alicloud.ram.Role("default",
///     name="emrtf",
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
///     description="this is a role test.",
///     force=True)
/// default_cluster = alicloud.emrv2.Cluster("default",
///     payment_type="PayAsYouGo",
///     cluster_type="DATALAKE",
///     release_version="EMR-5.10.0",
///     cluster_name="terraform-emr-cluster-v2",
///     deploy_mode="NORMAL",
///     security_mode="NORMAL",
///     applications=[
///         "HADOOP-COMMON",
///         "HDFS",
///         "YARN",
///         "HIVE",
///         "SPARK3",
///         "TEZ",
///     ],
///     application_configs=[
///         {
///             "application_name": "HIVE",
///             "config_file_name": "hivemetastore-site.xml",
///             "config_item_key": "hive.metastore.type",
///             "config_item_value": "DLF",
///             "config_scope": "CLUSTER",
///         },
///         {
///             "application_name": "SPARK3",
///             "config_file_name": "hive-site.xml",
///             "config_item_key": "hive.metastore.type",
///             "config_item_value": "DLF",
///             "config_scope": "CLUSTER",
///         },
///     ],
///     node_attributes=[{
///         "ram_role": default_role.name,
///         "security_group_id": default_security_group.id,
///         "vpc_id": default_network.id,
///         "zone_id": default_get_zones.zones[0].id,
///         "key_pair_name": default_ecs_key_pair.id,
///     }],
///     tags={
///         "created": "tf",
///     },
///     node_groups=[
///         {
///             "node_group_type": "MASTER",
///             "node_group_name": "emr-master",
///             "payment_type": "PayAsYouGo",
///             "vswitch_ids": [default_switch.id],
///             "with_public_ip": False,
///             "instance_types": ["ecs.g7.xlarge"],
///             "node_count": 1,
///             "system_disk": {
///                 "category": "cloud_essd",
///                 "size": 80,
///                 "count": 1,
///             },
///             "data_disks": [{
///                 "category": "cloud_essd",
///                 "size": 80,
///                 "count": 3,
///             }],
///         },
///         {
///             "node_group_type": "CORE",
///             "node_group_name": "emr-core",
///             "payment_type": "PayAsYouGo",
///             "vswitch_ids": [default_switch.id],
///             "with_public_ip": False,
///             "instance_types": ["ecs.g7.xlarge"],
///             "node_count": 3,
///             "system_disk": {
///                 "category": "cloud_essd",
///                 "size": 80,
///                 "count": 1,
///             },
///             "data_disks": [{
///                 "category": "cloud_essd",
///                 "size": 80,
///                 "count": 3,
///             }],
///         },
///     ],
///     resource_group_id=default.ids[0])
/// ids = alicloud.emrv2.get_clusters()
/// pulumi.export("emrv2ClustersId1", ids.clusters[0].id)
/// name_regex = alicloud.emrv2.get_clusters(name_regex=default_alicloud_emr_cluster["name"])
/// pulumi.export("emrv2ClustersId2", name_regex.clusters[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.ResourceManager.GetResourceGroups.Invoke(new()
///     {
///         Status = "OK",
///     });
///
///     var defaultGetZones = AliCloud.GetZones.Invoke(new()
///     {
///         AvailableInstanceType = "ecs.g7.xlarge",
///     });
///
///     var defaultNetwork = new AliCloud.Vpc.Network("default", new()
///     {
///         VpcName = "TF-VPC",
///         CidrBlock = "172.16.0.0/12",
///     });
///
///     var defaultSwitch = new AliCloud.Vpc.Switch("default", new()
///     {
///         VpcId = defaultNetwork.Id,
///         CidrBlock = "172.16.0.0/21",
///         ZoneId = defaultGetZones.Apply(getZonesResult => getZonesResult.Zones[0]?.Id),
///         VswitchName = "TF_VSwitch",
///     });
///
///     var defaultEcsKeyPair = new AliCloud.Ecs.EcsKeyPair("default", new()
///     {
///         KeyPairName = "terraform-kp",
///     });
///
///     var defaultSecurityGroup = new AliCloud.Ecs.SecurityGroup("default", new()
///     {
///         Name = "TF_SECURITY_GROUP",
///         VpcId = defaultNetwork.Id,
///     });
///
///     var defaultRole = new AliCloud.Ram.Role("default", new()
///     {
///         Name = "emrtf",
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
///         Description = "this is a role test.",
///         Force = true,
///     });
///
///     var defaultCluster = new AliCloud.Emrv2.Cluster("default", new()
///     {
///         PaymentType = "PayAsYouGo",
///         ClusterType = "DATALAKE",
///         ReleaseVersion = "EMR-5.10.0",
///         ClusterName = "terraform-emr-cluster-v2",
///         DeployMode = "NORMAL",
///         SecurityMode = "NORMAL",
///         Applications = new[]
///         {
///             "HADOOP-COMMON",
///             "HDFS",
///             "YARN",
///             "HIVE",
///             "SPARK3",
///             "TEZ",
///         },
///         ApplicationConfigs = new[]
///         {
///             new AliCloud.Emrv2.Inputs.ClusterApplicationConfigArgs
///             {
///                 ApplicationName = "HIVE",
///                 ConfigFileName = "hivemetastore-site.xml",
///                 ConfigItemKey = "hive.metastore.type",
///                 ConfigItemValue = "DLF",
///                 ConfigScope = "CLUSTER",
///             },
///             new AliCloud.Emrv2.Inputs.ClusterApplicationConfigArgs
///             {
///                 ApplicationName = "SPARK3",
///                 ConfigFileName = "hive-site.xml",
///                 ConfigItemKey = "hive.metastore.type",
///                 ConfigItemValue = "DLF",
///                 ConfigScope = "CLUSTER",
///             },
///         },
///         NodeAttributes = new[]
///         {
///             new AliCloud.Emrv2.Inputs.ClusterNodeAttributeArgs
///             {
///                 RamRole = defaultRole.Name,
///                 SecurityGroupId = defaultSecurityGroup.Id,
///                 VpcId = defaultNetwork.Id,
///                 ZoneId = defaultGetZones.Apply(getZonesResult => getZonesResult.Zones[0]?.Id),
///                 KeyPairName = defaultEcsKeyPair.Id,
///             },
///         },
///         Tags =
///         {
///             { "created", "tf" },
///         },
///         NodeGroups = new[]
///         {
///             new AliCloud.Emrv2.Inputs.ClusterNodeGroupArgs
///             {
///                 NodeGroupType = "MASTER",
///                 NodeGroupName = "emr-master",
///                 PaymentType = "PayAsYouGo",
///                 VswitchIds = new[]
///                 {
///                     defaultSwitch.Id,
///                 },
///                 WithPublicIp = false,
///                 InstanceTypes = new[]
///                 {
///                     "ecs.g7.xlarge",
///                 },
///                 NodeCount = 1,
///                 SystemDisk = new AliCloud.Emrv2.Inputs.ClusterNodeGroupSystemDiskArgs
///                 {
///                     Category = "cloud_essd",
///                     Size = 80,
///                     Count = 1,
///                 },
///                 DataDisks = new[]
///                 {
///                     new AliCloud.Emrv2.Inputs.ClusterNodeGroupDataDiskArgs
///                     {
///                         Category = "cloud_essd",
///                         Size = 80,
///                         Count = 3,
///                     },
///                 },
///             },
///             new AliCloud.Emrv2.Inputs.ClusterNodeGroupArgs
///             {
///                 NodeGroupType = "CORE",
///                 NodeGroupName = "emr-core",
///                 PaymentType = "PayAsYouGo",
///                 VswitchIds = new[]
///                 {
///                     defaultSwitch.Id,
///                 },
///                 WithPublicIp = false,
///                 InstanceTypes = new[]
///                 {
///                     "ecs.g7.xlarge",
///                 },
///                 NodeCount = 3,
///                 SystemDisk = new AliCloud.Emrv2.Inputs.ClusterNodeGroupSystemDiskArgs
///                 {
///                     Category = "cloud_essd",
///                     Size = 80,
///                     Count = 1,
///                 },
///                 DataDisks = new[]
///                 {
///                     new AliCloud.Emrv2.Inputs.ClusterNodeGroupDataDiskArgs
///                     {
///                         Category = "cloud_essd",
///                         Size = 80,
///                         Count = 3,
///                     },
///                 },
///             },
///         },
///         ResourceGroupId = @default.Apply(@default => @default.Apply(getResourceGroupsResult => getResourceGroupsResult.Ids[0])),
///     });
///
///     var ids = AliCloud.Emrv2.GetClusters.Invoke();
///
///     var nameRegex = AliCloud.Emrv2.GetClusters.Invoke(new()
///     {
///         NameRegex = defaultAlicloudEmrCluster.Name,
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["emrv2ClustersId1"] = ids.Apply(getClustersResult => getClustersResult.Clusters[0]?.Id),
///         ["emrv2ClustersId2"] = nameRegex.Apply(getClustersResult => getClustersResult.Clusters[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ecs"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/emrv2"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ram"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/resourcemanager"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := resourcemanager.GetResourceGroups(ctx, &resourcemanager.GetResourceGroupsArgs{
/// 			Status: pulumi.StringRef("OK"),
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
/// 			VpcName:   pulumi.String("TF-VPC"),
/// 			CidrBlock: pulumi.String("172.16.0.0/12"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSwitch, err := vpc.NewSwitch(ctx, "default", &vpc.SwitchArgs{
/// 			VpcId:       defaultNetwork.ID(),
/// 			CidrBlock:   pulumi.String("172.16.0.0/21"),
/// 			ZoneId:      pulumi.String(defaultGetZones.Zones[0].Id),
/// 			VswitchName: pulumi.String("TF_VSwitch"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultEcsKeyPair, err := ecs.NewEcsKeyPair(ctx, "default", &ecs.EcsKeyPairArgs{
/// 			KeyPairName: pulumi.String("terraform-kp"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSecurityGroup, err := ecs.NewSecurityGroup(ctx, "default", &ecs.SecurityGroupArgs{
/// 			Name:  pulumi.String("TF_SECURITY_GROUP"),
/// 			VpcId: defaultNetwork.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultRole, err := ram.NewRole(ctx, "default", &ram.RoleArgs{
/// 			Name: pulumi.String("emrtf"),
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
/// 			Description: pulumi.String("this is a role test."),
/// 			Force:       pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = emrv2.NewCluster(ctx, "default", &emrv2.ClusterArgs{
/// 			PaymentType:    pulumi.String("PayAsYouGo"),
/// 			ClusterType:    pulumi.String("DATALAKE"),
/// 			ReleaseVersion: pulumi.String("EMR-5.10.0"),
/// 			ClusterName:    pulumi.String("terraform-emr-cluster-v2"),
/// 			DeployMode:     pulumi.String("NORMAL"),
/// 			SecurityMode:   pulumi.String("NORMAL"),
/// 			Applications: pulumi.StringArray{
/// 				pulumi.String("HADOOP-COMMON"),
/// 				pulumi.String("HDFS"),
/// 				pulumi.String("YARN"),
/// 				pulumi.String("HIVE"),
/// 				pulumi.String("SPARK3"),
/// 				pulumi.String("TEZ"),
/// 			},
/// 			ApplicationConfigs: emrv2.ClusterApplicationConfigArray{
/// 				&emrv2.ClusterApplicationConfigArgs{
/// 					ApplicationName: pulumi.String("HIVE"),
/// 					ConfigFileName:  pulumi.String("hivemetastore-site.xml"),
/// 					ConfigItemKey:   pulumi.String("hive.metastore.type"),
/// 					ConfigItemValue: pulumi.String("DLF"),
/// 					ConfigScope:     pulumi.String("CLUSTER"),
/// 				},
/// 				&emrv2.ClusterApplicationConfigArgs{
/// 					ApplicationName: pulumi.String("SPARK3"),
/// 					ConfigFileName:  pulumi.String("hive-site.xml"),
/// 					ConfigItemKey:   pulumi.String("hive.metastore.type"),
/// 					ConfigItemValue: pulumi.String("DLF"),
/// 					ConfigScope:     pulumi.String("CLUSTER"),
/// 				},
/// 			},
/// 			NodeAttributes: emrv2.ClusterNodeAttributeArray{
/// 				&emrv2.ClusterNodeAttributeArgs{
/// 					RamRole:         defaultRole.Name,
/// 					SecurityGroupId: defaultSecurityGroup.ID(),
/// 					VpcId:           defaultNetwork.ID(),
/// 					ZoneId:          pulumi.String(defaultGetZones.Zones[0].Id),
/// 					KeyPairName:     defaultEcsKeyPair.ID(),
/// 				},
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"created": pulumi.String("tf"),
/// 			},
/// 			NodeGroups: emrv2.ClusterNodeGroupArray{
/// 				&emrv2.ClusterNodeGroupArgs{
/// 					NodeGroupType: pulumi.String("MASTER"),
/// 					NodeGroupName: pulumi.String("emr-master"),
/// 					PaymentType:   pulumi.String("PayAsYouGo"),
/// 					VswitchIds: pulumi.StringArray{
/// 						defaultSwitch.ID(),
/// 					},
/// 					WithPublicIp: pulumi.Bool(false),
/// 					InstanceTypes: pulumi.StringArray{
/// 						pulumi.String("ecs.g7.xlarge"),
/// 					},
/// 					NodeCount: pulumi.Int(1),
/// 					SystemDisk: &emrv2.ClusterNodeGroupSystemDiskArgs{
/// 						Category: pulumi.String("cloud_essd"),
/// 						Size:     pulumi.Int(80),
/// 						Count:    pulumi.Int(1),
/// 					},
/// 					DataDisks: emrv2.ClusterNodeGroupDataDiskArray{
/// 						&emrv2.ClusterNodeGroupDataDiskArgs{
/// 							Category: pulumi.String("cloud_essd"),
/// 							Size:     pulumi.Int(80),
/// 							Count:    pulumi.Int(3),
/// 						},
/// 					},
/// 				},
/// 				&emrv2.ClusterNodeGroupArgs{
/// 					NodeGroupType: pulumi.String("CORE"),
/// 					NodeGroupName: pulumi.String("emr-core"),
/// 					PaymentType:   pulumi.String("PayAsYouGo"),
/// 					VswitchIds: pulumi.StringArray{
/// 						defaultSwitch.ID(),
/// 					},
/// 					WithPublicIp: pulumi.Bool(false),
/// 					InstanceTypes: pulumi.StringArray{
/// 						pulumi.String("ecs.g7.xlarge"),
/// 					},
/// 					NodeCount: pulumi.Int(3),
/// 					SystemDisk: &emrv2.ClusterNodeGroupSystemDiskArgs{
/// 						Category: pulumi.String("cloud_essd"),
/// 						Size:     pulumi.Int(80),
/// 						Count:    pulumi.Int(1),
/// 					},
/// 					DataDisks: emrv2.ClusterNodeGroupDataDiskArray{
/// 						&emrv2.ClusterNodeGroupDataDiskArgs{
/// 							Category: pulumi.String("cloud_essd"),
/// 							Size:     pulumi.Int(80),
/// 							Count:    pulumi.Int(3),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			ResourceGroupId: pulumi.String(_default.Ids[0]),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ids, err := emrv2.GetClusters(ctx, &emrv2.GetClustersArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("emrv2ClustersId1", ids.Clusters[0].Id)
/// 		nameRegex, err := emrv2.GetClusters(ctx, &emrv2.GetClustersArgs{
/// 			NameRegex: pulumi.StringRef(defaultAlicloudEmrCluster.Name),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("emrv2ClustersId2", nameRegex.Clusters[0].Id)
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
/// import com.pulumi.alicloud.AlicloudFunctions;
/// import com.pulumi.alicloud.inputs.GetZonesArgs;
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.ecs.EcsKeyPair;
/// import com.pulumi.alicloud.ecs.EcsKeyPairArgs;
/// import com.pulumi.alicloud.ecs.SecurityGroup;
/// import com.pulumi.alicloud.ecs.SecurityGroupArgs;
/// import com.pulumi.alicloud.ram.Role;
/// import com.pulumi.alicloud.ram.RoleArgs;
/// import com.pulumi.alicloud.emrv2.Cluster;
/// import com.pulumi.alicloud.emrv2.ClusterArgs;
/// import com.pulumi.alicloud.emrv2.inputs.ClusterApplicationConfigArgs;
/// import com.pulumi.alicloud.emrv2.inputs.ClusterNodeAttributeArgs;
/// import com.pulumi.alicloud.emrv2.inputs.ClusterNodeGroupArgs;
/// import com.pulumi.alicloud.emrv2.inputs.ClusterNodeGroupSystemDiskArgs;
/// import com.pulumi.alicloud.emrv2.Emrv2Functions;
/// import com.pulumi.alicloud.emrv2.inputs.GetClustersArgs;
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
///         final var default = ResourcemanagerFunctions.getResourceGroups(GetResourceGroupsArgs.builder()
///             .status("OK")
///             .build());
///
///         final var defaultGetZones = AlicloudFunctions.getZones(GetZonesArgs.builder()
///             .availableInstanceType("ecs.g7.xlarge")
///             .build());
///
///         var defaultNetwork = new Network("defaultNetwork", NetworkArgs.builder()
///             .vpcName("TF-VPC")
///             .cidrBlock("172.16.0.0/12")
///             .build());
///
///         var defaultSwitch = new Switch("defaultSwitch", SwitchArgs.builder()
///             .vpcId(defaultNetwork.id())
///             .cidrBlock("172.16.0.0/21")
///             .zoneId(defaultGetZones.zones()[0].id())
///             .vswitchName("TF_VSwitch")
///             .build());
///
///         var defaultEcsKeyPair = new EcsKeyPair("defaultEcsKeyPair", EcsKeyPairArgs.builder()
///             .keyPairName("terraform-kp")
///             .build());
///
///         var defaultSecurityGroup = new SecurityGroup("defaultSecurityGroup", SecurityGroupArgs.builder()
///             .name("TF_SECURITY_GROUP")
///             .vpcId(defaultNetwork.id())
///             .build());
///
///         var defaultRole = new Role("defaultRole", RoleArgs.builder()
///             .name("emrtf")
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
///             .description("this is a role test.")
///             .force(true)
///             .build());
///
///         var defaultCluster = new Cluster("defaultCluster", ClusterArgs.builder()
///             .paymentType("PayAsYouGo")
///             .clusterType("DATALAKE")
///             .releaseVersion("EMR-5.10.0")
///             .clusterName("terraform-emr-cluster-v2")
///             .deployMode("NORMAL")
///             .securityMode("NORMAL")
///             .applications(
///                 "HADOOP-COMMON",
///                 "HDFS",
///                 "YARN",
///                 "HIVE",
///                 "SPARK3",
///                 "TEZ")
///             .applicationConfigs(
///                 ClusterApplicationConfigArgs.builder()
///                     .applicationName("HIVE")
///                     .configFileName("hivemetastore-site.xml")
///                     .configItemKey("hive.metastore.type")
///                     .configItemValue("DLF")
///                     .configScope("CLUSTER")
///                     .build(),
///                 ClusterApplicationConfigArgs.builder()
///                     .applicationName("SPARK3")
///                     .configFileName("hive-site.xml")
///                     .configItemKey("hive.metastore.type")
///                     .configItemValue("DLF")
///                     .configScope("CLUSTER")
///                     .build())
///             .nodeAttributes(ClusterNodeAttributeArgs.builder()
///                 .ramRole(defaultRole.name())
///                 .securityGroupId(defaultSecurityGroup.id())
///                 .vpcId(defaultNetwork.id())
///                 .zoneId(defaultGetZones.zones()[0].id())
///                 .keyPairName(defaultEcsKeyPair.id())
///                 .build())
///             .tags(Map.of("created", "tf"))
///             .nodeGroups(
///                 ClusterNodeGroupArgs.builder()
///                     .nodeGroupType("MASTER")
///                     .nodeGroupName("emr-master")
///                     .paymentType("PayAsYouGo")
///                     .vswitchIds(defaultSwitch.id())
///                     .withPublicIp(false)
///                     .instanceTypes("ecs.g7.xlarge")
///                     .nodeCount(1)
///                     .systemDisk(ClusterNodeGroupSystemDiskArgs.builder()
///                         .category("cloud_essd")
///                         .size(80)
///                         .count(1)
///                         .build())
///                     .dataDisks(ClusterNodeGroupDataDiskArgs.builder()
///                         .category("cloud_essd")
///                         .size(80)
///                         .count(3)
///                         .build())
///                     .build(),
///                 ClusterNodeGroupArgs.builder()
///                     .nodeGroupType("CORE")
///                     .nodeGroupName("emr-core")
///                     .paymentType("PayAsYouGo")
///                     .vswitchIds(defaultSwitch.id())
///                     .withPublicIp(false)
///                     .instanceTypes("ecs.g7.xlarge")
///                     .nodeCount(3)
///                     .systemDisk(ClusterNodeGroupSystemDiskArgs.builder()
///                         .category("cloud_essd")
///                         .size(80)
///                         .count(1)
///                         .build())
///                     .dataDisks(ClusterNodeGroupDataDiskArgs.builder()
///                         .category("cloud_essd")
///                         .size(80)
///                         .count(3)
///                         .build())
///                     .build())
///             .resourceGroupId(default_.ids()[0])
///             .build());
///
///         final var ids = Emrv2Functions.getClusters(GetClustersArgs.builder()
///             .build());
///
///         ctx.export("emrv2ClustersId1", ids.clusters()[0].id());
///         final var nameRegex = Emrv2Functions.getClusters(GetClustersArgs.builder()
///             .nameRegex(defaultAlicloudEmrCluster.name())
///             .build());
///
///         ctx.export("emrv2ClustersId2", nameRegex.clusters()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   defaultNetwork:
///     type: alicloud:vpc:Network
///     name: default
///     properties:
///       vpcName: TF-VPC
///       cidrBlock: 172.16.0.0/12
///   defaultSwitch:
///     type: alicloud:vpc:Switch
///     name: default
///     properties:
///       vpcId: ${defaultNetwork.id}
///       cidrBlock: 172.16.0.0/21
///       zoneId: ${defaultGetZones.zones[0].id}
///       vswitchName: TF_VSwitch
///   defaultEcsKeyPair:
///     type: alicloud:ecs:EcsKeyPair
///     name: default
///     properties:
///       keyPairName: terraform-kp
///   defaultSecurityGroup:
///     type: alicloud:ecs:SecurityGroup
///     name: default
///     properties:
///       name: TF_SECURITY_GROUP
///       vpcId: ${defaultNetwork.id}
///   defaultRole:
///     type: alicloud:ram:Role
///     name: default
///     properties:
///       name: emrtf
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
///       description: this is a role test.
///       force: true
///   defaultCluster:
///     type: alicloud:emrv2:Cluster
///     name: default
///     properties:
///       paymentType: PayAsYouGo
///       clusterType: DATALAKE
///       releaseVersion: EMR-5.10.0
///       clusterName: terraform-emr-cluster-v2
///       deployMode: NORMAL
///       securityMode: NORMAL
///       applications:
///         - HADOOP-COMMON
///         - HDFS
///         - YARN
///         - HIVE
///         - SPARK3
///         - TEZ
///       applicationConfigs:
///         - applicationName: HIVE
///           configFileName: hivemetastore-site.xml
///           configItemKey: hive.metastore.type
///           configItemValue: DLF
///           configScope: CLUSTER
///         - applicationName: SPARK3
///           configFileName: hive-site.xml
///           configItemKey: hive.metastore.type
///           configItemValue: DLF
///           configScope: CLUSTER
///       nodeAttributes:
///         - ramRole: ${defaultRole.name}
///           securityGroupId: ${defaultSecurityGroup.id}
///           vpcId: ${defaultNetwork.id}
///           zoneId: ${defaultGetZones.zones[0].id}
///           keyPairName: ${defaultEcsKeyPair.id}
///       tags:
///         created: tf
///       nodeGroups:
///         - nodeGroupType: MASTER
///           nodeGroupName: emr-master
///           paymentType: PayAsYouGo
///           vswitchIds:
///             - ${defaultSwitch.id}
///           withPublicIp: false
///           instanceTypes:
///             - ecs.g7.xlarge
///           nodeCount: 1
///           systemDisk:
///             category: cloud_essd
///             size: 80
///             count: 1
///           dataDisks:
///             - category: cloud_essd
///               size: 80
///               count: 3
///         - nodeGroupType: CORE
///           nodeGroupName: emr-core
///           paymentType: PayAsYouGo
///           vswitchIds:
///             - ${defaultSwitch.id}
///           withPublicIp: false
///           instanceTypes:
///             - ecs.g7.xlarge
///           nodeCount: 3
///           systemDisk:
///             category: cloud_essd
///             size: 80
///             count: 1
///           dataDisks:
///             - category: cloud_essd
///               size: 80
///               count: 3
///       resourceGroupId: ${default.ids[0]}
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:resourcemanager:getResourceGroups
///       arguments:
///         status: OK
///   defaultGetZones:
///     fn::invoke:
///       function: alicloud:getZones
///       arguments:
///         availableInstanceType: ecs.g7.xlarge
///   ids:
///     fn::invoke:
///       function: alicloud:emrv2:getClusters
///       arguments: {}
///   nameRegex:
///     fn::invoke:
///       function: alicloud:emrv2:getClusters
///       arguments:
///         nameRegex: ${defaultAlicloudEmrCluster.name}
/// outputs:
///   emrv2ClustersId1: ${ids.clusters[0].id}
///   emrv2ClustersId2: ${nameRegex.clusters[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_emrv2_get_clusters_get_clusters_args_doc}
/// [options] Invoke options controlling this call.
Future<GetClustersResult> getClusters(
  GetClustersArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:emrv2/getClusters:getClusters',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetClustersResult.fromMap(result);
}
