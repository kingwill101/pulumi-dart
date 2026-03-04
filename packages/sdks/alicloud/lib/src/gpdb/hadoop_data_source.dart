import 'package:pulumi/pulumi.dart' as pulumi;
import 'hadoop_data_source_args.dart';
import 'hadoop_data_source_state.dart';

/// Provides a GPDB Hadoop Data Source resource.
///
/// Hadoop DataSource Config.
///
/// For information about GPDB Hadoop Data Source and how to use it, see [What is Hadoop Data Source](https://www.alibabacloud.com/help/en/analyticdb/analyticdb-for-postgresql/developer-reference/api-gpdb-2016-05-03-createhadoopdatasource).
///
/// &gt; **NOTE:** Available since v1.230.0.
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
/// const _default = alicloud.getZones({
///     availableResourceCreation: "VSwitch",
/// });
/// const defaultGetNetworks = alicloud.vpc.getNetworks({
///     nameRegex: "^default-NODELETING$",
/// });
/// const defaultGetSwitches = defaultGetNetworks.then(defaultGetNetworks => alicloud.vpc.getSwitches({
///     vpcId: defaultGetNetworks.ids?.[0],
///     zoneId: "cn-beijing-h",
/// }));
/// const defaultEcsKeyPair = new alicloud.ecs.EcsKeyPair("default", {keyPairName: name});
/// const defaultSecurityGroup = new alicloud.ecs.SecurityGroup("default", {
///     name: name,
///     vpcId: defaultGetNetworks.then(defaultGetNetworks => defaultGetNetworks.ids?.[0]),
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
/// const defaultGetResourceGroups = alicloud.resourcemanager.getResourceGroups({
///     status: "OK",
/// });
/// const defaultGetKeys = alicloud.kms.getKeys({
///     status: "Enabled",
/// });
/// const defaultCluster = new alicloud.emrv2.Cluster("default", {
///     nodeGroups: [
///         {
///             vswitchIds: [defaultGetSwitches.then(defaultGetSwitches => defaultGetSwitches.ids?.[0])],
///             instanceTypes: ["ecs.g6.xlarge"],
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
///             vswitchIds: [defaultGetSwitches.then(defaultGetSwitches => defaultGetSwitches.ids?.[0])],
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
///             instanceTypes: ["ecs.g6.xlarge"],
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
///         zoneId: "cn-beijing-h",
///         keyPairName: defaultEcsKeyPair.id,
///         dataDiskEncrypted: true,
///         dataDiskKmsKeyId: defaultGetKeys.then(defaultGetKeys => defaultGetKeys.ids?.[0]),
///         vpcId: defaultGetNetworks.then(defaultGetNetworks => defaultGetNetworks.ids?.[0]),
///         ramRole: defaultRole.name,
///         securityGroupId: defaultSecurityGroup.id,
///     }],
///     resourceGroupId: defaultGetResourceGroups.then(defaultGetResourceGroups => defaultGetResourceGroups.ids?.[0]),
///     clusterName: name,
///     paymentType: "PayAsYouGo",
///     clusterType: "DATAFLOW",
/// });
/// const defaultZoepvx = new alicloud.gpdb.Instance("defaultZoepvx", {
///     instanceSpec: "2C8G",
///     description: name,
///     segNodeNum: 2,
///     segStorageType: "cloud_essd",
///     instanceNetworkType: "VPC",
///     paymentType: "PayAsYouGo",
///     sslEnabled: 0,
///     engineVersion: "6.0",
///     zoneId: "cn-beijing-h",
///     vswitchId: defaultGetSwitches.then(defaultGetSwitches => defaultGetSwitches.ids?.[0]),
///     storageSize: 50,
///     masterCu: 4,
///     vpcId: defaultGetNetworks.then(defaultGetNetworks => defaultGetNetworks.ids?.[0]),
///     dbInstanceMode: "StorageElastic",
///     engine: "gpdb",
///     dbInstanceCategory: "Basic",
/// });
/// const defaultyOxz1K = new alicloud.gpdb.ExternalDataService("defaultyOxz1K", {
///     serviceName: name,
///     dbInstanceId: defaultZoepvx.id,
///     serviceDescription: name,
///     serviceSpec: "8",
/// });
/// const defaultHadoopDataSource = new alicloud.gpdb.HadoopDataSource("default", {
///     hdfsConf: "aaa",
///     dataSourceName: defaultyOxz1K.serviceName,
///     yarnConf: "aaa",
///     hiveConf: "aaa",
///     hadoopCreateType: "emr",
///     dataSourceDescription: name,
///     mapReduceConf: "aaa",
///     dataSourceType: "hive",
///     hadoopCoreConf: "aaa",
///     emrInstanceId: defaultCluster.id,
///     dbInstanceId: defaultZoepvx.id,
///     hadoopHostsAddress: "aaa",
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
/// default = alicloud.get_zones(available_resource_creation="VSwitch")
/// default_get_networks = alicloud.vpc.get_networks(name_regex="^default-NODELETING$")
/// default_get_switches = alicloud.vpc.get_switches(vpc_id=default_get_networks.ids[0],
///     zone_id="cn-beijing-h")
/// default_ecs_key_pair = alicloud.ecs.EcsKeyPair("default", key_pair_name=name)
/// default_security_group = alicloud.ecs.SecurityGroup("default",
///     name=name,
///     vpc_id=default_get_networks.ids[0])
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
/// default_get_resource_groups = alicloud.resourcemanager.get_resource_groups(status="OK")
/// default_get_keys = alicloud.kms.get_keys(status="Enabled")
/// default_cluster = alicloud.emrv2.Cluster("default",
///     node_groups=[
///         {
///             "vswitch_ids": [default_get_switches.ids[0]],
///             "instance_types": ["ecs.g6.xlarge"],
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
///             "vswitch_ids": [default_get_switches.ids[0]],
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
///             "instance_types": ["ecs.g6.xlarge"],
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
///         "zone_id": "cn-beijing-h",
///         "key_pair_name": default_ecs_key_pair.id,
///         "data_disk_encrypted": True,
///         "data_disk_kms_key_id": default_get_keys.ids[0],
///         "vpc_id": default_get_networks.ids[0],
///         "ram_role": default_role.name,
///         "security_group_id": default_security_group.id,
///     }],
///     resource_group_id=default_get_resource_groups.ids[0],
///     cluster_name=name,
///     payment_type="PayAsYouGo",
///     cluster_type="DATAFLOW")
/// default_zoepvx = alicloud.gpdb.Instance("defaultZoepvx",
///     instance_spec="2C8G",
///     description=name,
///     seg_node_num=2,
///     seg_storage_type="cloud_essd",
///     instance_network_type="VPC",
///     payment_type="PayAsYouGo",
///     ssl_enabled=0,
///     engine_version="6.0",
///     zone_id="cn-beijing-h",
///     vswitch_id=default_get_switches.ids[0],
///     storage_size=50,
///     master_cu=4,
///     vpc_id=default_get_networks.ids[0],
///     db_instance_mode="StorageElastic",
///     engine="gpdb",
///     db_instance_category="Basic")
/// defaulty_oxz1_k = alicloud.gpdb.ExternalDataService("defaultyOxz1K",
///     service_name=name,
///     db_instance_id=default_zoepvx.id,
///     service_description=name,
///     service_spec="8")
/// default_hadoop_data_source = alicloud.gpdb.HadoopDataSource("default",
///     hdfs_conf="aaa",
///     data_source_name=defaulty_oxz1_k.service_name,
///     yarn_conf="aaa",
///     hive_conf="aaa",
///     hadoop_create_type="emr",
///     data_source_description=name,
///     map_reduce_conf="aaa",
///     data_source_type="hive",
///     hadoop_core_conf="aaa",
///     emr_instance_id=default_cluster.id,
///     db_instance_id=default_zoepvx.id,
///     hadoop_hosts_address="aaa")
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
///     var @default = AliCloud.GetZones.Invoke(new()
///     {
///         AvailableResourceCreation = "VSwitch",
///     });
///
///     var defaultGetNetworks = AliCloud.Vpc.GetNetworks.Invoke(new()
///     {
///         NameRegex = "^default-NODELETING$",
///     });
///
///     var defaultGetSwitches = AliCloud.Vpc.GetSwitches.Invoke(new()
///     {
///         VpcId = defaultGetNetworks.Apply(getNetworksResult => getNetworksResult.Ids[0]),
///         ZoneId = "cn-beijing-h",
///     });
///
///     var defaultEcsKeyPair = new AliCloud.Ecs.EcsKeyPair("default", new()
///     {
///         KeyPairName = name,
///     });
///
///     var defaultSecurityGroup = new AliCloud.Ecs.SecurityGroup("default", new()
///     {
///         Name = name,
///         VpcId = defaultGetNetworks.Apply(getNetworksResult => getNetworksResult.Ids[0]),
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
///     var defaultGetResourceGroups = AliCloud.ResourceManager.GetResourceGroups.Invoke(new()
///     {
///         Status = "OK",
///     });
///
///     var defaultGetKeys = AliCloud.Kms.GetKeys.Invoke(new()
///     {
///         Status = "Enabled",
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
///                     defaultGetSwitches.Apply(getSwitchesResult => getSwitchesResult.Ids[0]),
///                 },
///                 InstanceTypes = new[]
///                 {
///                     "ecs.g6.xlarge",
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
///                     defaultGetSwitches.Apply(getSwitchesResult => getSwitchesResult.Ids[0]),
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
///                     "ecs.g6.xlarge",
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
///                 ZoneId = "cn-beijing-h",
///                 KeyPairName = defaultEcsKeyPair.Id,
///                 DataDiskEncrypted = true,
///                 DataDiskKmsKeyId = defaultGetKeys.Apply(getKeysResult => getKeysResult.Ids[0]),
///                 VpcId = defaultGetNetworks.Apply(getNetworksResult => getNetworksResult.Ids[0]),
///                 RamRole = defaultRole.Name,
///                 SecurityGroupId = defaultSecurityGroup.Id,
///             },
///         },
///         ResourceGroupId = defaultGetResourceGroups.Apply(getResourceGroupsResult => getResourceGroupsResult.Ids[0]),
///         ClusterName = name,
///         PaymentType = "PayAsYouGo",
///         ClusterType = "DATAFLOW",
///     });
///
///     var defaultZoepvx = new AliCloud.Gpdb.Instance("defaultZoepvx", new()
///     {
///         InstanceSpec = "2C8G",
///         Description = name,
///         SegNodeNum = 2,
///         SegStorageType = "cloud_essd",
///         InstanceNetworkType = "VPC",
///         PaymentType = "PayAsYouGo",
///         SslEnabled = 0,
///         EngineVersion = "6.0",
///         ZoneId = "cn-beijing-h",
///         VswitchId = defaultGetSwitches.Apply(getSwitchesResult => getSwitchesResult.Ids[0]),
///         StorageSize = 50,
///         MasterCu = 4,
///         VpcId = defaultGetNetworks.Apply(getNetworksResult => getNetworksResult.Ids[0]),
///         DbInstanceMode = "StorageElastic",
///         Engine = "gpdb",
///         DbInstanceCategory = "Basic",
///     });
///
///     var defaultyOxz1K = new AliCloud.Gpdb.ExternalDataService("defaultyOxz1K", new()
///     {
///         ServiceName = name,
///         DbInstanceId = defaultZoepvx.Id,
///         ServiceDescription = name,
///         ServiceSpec = "8",
///     });
///
///     var defaultHadoopDataSource = new AliCloud.Gpdb.HadoopDataSource("default", new()
///     {
///         HdfsConf = "aaa",
///         DataSourceName = defaultyOxz1K.ServiceName,
///         YarnConf = "aaa",
///         HiveConf = "aaa",
///         HadoopCreateType = "emr",
///         DataSourceDescription = name,
///         MapReduceConf = "aaa",
///         DataSourceType = "hive",
///         HadoopCoreConf = "aaa",
///         EmrInstanceId = defaultCluster.Id,
///         DbInstanceId = defaultZoepvx.Id,
///         HadoopHostsAddress = "aaa",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ecs"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/emrv2"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/gpdb"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/kms"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ram"
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
/// 		_, err := alicloud.GetZones(ctx, &alicloud.GetZonesArgs{
/// 			AvailableResourceCreation: pulumi.StringRef("VSwitch"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetNetworks, err := vpc.GetNetworks(ctx, &vpc.GetNetworksArgs{
/// 			NameRegex: pulumi.StringRef("^default-NODELETING$"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetSwitches, err := vpc.GetSwitches(ctx, &vpc.GetSwitchesArgs{
/// 			VpcId:  pulumi.StringRef(defaultGetNetworks.Ids[0]),
/// 			ZoneId: pulumi.StringRef("cn-beijing-h"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultEcsKeyPair, err := ecs.NewEcsKeyPair(ctx, "default", &ecs.EcsKeyPairArgs{
/// 			KeyPairName: pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSecurityGroup, err := ecs.NewSecurityGroup(ctx, "default", &ecs.SecurityGroupArgs{
/// 			Name:  pulumi.String(name),
/// 			VpcId: pulumi.String(defaultGetNetworks.Ids[0]),
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
/// 		defaultGetResourceGroups, err := resourcemanager.GetResourceGroups(ctx, &resourcemanager.GetResourceGroupsArgs{
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
/// 		defaultCluster, err := emrv2.NewCluster(ctx, "default", &emrv2.ClusterArgs{
/// 			NodeGroups: emrv2.ClusterNodeGroupArray{
/// 				&emrv2.ClusterNodeGroupArgs{
/// 					VswitchIds: pulumi.StringArray{
/// 						pulumi.String(defaultGetSwitches.Ids[0]),
/// 					},
/// 					InstanceTypes: pulumi.StringArray{
/// 						pulumi.String("ecs.g6.xlarge"),
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
/// 						pulumi.String(defaultGetSwitches.Ids[0]),
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
/// 						pulumi.String("ecs.g6.xlarge"),
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
/// 					ZoneId:            pulumi.String("cn-beijing-h"),
/// 					KeyPairName:       defaultEcsKeyPair.ID(),
/// 					DataDiskEncrypted: pulumi.Bool(true),
/// 					DataDiskKmsKeyId:  pulumi.String(defaultGetKeys.Ids[0]),
/// 					VpcId:             pulumi.String(defaultGetNetworks.Ids[0]),
/// 					RamRole:           defaultRole.Name,
/// 					SecurityGroupId:   defaultSecurityGroup.ID(),
/// 				},
/// 			},
/// 			ResourceGroupId: pulumi.String(defaultGetResourceGroups.Ids[0]),
/// 			ClusterName:     pulumi.String(name),
/// 			PaymentType:     pulumi.String("PayAsYouGo"),
/// 			ClusterType:     pulumi.String("DATAFLOW"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultZoepvx, err := gpdb.NewInstance(ctx, "defaultZoepvx", &gpdb.InstanceArgs{
/// 			InstanceSpec:        pulumi.String("2C8G"),
/// 			Description:         pulumi.String(name),
/// 			SegNodeNum:          pulumi.Int(2),
/// 			SegStorageType:      pulumi.String("cloud_essd"),
/// 			InstanceNetworkType: pulumi.String("VPC"),
/// 			PaymentType:         pulumi.String("PayAsYouGo"),
/// 			SslEnabled:          pulumi.Int(0),
/// 			EngineVersion:       pulumi.String("6.0"),
/// 			ZoneId:              pulumi.String("cn-beijing-h"),
/// 			VswitchId:           pulumi.String(defaultGetSwitches.Ids[0]),
/// 			StorageSize:         pulumi.Int(50),
/// 			MasterCu:            pulumi.Int(4),
/// 			VpcId:               pulumi.String(defaultGetNetworks.Ids[0]),
/// 			DbInstanceMode:      pulumi.String("StorageElastic"),
/// 			Engine:              pulumi.String("gpdb"),
/// 			DbInstanceCategory:  pulumi.String("Basic"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultyOxz1K, err := gpdb.NewExternalDataService(ctx, "defaultyOxz1K", &gpdb.ExternalDataServiceArgs{
/// 			ServiceName:        pulumi.String(name),
/// 			DbInstanceId:       defaultZoepvx.ID(),
/// 			ServiceDescription: pulumi.String(name),
/// 			ServiceSpec:        pulumi.String("8"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = gpdb.NewHadoopDataSource(ctx, "default", &gpdb.HadoopDataSourceArgs{
/// 			HdfsConf:              pulumi.String("aaa"),
/// 			DataSourceName:        defaultyOxz1K.ServiceName,
/// 			YarnConf:              pulumi.String("aaa"),
/// 			HiveConf:              pulumi.String("aaa"),
/// 			HadoopCreateType:      pulumi.String("emr"),
/// 			DataSourceDescription: pulumi.String(name),
/// 			MapReduceConf:         pulumi.String("aaa"),
/// 			DataSourceType:        pulumi.String("hive"),
/// 			HadoopCoreConf:        pulumi.String("aaa"),
/// 			EmrInstanceId:         defaultCluster.ID(),
/// 			DbInstanceId:          defaultZoepvx.ID(),
/// 			HadoopHostsAddress:    pulumi.String("aaa"),
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
/// import com.pulumi.alicloud.AlicloudFunctions;
/// import com.pulumi.alicloud.inputs.GetZonesArgs;
/// import com.pulumi.alicloud.vpc.VpcFunctions;
/// import com.pulumi.alicloud.vpc.inputs.GetNetworksArgs;
/// import com.pulumi.alicloud.vpc.inputs.GetSwitchesArgs;
/// import com.pulumi.alicloud.ecs.EcsKeyPair;
/// import com.pulumi.alicloud.ecs.EcsKeyPairArgs;
/// import com.pulumi.alicloud.ecs.SecurityGroup;
/// import com.pulumi.alicloud.ecs.SecurityGroupArgs;
/// import com.pulumi.alicloud.ram.Role;
/// import com.pulumi.alicloud.ram.RoleArgs;
/// import com.pulumi.alicloud.resourcemanager.ResourcemanagerFunctions;
/// import com.pulumi.alicloud.resourcemanager.inputs.GetResourceGroupsArgs;
/// import com.pulumi.alicloud.kms.KmsFunctions;
/// import com.pulumi.alicloud.kms.inputs.GetKeysArgs;
/// import com.pulumi.alicloud.emrv2.Cluster;
/// import com.pulumi.alicloud.emrv2.ClusterArgs;
/// import com.pulumi.alicloud.emrv2.inputs.ClusterNodeGroupArgs;
/// import com.pulumi.alicloud.emrv2.inputs.ClusterNodeGroupSystemDiskArgs;
/// import com.pulumi.alicloud.emrv2.inputs.ClusterNodeAttributeArgs;
/// import com.pulumi.alicloud.gpdb.Instance;
/// import com.pulumi.alicloud.gpdb.InstanceArgs;
/// import com.pulumi.alicloud.gpdb.ExternalDataService;
/// import com.pulumi.alicloud.gpdb.ExternalDataServiceArgs;
/// import com.pulumi.alicloud.gpdb.HadoopDataSource;
/// import com.pulumi.alicloud.gpdb.HadoopDataSourceArgs;
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
///         final var default = AlicloudFunctions.getZones(GetZonesArgs.builder()
///             .availableResourceCreation("VSwitch")
///             .build());
///
///         final var defaultGetNetworks = VpcFunctions.getNetworks(GetNetworksArgs.builder()
///             .nameRegex("^default-NODELETING$")
///             .build());
///
///         final var defaultGetSwitches = VpcFunctions.getSwitches(GetSwitchesArgs.builder()
///             .vpcId(defaultGetNetworks.ids()[0])
///             .zoneId("cn-beijing-h")
///             .build());
///
///         var defaultEcsKeyPair = new EcsKeyPair("defaultEcsKeyPair", EcsKeyPairArgs.builder()
///             .keyPairName(name)
///             .build());
///
///         var defaultSecurityGroup = new SecurityGroup("defaultSecurityGroup", SecurityGroupArgs.builder()
///             .name(name)
///             .vpcId(defaultGetNetworks.ids()[0])
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
///         final var defaultGetResourceGroups = ResourcemanagerFunctions.getResourceGroups(GetResourceGroupsArgs.builder()
///             .status("OK")
///             .build());
///
///         final var defaultGetKeys = KmsFunctions.getKeys(GetKeysArgs.builder()
///             .status("Enabled")
///             .build());
///
///         var defaultCluster = new Cluster("defaultCluster", ClusterArgs.builder()
///             .nodeGroups(
///                 ClusterNodeGroupArgs.builder()
///                     .vswitchIds(defaultGetSwitches.ids()[0])
///                     .instanceTypes("ecs.g6.xlarge")
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
///                     .vswitchIds(defaultGetSwitches.ids()[0])
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
///                     .instanceTypes("ecs.g6.xlarge")
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
///                 .zoneId("cn-beijing-h")
///                 .keyPairName(defaultEcsKeyPair.id())
///                 .dataDiskEncrypted(true)
///                 .dataDiskKmsKeyId(defaultGetKeys.ids()[0])
///                 .vpcId(defaultGetNetworks.ids()[0])
///                 .ramRole(defaultRole.name())
///                 .securityGroupId(defaultSecurityGroup.id())
///                 .build())
///             .resourceGroupId(defaultGetResourceGroups.ids()[0])
///             .clusterName(name)
///             .paymentType("PayAsYouGo")
///             .clusterType("DATAFLOW")
///             .build());
///
///         var defaultZoepvx = new Instance("defaultZoepvx", InstanceArgs.builder()
///             .instanceSpec("2C8G")
///             .description(name)
///             .segNodeNum(2)
///             .segStorageType("cloud_essd")
///             .instanceNetworkType("VPC")
///             .paymentType("PayAsYouGo")
///             .sslEnabled(0)
///             .engineVersion("6.0")
///             .zoneId("cn-beijing-h")
///             .vswitchId(defaultGetSwitches.ids()[0])
///             .storageSize(50)
///             .masterCu(4)
///             .vpcId(defaultGetNetworks.ids()[0])
///             .dbInstanceMode("StorageElastic")
///             .engine("gpdb")
///             .dbInstanceCategory("Basic")
///             .build());
///
///         var defaultyOxz1K = new ExternalDataService("defaultyOxz1K", ExternalDataServiceArgs.builder()
///             .serviceName(name)
///             .dbInstanceId(defaultZoepvx.id())
///             .serviceDescription(name)
///             .serviceSpec("8")
///             .build());
///
///         var defaultHadoopDataSource = new HadoopDataSource("defaultHadoopDataSource", HadoopDataSourceArgs.builder()
///             .hdfsConf("aaa")
///             .dataSourceName(defaultyOxz1K.serviceName())
///             .yarnConf("aaa")
///             .hiveConf("aaa")
///             .hadoopCreateType("emr")
///             .dataSourceDescription(name)
///             .mapReduceConf("aaa")
///             .dataSourceType("hive")
///             .hadoopCoreConf("aaa")
///             .emrInstanceId(defaultCluster.id())
///             .dbInstanceId(defaultZoepvx.id())
///             .hadoopHostsAddress("aaa")
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
/// resources:
///   defaultEcsKeyPair:
///     type: alicloud:ecs:EcsKeyPair
///     name: default
///     properties:
///       keyPairName: ${name}
///   defaultSecurityGroup:
///     type: alicloud:ecs:SecurityGroup
///     name: default
///     properties:
///       name: ${name}
///       vpcId: ${defaultGetNetworks.ids[0]}
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
///             - ${defaultGetSwitches.ids[0]}
///           instanceTypes:
///             - ecs.g6.xlarge
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
///             - ${defaultGetSwitches.ids[0]}
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
///             - ecs.g6.xlarge
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
///         - zoneId: cn-beijing-h
///           keyPairName: ${defaultEcsKeyPair.id}
///           dataDiskEncrypted: 'true'
///           dataDiskKmsKeyId: ${defaultGetKeys.ids[0]}
///           vpcId: ${defaultGetNetworks.ids[0]}
///           ramRole: ${defaultRole.name}
///           securityGroupId: ${defaultSecurityGroup.id}
///       resourceGroupId: ${defaultGetResourceGroups.ids[0]}
///       clusterName: ${name}
///       paymentType: PayAsYouGo
///       clusterType: DATAFLOW
///   defaultZoepvx:
///     type: alicloud:gpdb:Instance
///     properties:
///       instanceSpec: 2C8G
///       description: ${name}
///       segNodeNum: '2'
///       segStorageType: cloud_essd
///       instanceNetworkType: VPC
///       paymentType: PayAsYouGo
///       sslEnabled: '0'
///       engineVersion: '6.0'
///       zoneId: cn-beijing-h
///       vswitchId: ${defaultGetSwitches.ids[0]}
///       storageSize: '50'
///       masterCu: '4'
///       vpcId: ${defaultGetNetworks.ids[0]}
///       dbInstanceMode: StorageElastic
///       engine: gpdb
///       dbInstanceCategory: Basic
///   defaultyOxz1K:
///     type: alicloud:gpdb:ExternalDataService
///     properties:
///       serviceName: ${name}
///       dbInstanceId: ${defaultZoepvx.id}
///       serviceDescription: ${name}
///       serviceSpec: '8'
///   defaultHadoopDataSource:
///     type: alicloud:gpdb:HadoopDataSource
///     name: default
///     properties:
///       hdfsConf: aaa
///       dataSourceName: ${defaultyOxz1K.serviceName}
///       yarnConf: aaa
///       hiveConf: aaa
///       hadoopCreateType: emr
///       dataSourceDescription: ${name}
///       mapReduceConf: aaa
///       dataSourceType: hive
///       hadoopCoreConf: aaa
///       emrInstanceId: ${defaultCluster.id}
///       dbInstanceId: ${defaultZoepvx.id}
///       hadoopHostsAddress: aaa
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:getZones
///       arguments:
///         availableResourceCreation: VSwitch
///   defaultGetNetworks:
///     fn::invoke:
///       function: alicloud:vpc:getNetworks
///       arguments:
///         nameRegex: ^default-NODELETING$
///   defaultGetSwitches:
///     fn::invoke:
///       function: alicloud:vpc:getSwitches
///       arguments:
///         vpcId: ${defaultGetNetworks.ids[0]}
///         zoneId: cn-beijing-h
///   defaultGetResourceGroups:
///     fn::invoke:
///       function: alicloud:resourcemanager:getResourceGroups
///       arguments:
///         status: OK
///   defaultGetKeys:
///     fn::invoke:
///       function: alicloud:kms:getKeys
///       arguments:
///         status: Enabled
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// GPDB Hadoop Data Source can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:gpdb/hadoopDataSource:HadoopDataSource example <db_instance_id>:<data_source_id>
/// ```
class HadoopDataSource extends pulumi.CustomResource {
  /// Creation time
  late final pulumi.Output<String> createTime;

  /// Data Source Description
  late final pulumi.Output<String?> dataSourceDescription;

  /// The data source ID.
  late final pulumi.Output<int> dataSourceId;

  /// Data Source Name
  late final pulumi.Output<String?> dataSourceName;

  /// The type of the data source. Valid values:
  ///
  /// *   mysql
  /// - postgresql
  ///
  /// *   hdfs
  /// - hive
  late final pulumi.Output<String?> dataSourceType;

  /// The instance ID.
  late final pulumi.Output<String> dbInstanceId;

  /// The ID of the Emr instance.
  late final pulumi.Output<String?> emrInstanceId;

  /// The string that specifies the content of the Hadoop core-site.xml file.
  late final pulumi.Output<String?> hadoopCoreConf;

  /// The type of the external service. Valid values:
  /// - emr: E-MapReduce (EMR) Hadoop cluster.
  /// - selfCreate: self-managed Hadoop cluster.
  late final pulumi.Output<String?> hadoopCreateType;

  /// The IP address and hostname of the Hadoop cluster (data source) in the /etc/hosts file.
  late final pulumi.Output<String?> hadoopHostsAddress;

  /// The string that specifies the content of the Hadoop hdfs-site.xml file. This parameter must be specified when DataSourceType is set to HDFS.
  late final pulumi.Output<String?> hdfsConf;

  /// The string that specifies the content of the Hadoop hive-site.xml file. This parameter must be specified when DataSourceType is set to Hive.
  late final pulumi.Output<String?> hiveConf;

  /// The content of the Hadoop mapred-site.xml file. This parameter must be specified when DataSourceType is set to HDFS.
  late final pulumi.Output<String?> mapReduceConf;

  /// Data Source Status
  late final pulumi.Output<String> status;

  /// The string that specifies the content of the Hadoop yarn-site.xml file. This parameter must be specified when DataSourceType is set to HDFS.
  late final pulumi.Output<String?> yarnConf;

  /// Creates a new [HadoopDataSource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [HadoopDataSource]. {@macro pulumi_gpdb_hadoop_data_source_hadoop_data_source_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  HadoopDataSource(
    String name, {
    HadoopDataSourceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:gpdb/hadoopDataSource:HadoopDataSource',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    createTime = registerOutput<String>('createTime');
    dataSourceDescription = registerOutput<String?>('dataSourceDescription');
    dataSourceId = registerOutput<int>('dataSourceId');
    dataSourceName = registerOutput<String?>('dataSourceName');
    dataSourceType = registerOutput<String?>('dataSourceType');
    dbInstanceId = registerOutput<String>('dbInstanceId');
    emrInstanceId = registerOutput<String?>('emrInstanceId');
    hadoopCoreConf = registerOutput<String?>('hadoopCoreConf');
    hadoopCreateType = registerOutput<String?>('hadoopCreateType');
    hadoopHostsAddress = registerOutput<String?>('hadoopHostsAddress');
    hdfsConf = registerOutput<String?>('hdfsConf');
    hiveConf = registerOutput<String?>('hiveConf');
    mapReduceConf = registerOutput<String?>('mapReduceConf');
    status = registerOutput<String>('status');
    yarnConf = registerOutput<String?>('yarnConf');
  }

  /// Gets an existing [HadoopDataSource] resource's state with the given [name] and [id].
  static HadoopDataSource get(
    String name,
    pulumi.Input<String> id, {
    HadoopDataSourceState? state,
  }) {
    return HadoopDataSource._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  HadoopDataSource._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:gpdb/hadoopDataSource:HadoopDataSource',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    createTime = registerOutput<String>('createTime');
    dataSourceDescription = registerOutput<String?>('dataSourceDescription');
    dataSourceId = registerOutput<int>('dataSourceId');
    dataSourceName = registerOutput<String?>('dataSourceName');
    dataSourceType = registerOutput<String?>('dataSourceType');
    dbInstanceId = registerOutput<String>('dbInstanceId');
    emrInstanceId = registerOutput<String?>('emrInstanceId');
    hadoopCoreConf = registerOutput<String?>('hadoopCoreConf');
    hadoopCreateType = registerOutput<String?>('hadoopCreateType');
    hadoopHostsAddress = registerOutput<String?>('hadoopHostsAddress');
    hdfsConf = registerOutput<String?>('hdfsConf');
    hiveConf = registerOutput<String?>('hiveConf');
    mapReduceConf = registerOutput<String?>('mapReduceConf');
    status = registerOutput<String>('status');
    yarnConf = registerOutput<String?>('yarnConf');
  }
}
