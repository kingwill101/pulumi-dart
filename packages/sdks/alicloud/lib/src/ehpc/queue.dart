import 'package:pulumi/pulumi.dart' as pulumi;
import 'queue_args.dart';
import 'queue_compute_node.dart';
import 'queue_state.dart';

/// Provides a Ehpc Queue resource.
///
/// E-HPC the compute queue of the cluster.
///
/// For information about Ehpc Queue and how to use it, see [What is Queue](https://next.api.alibabacloud.com/document/EHPC/2024-07-30/CreateQueue).
///
/// > **NOTE:** Available since v1.266.0.
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
/// const queueMinimalExampleVpc = new alicloud.vpc.Network("queue_minimal_example_vpc", {
///     isDefault: false,
///     cidrBlock: "10.0.0.0/8",
///     vpcName: "example-cluster-vpc",
/// });
/// const queueMinimalExampleVswitch = new alicloud.vpc.Switch("queue_minimal_example_vswitch", {
///     isDefault: false,
///     vpcId: queueMinimalExampleVpc.id,
///     zoneId: "cn-hangzhou-k",
///     cidrBlock: "10.0.0.0/24",
///     vswitchName: "example-cluster-vsw",
/// });
/// const queueMinimalExampleNas = new alicloud.nas.FileSystem("queue_minimal_example_nas", {
///     description: "example-cluster-nas",
///     storageType: "Capacity",
///     nfsAcl: {
///         enabled: false,
///     },
///     zoneId: "cn-hangzhou-k",
///     encryptType: 0,
///     protocolType: "NFS",
///     fileSystemType: "standard",
/// });
/// const queueMinimalExampleAccessGroup = new alicloud.nas.AccessGroup("queue_minimal_example_access_group", {
///     accessGroupType: "Vpc",
///     description: name,
///     accessGroupName: "StandardMountTarget",
///     fileSystemType: "standard",
/// });
/// const queueMinimalExampleSecurityGroup = new alicloud.ecs.SecurityGroup("queue_minimal_example_security_group", {
///     vpcId: queueMinimalExampleVpc.id,
///     securityGroupType: "normal",
/// });
/// const queueMinimalExampleMountDomain = new alicloud.nas.MountTarget("queue_minimal_example_mount_domain", {
///     vpcId: queueMinimalExampleVpc.id,
///     networkType: "Vpc",
///     accessGroupName: queueMinimalExampleAccessGroup.accessGroupName,
///     vswitchId: queueMinimalExampleVswitch.id,
///     fileSystemId: queueMinimalExampleNas.id,
/// });
/// const queueMinimalExampleAccessRule = new alicloud.nas.AccessRule("queue_minimal_example_access_rule", {
///     priority: 1,
///     accessGroupName: queueMinimalExampleAccessGroup.accessGroupName,
///     fileSystemType: queueMinimalExampleNas.fileSystemType,
///     sourceCidrIp: "10.0.0.0/8",
/// });
/// const queueMinimalClusterExample = new alicloud.ehpc.ClusterV2("queue_minimal_cluster_example", {
///     clusterCredentials: {
///         password: "aliHPC123",
///     },
///     clusterVpcId: queueMinimalExampleVpc.id,
///     clusterCategory: "Standard",
///     clusterMode: "Integrated",
///     securityGroupId: queueMinimalExampleSecurityGroup.id,
///     addons: [{
///         version: "1.0",
///         servicesSpec: `[
///         {
///           \\"ServiceName\\": \\"SSH\\",
///           \\"NetworkACL\\": [
///             {
///               \\"Port\\": 22,
///               \\"SourceCidrIp\\": \\"0.0.0.0/0\\",
///               \\"IpProtocol\\": \\"TCP\\"
///             }
///           ]
///         },
///         {
///           \\"ServiceName\\": \\"VNC\\",
///           \\"NetworkACL\\": [
///             {
///               \\"Port\\": 12016,
///               \\"SourceCidrIp\\": \\"0.0.0.0/0\\",
///               \\"IpProtocol\\": \\"TCP\\"
///             }
///           ]
///         },
///         {
///           \\"ServiceName\\": \\"CLIENT\\",
///           \\"ServiceAccessType\\": \\"URL\\",
///           \\"ServiceAccessUrl\\": \\"https://ehpc-app.oss-cn-hangzhou.aliyuncs.com/ClientRelease/E-HPC-Client-Mac-zh-cn.zip\\",
///           \\"NetworkACL\\": [
///             {
///               \\"Port\\": 12011,
///               \\"SourceCidrIp\\": \\"0.0.0.0/0\\",
///               \\"IpProtocol\\": \\"TCP\\"
///             }
///           ]
///         }
///       ]
/// `,
///         resourcesSpec: `{
///         \\"EipResource\\": {
///           \\"AutoCreate\\": true
///         },
///         \\"EcsResources\\": [
///           {
///             \\"ImageId\\": \\"centos_7_6_x64_20G_alibase_20211130.vhd\\",
///             \\"EnableHT\\": true,
///             \\"InstanceChargeType\\": \\"PostPaid\\",
///             \\"InstanceType\\": \\"ecs.c7.xlarge\\",
///             \\"SpotStrategy\\": \\"NoSpot\\",
///             \\"SystemDisk\\": {
///               \\"Category\\": \\"cloud_essd\\",
///               \\"Size\\": 40,
///               \\"Level\\": \\"PL0\\"
///             },
///             \\"DataDisks\\": [
///               {
///                 \\"Category\\": \\"cloud_essd\\",
///                 \\"Size\\": 40,
///                 \\"Level\\": \\"PL0\\"
///               }
///             ]
///           }
///         ]
///       }
/// `,
///         name: "Login",
///     }],
///     clusterName: "minimal-example-cluster",
///     deletionProtection: false,
///     sharedStorages: [
///         {
///             mountDirectory: "/home",
///             nasDirectory: "/",
///             mountTargetDomain: queueMinimalExampleMountDomain.mountTargetDomain,
///             protocolType: "NFS",
///             fileSystemId: queueMinimalExampleNas.id,
///             mountOptions: "-t nfs -o vers=3,nolock,proto=tcp,noresvport",
///         },
///         {
///             mountDirectory: "/opt",
///             nasDirectory: "/",
///             mountTargetDomain: queueMinimalExampleMountDomain.mountTargetDomain,
///             protocolType: "NFS",
///             fileSystemId: queueMinimalExampleNas.id,
///             mountOptions: "-t nfs -o vers=3,nolock,proto=tcp,noresvport",
///         },
///         {
///             mountDirectory: "/ehpcdata",
///             nasDirectory: "/",
///             mountTargetDomain: queueMinimalExampleMountDomain.mountTargetDomain,
///             protocolType: "NFS",
///             fileSystemId: queueMinimalExampleNas.id,
///             mountOptions: "-t nfs -o vers=3,nolock,proto=tcp,noresvport",
///         },
///     ],
///     clusterVswitchId: queueMinimalExampleVswitch.id,
///     manager: {
///         managerNode: {
///             systemDisk: {
///                 category: "cloud_essd",
///                 size: 40,
///                 level: "PL0",
///             },
///             enableHt: true,
///             instanceChargeType: "PostPaid",
///             imageId: "centos_7_6_x64_20G_alibase_20211130.vhd",
///             instanceType: "ecs.c6.xlarge",
///             spotStrategy: "NoSpot",
///         },
///         scheduler: {
///             type: "SLURM",
///             version: "22.05.8",
///         },
///         dns: {
///             type: "nis",
///             version: "1.0",
///         },
///         directoryService: {
///             type: "nis",
///             version: "1.0",
///         },
///     },
/// }, {
///     dependsOn: [queueMinimalExampleAccessRule],
/// });
/// const _default = new alicloud.ehpc.Queue("default", {
///     clusterId: queueMinimalClusterExample.id,
///     queueName: "autoque1",
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
/// queue_minimal_example_vpc = alicloud.vpc.Network("queue_minimal_example_vpc",
///     is_default=False,
///     cidr_block="10.0.0.0/8",
///     vpc_name="example-cluster-vpc")
/// queue_minimal_example_vswitch = alicloud.vpc.Switch("queue_minimal_example_vswitch",
///     is_default=False,
///     vpc_id=queue_minimal_example_vpc.id,
///     zone_id="cn-hangzhou-k",
///     cidr_block="10.0.0.0/24",
///     vswitch_name="example-cluster-vsw")
/// queue_minimal_example_nas = alicloud.nas.FileSystem("queue_minimal_example_nas",
///     description="example-cluster-nas",
///     storage_type="Capacity",
///     nfs_acl={
///         "enabled": False,
///     },
///     zone_id="cn-hangzhou-k",
///     encrypt_type=0,
///     protocol_type="NFS",
///     file_system_type="standard")
/// queue_minimal_example_access_group = alicloud.nas.AccessGroup("queue_minimal_example_access_group",
///     access_group_type="Vpc",
///     description=name,
///     access_group_name="StandardMountTarget",
///     file_system_type="standard")
/// queue_minimal_example_security_group = alicloud.ecs.SecurityGroup("queue_minimal_example_security_group",
///     vpc_id=queue_minimal_example_vpc.id,
///     security_group_type="normal")
/// queue_minimal_example_mount_domain = alicloud.nas.MountTarget("queue_minimal_example_mount_domain",
///     vpc_id=queue_minimal_example_vpc.id,
///     network_type="Vpc",
///     access_group_name=queue_minimal_example_access_group.access_group_name,
///     vswitch_id=queue_minimal_example_vswitch.id,
///     file_system_id=queue_minimal_example_nas.id)
/// queue_minimal_example_access_rule = alicloud.nas.AccessRule("queue_minimal_example_access_rule",
///     priority=1,
///     access_group_name=queue_minimal_example_access_group.access_group_name,
///     file_system_type=queue_minimal_example_nas.file_system_type,
///     source_cidr_ip="10.0.0.0/8")
/// queue_minimal_cluster_example = alicloud.ehpc.ClusterV2("queue_minimal_cluster_example",
///     cluster_credentials={
///         "password": "aliHPC123",
///     },
///     cluster_vpc_id=queue_minimal_example_vpc.id,
///     cluster_category="Standard",
///     cluster_mode="Integrated",
///     security_group_id=queue_minimal_example_security_group.id,
///     addons=[{
///         "version": "1.0",
///         "services_spec": """[
///         {
///           \"ServiceName\": \"SSH\",
///           \"NetworkACL\": [
///             {
///               \"Port\": 22,
///               \"SourceCidrIp\": \"0.0.0.0/0\",
///               \"IpProtocol\": \"TCP\"
///             }
///           ]
///         },
///         {
///           \"ServiceName\": \"VNC\",
///           \"NetworkACL\": [
///             {
///               \"Port\": 12016,
///               \"SourceCidrIp\": \"0.0.0.0/0\",
///               \"IpProtocol\": \"TCP\"
///             }
///           ]
///         },
///         {
///           \"ServiceName\": \"CLIENT\",
///           \"ServiceAccessType\": \"URL\",
///           \"ServiceAccessUrl\": \"https://ehpc-app.oss-cn-hangzhou.aliyuncs.com/ClientRelease/E-HPC-Client-Mac-zh-cn.zip\",
///           \"NetworkACL\": [
///             {
///               \"Port\": 12011,
///               \"SourceCidrIp\": \"0.0.0.0/0\",
///               \"IpProtocol\": \"TCP\"
///             }
///           ]
///         }
///       ]
/// """,
///         "resources_spec": """{
///         \"EipResource\": {
///           \"AutoCreate\": true
///         },
///         \"EcsResources\": [
///           {
///             \"ImageId\": \"centos_7_6_x64_20G_alibase_20211130.vhd\",
///             \"EnableHT\": true,
///             \"InstanceChargeType\": \"PostPaid\",
///             \"InstanceType\": \"ecs.c7.xlarge\",
///             \"SpotStrategy\": \"NoSpot\",
///             \"SystemDisk\": {
///               \"Category\": \"cloud_essd\",
///               \"Size\": 40,
///               \"Level\": \"PL0\"
///             },
///             \"DataDisks\": [
///               {
///                 \"Category\": \"cloud_essd\",
///                 \"Size\": 40,
///                 \"Level\": \"PL0\"
///               }
///             ]
///           }
///         ]
///       }
/// """,
///         "name": "Login",
///     }],
///     cluster_name="minimal-example-cluster",
///     deletion_protection=False,
///     shared_storages=[
///         {
///             "mount_directory": "/home",
///             "nas_directory": "/",
///             "mount_target_domain": queue_minimal_example_mount_domain.mount_target_domain,
///             "protocol_type": "NFS",
///             "file_system_id": queue_minimal_example_nas.id,
///             "mount_options": "-t nfs -o vers=3,nolock,proto=tcp,noresvport",
///         },
///         {
///             "mount_directory": "/opt",
///             "nas_directory": "/",
///             "mount_target_domain": queue_minimal_example_mount_domain.mount_target_domain,
///             "protocol_type": "NFS",
///             "file_system_id": queue_minimal_example_nas.id,
///             "mount_options": "-t nfs -o vers=3,nolock,proto=tcp,noresvport",
///         },
///         {
///             "mount_directory": "/ehpcdata",
///             "nas_directory": "/",
///             "mount_target_domain": queue_minimal_example_mount_domain.mount_target_domain,
///             "protocol_type": "NFS",
///             "file_system_id": queue_minimal_example_nas.id,
///             "mount_options": "-t nfs -o vers=3,nolock,proto=tcp,noresvport",
///         },
///     ],
///     cluster_vswitch_id=queue_minimal_example_vswitch.id,
///     manager={
///         "manager_node": {
///             "system_disk": {
///                 "category": "cloud_essd",
///                 "size": 40,
///                 "level": "PL0",
///             },
///             "enable_ht": True,
///             "instance_charge_type": "PostPaid",
///             "image_id": "centos_7_6_x64_20G_alibase_20211130.vhd",
///             "instance_type": "ecs.c6.xlarge",
///             "spot_strategy": "NoSpot",
///         },
///         "scheduler": {
///             "type": "SLURM",
///             "version": "22.05.8",
///         },
///         "dns": {
///             "type": "nis",
///             "version": "1.0",
///         },
///         "directory_service": {
///             "type": "nis",
///             "version": "1.0",
///         },
///     },
///     opts = pulumi.ResourceOptions(depends_on=[queue_minimal_example_access_rule]))
/// default = alicloud.ehpc.Queue("default",
///     cluster_id=queue_minimal_cluster_example.id,
///     queue_name="autoque1")
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
///     var queueMinimalExampleVpc = new AliCloud.Vpc.Network("queue_minimal_example_vpc", new()
///     {
///         IsDefault = false,
///         CidrBlock = "10.0.0.0/8",
///         VpcName = "example-cluster-vpc",
///     });
///
///     var queueMinimalExampleVswitch = new AliCloud.Vpc.Switch("queue_minimal_example_vswitch", new()
///     {
///         IsDefault = false,
///         VpcId = queueMinimalExampleVpc.Id,
///         ZoneId = "cn-hangzhou-k",
///         CidrBlock = "10.0.0.0/24",
///         VswitchName = "example-cluster-vsw",
///     });
///
///     var queueMinimalExampleNas = new AliCloud.Nas.FileSystem("queue_minimal_example_nas", new()
///     {
///         Description = "example-cluster-nas",
///         StorageType = "Capacity",
///         NfsAcl = new AliCloud.Nas.Inputs.FileSystemNfsAclArgs
///         {
///             Enabled = false,
///         },
///         ZoneId = "cn-hangzhou-k",
///         EncryptType = 0,
///         ProtocolType = "NFS",
///         FileSystemType = "standard",
///     });
///
///     var queueMinimalExampleAccessGroup = new AliCloud.Nas.AccessGroup("queue_minimal_example_access_group", new()
///     {
///         AccessGroupType = "Vpc",
///         Description = name,
///         AccessGroupName = "StandardMountTarget",
///         FileSystemType = "standard",
///     });
///
///     var queueMinimalExampleSecurityGroup = new AliCloud.Ecs.SecurityGroup("queue_minimal_example_security_group", new()
///     {
///         VpcId = queueMinimalExampleVpc.Id,
///         SecurityGroupType = "normal",
///     });
///
///     var queueMinimalExampleMountDomain = new AliCloud.Nas.MountTarget("queue_minimal_example_mount_domain", new()
///     {
///         VpcId = queueMinimalExampleVpc.Id,
///         NetworkType = "Vpc",
///         AccessGroupName = queueMinimalExampleAccessGroup.AccessGroupName,
///         VswitchId = queueMinimalExampleVswitch.Id,
///         FileSystemId = queueMinimalExampleNas.Id,
///     });
///
///     var queueMinimalExampleAccessRule = new AliCloud.Nas.AccessRule("queue_minimal_example_access_rule", new()
///     {
///         Priority = 1,
///         AccessGroupName = queueMinimalExampleAccessGroup.AccessGroupName,
///         FileSystemType = queueMinimalExampleNas.FileSystemType,
///         SourceCidrIp = "10.0.0.0/8",
///     });
///
///     var queueMinimalClusterExample = new AliCloud.Ehpc.ClusterV2("queue_minimal_cluster_example", new()
///     {
///         ClusterCredentials = new AliCloud.Ehpc.Inputs.ClusterV2ClusterCredentialsArgs
///         {
///             Password = "aliHPC123",
///         },
///         ClusterVpcId = queueMinimalExampleVpc.Id,
///         ClusterCategory = "Standard",
///         ClusterMode = "Integrated",
///         SecurityGroupId = queueMinimalExampleSecurityGroup.Id,
///         Addons = new[]
///         {
///             new AliCloud.Ehpc.Inputs.ClusterV2AddonArgs
///             {
///                 Version = "1.0",
///                 ServicesSpec = @"[
///         {
///           \""ServiceName\"": \""SSH\"",
///           \""NetworkACL\"": [
///             {
///               \""Port\"": 22,
///               \""SourceCidrIp\"": \""0.0.0.0/0\"",
///               \""IpProtocol\"": \""TCP\""
///             }
///           ]
///         },
///         {
///           \""ServiceName\"": \""VNC\"",
///           \""NetworkACL\"": [
///             {
///               \""Port\"": 12016,
///               \""SourceCidrIp\"": \""0.0.0.0/0\"",
///               \""IpProtocol\"": \""TCP\""
///             }
///           ]
///         },
///         {
///           \""ServiceName\"": \""CLIENT\"",
///           \""ServiceAccessType\"": \""URL\"",
///           \""ServiceAccessUrl\"": \""https://ehpc-app.oss-cn-hangzhou.aliyuncs.com/ClientRelease/E-HPC-Client-Mac-zh-cn.zip\"",
///           \""NetworkACL\"": [
///             {
///               \""Port\"": 12011,
///               \""SourceCidrIp\"": \""0.0.0.0/0\"",
///               \""IpProtocol\"": \""TCP\""
///             }
///           ]
///         }
///       ]
/// ",
///                 ResourcesSpec = @"{
///         \""EipResource\"": {
///           \""AutoCreate\"": true
///         },
///         \""EcsResources\"": [
///           {
///             \""ImageId\"": \""centos_7_6_x64_20G_alibase_20211130.vhd\"",
///             \""EnableHT\"": true,
///             \""InstanceChargeType\"": \""PostPaid\"",
///             \""InstanceType\"": \""ecs.c7.xlarge\"",
///             \""SpotStrategy\"": \""NoSpot\"",
///             \""SystemDisk\"": {
///               \""Category\"": \""cloud_essd\"",
///               \""Size\"": 40,
///               \""Level\"": \""PL0\""
///             },
///             \""DataDisks\"": [
///               {
///                 \""Category\"": \""cloud_essd\"",
///                 \""Size\"": 40,
///                 \""Level\"": \""PL0\""
///               }
///             ]
///           }
///         ]
///       }
/// ",
///                 Name = "Login",
///             },
///         },
///         ClusterName = "minimal-example-cluster",
///         DeletionProtection = false,
///         SharedStorages = new[]
///         {
///             new AliCloud.Ehpc.Inputs.ClusterV2SharedStorageArgs
///             {
///                 MountDirectory = "/home",
///                 NasDirectory = "/",
///                 MountTargetDomain = queueMinimalExampleMountDomain.MountTargetDomain,
///                 ProtocolType = "NFS",
///                 FileSystemId = queueMinimalExampleNas.Id,
///                 MountOptions = "-t nfs -o vers=3,nolock,proto=tcp,noresvport",
///             },
///             new AliCloud.Ehpc.Inputs.ClusterV2SharedStorageArgs
///             {
///                 MountDirectory = "/opt",
///                 NasDirectory = "/",
///                 MountTargetDomain = queueMinimalExampleMountDomain.MountTargetDomain,
///                 ProtocolType = "NFS",
///                 FileSystemId = queueMinimalExampleNas.Id,
///                 MountOptions = "-t nfs -o vers=3,nolock,proto=tcp,noresvport",
///             },
///             new AliCloud.Ehpc.Inputs.ClusterV2SharedStorageArgs
///             {
///                 MountDirectory = "/ehpcdata",
///                 NasDirectory = "/",
///                 MountTargetDomain = queueMinimalExampleMountDomain.MountTargetDomain,
///                 ProtocolType = "NFS",
///                 FileSystemId = queueMinimalExampleNas.Id,
///                 MountOptions = "-t nfs -o vers=3,nolock,proto=tcp,noresvport",
///             },
///         },
///         ClusterVswitchId = queueMinimalExampleVswitch.Id,
///         Manager = new AliCloud.Ehpc.Inputs.ClusterV2ManagerArgs
///         {
///             ManagerNode = new AliCloud.Ehpc.Inputs.ClusterV2ManagerManagerNodeArgs
///             {
///                 SystemDisk = new AliCloud.Ehpc.Inputs.ClusterV2ManagerManagerNodeSystemDiskArgs
///                 {
///                     Category = "cloud_essd",
///                     Size = 40,
///                     Level = "PL0",
///                 },
///                 EnableHt = true,
///                 InstanceChargeType = "PostPaid",
///                 ImageId = "centos_7_6_x64_20G_alibase_20211130.vhd",
///                 InstanceType = "ecs.c6.xlarge",
///                 SpotStrategy = "NoSpot",
///             },
///             Scheduler = new AliCloud.Ehpc.Inputs.ClusterV2ManagerSchedulerArgs
///             {
///                 Type = "SLURM",
///                 Version = "22.05.8",
///             },
///             Dns = new AliCloud.Ehpc.Inputs.ClusterV2ManagerDnsArgs
///             {
///                 Type = "nis",
///                 Version = "1.0",
///             },
///             DirectoryService = new AliCloud.Ehpc.Inputs.ClusterV2ManagerDirectoryServiceArgs
///             {
///                 Type = "nis",
///                 Version = "1.0",
///             },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             queueMinimalExampleAccessRule,
///         },
///     });
///
///     var @default = new AliCloud.Ehpc.Queue("default", new()
///     {
///         ClusterId = queueMinimalClusterExample.Id,
///         QueueName = "autoque1",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ecs"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ehpc"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/nas"
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
/// 		queueMinimalExampleVpc, err := vpc.NewNetwork(ctx, "queue_minimal_example_vpc", &vpc.NetworkArgs{
/// 			IsDefault: pulumi.Bool(false),
/// 			CidrBlock: pulumi.String("10.0.0.0/8"),
/// 			VpcName:   pulumi.String("example-cluster-vpc"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		queueMinimalExampleVswitch, err := vpc.NewSwitch(ctx, "queue_minimal_example_vswitch", &vpc.SwitchArgs{
/// 			IsDefault:   pulumi.Bool(false),
/// 			VpcId:       queueMinimalExampleVpc.ID(),
/// 			ZoneId:      pulumi.String("cn-hangzhou-k"),
/// 			CidrBlock:   pulumi.String("10.0.0.0/24"),
/// 			VswitchName: pulumi.String("example-cluster-vsw"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		queueMinimalExampleNas, err := nas.NewFileSystem(ctx, "queue_minimal_example_nas", &nas.FileSystemArgs{
/// 			Description: pulumi.String("example-cluster-nas"),
/// 			StorageType: pulumi.String("Capacity"),
/// 			NfsAcl: &nas.FileSystemNfsAclArgs{
/// 				Enabled: pulumi.Bool(false),
/// 			},
/// 			ZoneId:         pulumi.String("cn-hangzhou-k"),
/// 			EncryptType:    pulumi.Int(0),
/// 			ProtocolType:   pulumi.String("NFS"),
/// 			FileSystemType: pulumi.String("standard"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		queueMinimalExampleAccessGroup, err := nas.NewAccessGroup(ctx, "queue_minimal_example_access_group", &nas.AccessGroupArgs{
/// 			AccessGroupType: pulumi.String("Vpc"),
/// 			Description:     pulumi.String(name),
/// 			AccessGroupName: pulumi.String("StandardMountTarget"),
/// 			FileSystemType:  pulumi.String("standard"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		queueMinimalExampleSecurityGroup, err := ecs.NewSecurityGroup(ctx, "queue_minimal_example_security_group", &ecs.SecurityGroupArgs{
/// 			VpcId:             queueMinimalExampleVpc.ID(),
/// 			SecurityGroupType: pulumi.String("normal"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		queueMinimalExampleMountDomain, err := nas.NewMountTarget(ctx, "queue_minimal_example_mount_domain", &nas.MountTargetArgs{
/// 			VpcId:           queueMinimalExampleVpc.ID(),
/// 			NetworkType:     pulumi.String("Vpc"),
/// 			AccessGroupName: queueMinimalExampleAccessGroup.AccessGroupName,
/// 			VswitchId:       queueMinimalExampleVswitch.ID(),
/// 			FileSystemId:    queueMinimalExampleNas.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		queueMinimalExampleAccessRule, err := nas.NewAccessRule(ctx, "queue_minimal_example_access_rule", &nas.AccessRuleArgs{
/// 			Priority:        pulumi.Int(1),
/// 			AccessGroupName: queueMinimalExampleAccessGroup.AccessGroupName,
/// 			FileSystemType:  queueMinimalExampleNas.FileSystemType,
/// 			SourceCidrIp:    pulumi.String("10.0.0.0/8"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		queueMinimalClusterExample, err := ehpc.NewClusterV2(ctx, "queue_minimal_cluster_example", &ehpc.ClusterV2Args{
/// 			ClusterCredentials: &ehpc.ClusterV2ClusterCredentialsArgs{
/// 				Password: pulumi.String("aliHPC123"),
/// 			},
/// 			ClusterVpcId:    queueMinimalExampleVpc.ID(),
/// 			ClusterCategory: pulumi.String("Standard"),
/// 			ClusterMode:     pulumi.String("Integrated"),
/// 			SecurityGroupId: queueMinimalExampleSecurityGroup.ID(),
/// 			Addons: ehpc.ClusterV2AddonArray{
/// 				&ehpc.ClusterV2AddonArgs{
/// 					Version: pulumi.String("1.0"),
/// 					ServicesSpec: pulumi.String(`[
///         {
///           \"ServiceName\": \"SSH\",
///           \"NetworkACL\": [
///             {
///               \"Port\": 22,
///               \"SourceCidrIp\": \"0.0.0.0/0\",
///               \"IpProtocol\": \"TCP\"
///             }
///           ]
///         },
///         {
///           \"ServiceName\": \"VNC\",
///           \"NetworkACL\": [
///             {
///               \"Port\": 12016,
///               \"SourceCidrIp\": \"0.0.0.0/0\",
///               \"IpProtocol\": \"TCP\"
///             }
///           ]
///         },
///         {
///           \"ServiceName\": \"CLIENT\",
///           \"ServiceAccessType\": \"URL\",
///           \"ServiceAccessUrl\": \"https://ehpc-app.oss-cn-hangzhou.aliyuncs.com/ClientRelease/E-HPC-Client-Mac-zh-cn.zip\",
///           \"NetworkACL\": [
///             {
///               \"Port\": 12011,
///               \"SourceCidrIp\": \"0.0.0.0/0\",
///               \"IpProtocol\": \"TCP\"
///             }
///           ]
///         }
///       ]
/// `),
/// 					ResourcesSpec: pulumi.String(`{
///         \"EipResource\": {
///           \"AutoCreate\": true
///         },
///         \"EcsResources\": [
///           {
///             \"ImageId\": \"centos_7_6_x64_20G_alibase_20211130.vhd\",
///             \"EnableHT\": true,
///             \"InstanceChargeType\": \"PostPaid\",
///             \"InstanceType\": \"ecs.c7.xlarge\",
///             \"SpotStrategy\": \"NoSpot\",
///             \"SystemDisk\": {
///               \"Category\": \"cloud_essd\",
///               \"Size\": 40,
///               \"Level\": \"PL0\"
///             },
///             \"DataDisks\": [
///               {
///                 \"Category\": \"cloud_essd\",
///                 \"Size\": 40,
///                 \"Level\": \"PL0\"
///               }
///             ]
///           }
///         ]
///       }
/// `),
/// 					Name: pulumi.String("Login"),
/// 				},
/// 			},
/// 			ClusterName:        pulumi.String("minimal-example-cluster"),
/// 			DeletionProtection: pulumi.Bool(false),
/// 			SharedStorages: ehpc.ClusterV2SharedStorageArray{
/// 				&ehpc.ClusterV2SharedStorageArgs{
/// 					MountDirectory:    pulumi.String("/home"),
/// 					NasDirectory:      pulumi.String("/"),
/// 					MountTargetDomain: queueMinimalExampleMountDomain.MountTargetDomain,
/// 					ProtocolType:      pulumi.String("NFS"),
/// 					FileSystemId:      queueMinimalExampleNas.ID(),
/// 					MountOptions:      pulumi.String("-t nfs -o vers=3,nolock,proto=tcp,noresvport"),
/// 				},
/// 				&ehpc.ClusterV2SharedStorageArgs{
/// 					MountDirectory:    pulumi.String("/opt"),
/// 					NasDirectory:      pulumi.String("/"),
/// 					MountTargetDomain: queueMinimalExampleMountDomain.MountTargetDomain,
/// 					ProtocolType:      pulumi.String("NFS"),
/// 					FileSystemId:      queueMinimalExampleNas.ID(),
/// 					MountOptions:      pulumi.String("-t nfs -o vers=3,nolock,proto=tcp,noresvport"),
/// 				},
/// 				&ehpc.ClusterV2SharedStorageArgs{
/// 					MountDirectory:    pulumi.String("/ehpcdata"),
/// 					NasDirectory:      pulumi.String("/"),
/// 					MountTargetDomain: queueMinimalExampleMountDomain.MountTargetDomain,
/// 					ProtocolType:      pulumi.String("NFS"),
/// 					FileSystemId:      queueMinimalExampleNas.ID(),
/// 					MountOptions:      pulumi.String("-t nfs -o vers=3,nolock,proto=tcp,noresvport"),
/// 				},
/// 			},
/// 			ClusterVswitchId: queueMinimalExampleVswitch.ID(),
/// 			Manager: &ehpc.ClusterV2ManagerArgs{
/// 				ManagerNode: &ehpc.ClusterV2ManagerManagerNodeArgs{
/// 					SystemDisk: &ehpc.ClusterV2ManagerManagerNodeSystemDiskArgs{
/// 						Category: pulumi.String("cloud_essd"),
/// 						Size:     pulumi.Int(40),
/// 						Level:    pulumi.String("PL0"),
/// 					},
/// 					EnableHt:           pulumi.Bool(true),
/// 					InstanceChargeType: pulumi.String("PostPaid"),
/// 					ImageId:            pulumi.String("centos_7_6_x64_20G_alibase_20211130.vhd"),
/// 					InstanceType:       pulumi.String("ecs.c6.xlarge"),
/// 					SpotStrategy:       pulumi.String("NoSpot"),
/// 				},
/// 				Scheduler: &ehpc.ClusterV2ManagerSchedulerArgs{
/// 					Type:    pulumi.String("SLURM"),
/// 					Version: pulumi.String("22.05.8"),
/// 				},
/// 				Dns: &ehpc.ClusterV2ManagerDnsArgs{
/// 					Type:    pulumi.String("nis"),
/// 					Version: pulumi.String("1.0"),
/// 				},
/// 				DirectoryService: &ehpc.ClusterV2ManagerDirectoryServiceArgs{
/// 					Type:    pulumi.String("nis"),
/// 					Version: pulumi.String("1.0"),
/// 				},
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			queueMinimalExampleAccessRule,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ehpc.NewQueue(ctx, "default", &ehpc.QueueArgs{
/// 			ClusterId: queueMinimalClusterExample.ID(),
/// 			QueueName: pulumi.String("autoque1"),
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
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.nas.FileSystem;
/// import com.pulumi.alicloud.nas.FileSystemArgs;
/// import com.pulumi.alicloud.nas.inputs.FileSystemNfsAclArgs;
/// import com.pulumi.alicloud.nas.AccessGroup;
/// import com.pulumi.alicloud.nas.AccessGroupArgs;
/// import com.pulumi.alicloud.ecs.SecurityGroup;
/// import com.pulumi.alicloud.ecs.SecurityGroupArgs;
/// import com.pulumi.alicloud.nas.MountTarget;
/// import com.pulumi.alicloud.nas.MountTargetArgs;
/// import com.pulumi.alicloud.nas.AccessRule;
/// import com.pulumi.alicloud.nas.AccessRuleArgs;
/// import com.pulumi.alicloud.ehpc.ClusterV2;
/// import com.pulumi.alicloud.ehpc.ClusterV2Args;
/// import com.pulumi.alicloud.ehpc.inputs.ClusterV2ClusterCredentialsArgs;
/// import com.pulumi.alicloud.ehpc.inputs.ClusterV2AddonArgs;
/// import com.pulumi.alicloud.ehpc.inputs.ClusterV2SharedStorageArgs;
/// import com.pulumi.alicloud.ehpc.inputs.ClusterV2ManagerArgs;
/// import com.pulumi.alicloud.ehpc.inputs.ClusterV2ManagerManagerNodeArgs;
/// import com.pulumi.alicloud.ehpc.inputs.ClusterV2ManagerManagerNodeSystemDiskArgs;
/// import com.pulumi.alicloud.ehpc.inputs.ClusterV2ManagerSchedulerArgs;
/// import com.pulumi.alicloud.ehpc.inputs.ClusterV2ManagerDnsArgs;
/// import com.pulumi.alicloud.ehpc.inputs.ClusterV2ManagerDirectoryServiceArgs;
/// import com.pulumi.alicloud.ehpc.Queue;
/// import com.pulumi.alicloud.ehpc.QueueArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var queueMinimalExampleVpc = new Network("queueMinimalExampleVpc", NetworkArgs.builder()
///             .isDefault(false)
///             .cidrBlock("10.0.0.0/8")
///             .vpcName("example-cluster-vpc")
///             .build());
///
///         var queueMinimalExampleVswitch = new Switch("queueMinimalExampleVswitch", SwitchArgs.builder()
///             .isDefault(false)
///             .vpcId(queueMinimalExampleVpc.id())
///             .zoneId("cn-hangzhou-k")
///             .cidrBlock("10.0.0.0/24")
///             .vswitchName("example-cluster-vsw")
///             .build());
///
///         var queueMinimalExampleNas = new FileSystem("queueMinimalExampleNas", FileSystemArgs.builder()
///             .description("example-cluster-nas")
///             .storageType("Capacity")
///             .nfsAcl(FileSystemNfsAclArgs.builder()
///                 .enabled(false)
///                 .build())
///             .zoneId("cn-hangzhou-k")
///             .encryptType(0)
///             .protocolType("NFS")
///             .fileSystemType("standard")
///             .build());
///
///         var queueMinimalExampleAccessGroup = new AccessGroup("queueMinimalExampleAccessGroup", AccessGroupArgs.builder()
///             .accessGroupType("Vpc")
///             .description(name)
///             .accessGroupName("StandardMountTarget")
///             .fileSystemType("standard")
///             .build());
///
///         var queueMinimalExampleSecurityGroup = new SecurityGroup("queueMinimalExampleSecurityGroup", SecurityGroupArgs.builder()
///             .vpcId(queueMinimalExampleVpc.id())
///             .securityGroupType("normal")
///             .build());
///
///         var queueMinimalExampleMountDomain = new MountTarget("queueMinimalExampleMountDomain", MountTargetArgs.builder()
///             .vpcId(queueMinimalExampleVpc.id())
///             .networkType("Vpc")
///             .accessGroupName(queueMinimalExampleAccessGroup.accessGroupName())
///             .vswitchId(queueMinimalExampleVswitch.id())
///             .fileSystemId(queueMinimalExampleNas.id())
///             .build());
///
///         var queueMinimalExampleAccessRule = new AccessRule("queueMinimalExampleAccessRule", AccessRuleArgs.builder()
///             .priority(1)
///             .accessGroupName(queueMinimalExampleAccessGroup.accessGroupName())
///             .fileSystemType(queueMinimalExampleNas.fileSystemType())
///             .sourceCidrIp("10.0.0.0/8")
///             .build());
///
///         var queueMinimalClusterExample = new ClusterV2("queueMinimalClusterExample", ClusterV2Args.builder()
///             .clusterCredentials(ClusterV2ClusterCredentialsArgs.builder()
///                 .password("aliHPC123")
///                 .build())
///             .clusterVpcId(queueMinimalExampleVpc.id())
///             .clusterCategory("Standard")
///             .clusterMode("Integrated")
///             .securityGroupId(queueMinimalExampleSecurityGroup.id())
///             .addons(ClusterV2AddonArgs.builder()
///                 .version("1.0")
///                 .servicesSpec("""
/// [
///         {
///           \"ServiceName\": \"SSH\",
///           \"NetworkACL\": [
///             {
///               \"Port\": 22,
///               \"SourceCidrIp\": \"0.0.0.0/0\",
///               \"IpProtocol\": \"TCP\"
///             }
///           ]
///         },
///         {
///           \"ServiceName\": \"VNC\",
///           \"NetworkACL\": [
///             {
///               \"Port\": 12016,
///               \"SourceCidrIp\": \"0.0.0.0/0\",
///               \"IpProtocol\": \"TCP\"
///             }
///           ]
///         },
///         {
///           \"ServiceName\": \"CLIENT\",
///           \"ServiceAccessType\": \"URL\",
///           \"ServiceAccessUrl\": \"https://ehpc-app.oss-cn-hangzhou.aliyuncs.com/ClientRelease/E-HPC-Client-Mac-zh-cn.zip\",
///           \"NetworkACL\": [
///             {
///               \"Port\": 12011,
///               \"SourceCidrIp\": \"0.0.0.0/0\",
///               \"IpProtocol\": \"TCP\"
///             }
///           ]
///         }
///       ]
///                 """)
///                 .resourcesSpec("""
/// {
///         \"EipResource\": {
///           \"AutoCreate\": true
///         },
///         \"EcsResources\": [
///           {
///             \"ImageId\": \"centos_7_6_x64_20G_alibase_20211130.vhd\",
///             \"EnableHT\": true,
///             \"InstanceChargeType\": \"PostPaid\",
///             \"InstanceType\": \"ecs.c7.xlarge\",
///             \"SpotStrategy\": \"NoSpot\",
///             \"SystemDisk\": {
///               \"Category\": \"cloud_essd\",
///               \"Size\": 40,
///               \"Level\": \"PL0\"
///             },
///             \"DataDisks\": [
///               {
///                 \"Category\": \"cloud_essd\",
///                 \"Size\": 40,
///                 \"Level\": \"PL0\"
///               }
///             ]
///           }
///         ]
///       }
///                 """)
///                 .name("Login")
///                 .build())
///             .clusterName("minimal-example-cluster")
///             .deletionProtection(false)
///             .sharedStorages(
///                 ClusterV2SharedStorageArgs.builder()
///                     .mountDirectory("/home")
///                     .nasDirectory("/")
///                     .mountTargetDomain(queueMinimalExampleMountDomain.mountTargetDomain())
///                     .protocolType("NFS")
///                     .fileSystemId(queueMinimalExampleNas.id())
///                     .mountOptions("-t nfs -o vers=3,nolock,proto=tcp,noresvport")
///                     .build(),
///                 ClusterV2SharedStorageArgs.builder()
///                     .mountDirectory("/opt")
///                     .nasDirectory("/")
///                     .mountTargetDomain(queueMinimalExampleMountDomain.mountTargetDomain())
///                     .protocolType("NFS")
///                     .fileSystemId(queueMinimalExampleNas.id())
///                     .mountOptions("-t nfs -o vers=3,nolock,proto=tcp,noresvport")
///                     .build(),
///                 ClusterV2SharedStorageArgs.builder()
///                     .mountDirectory("/ehpcdata")
///                     .nasDirectory("/")
///                     .mountTargetDomain(queueMinimalExampleMountDomain.mountTargetDomain())
///                     .protocolType("NFS")
///                     .fileSystemId(queueMinimalExampleNas.id())
///                     .mountOptions("-t nfs -o vers=3,nolock,proto=tcp,noresvport")
///                     .build())
///             .clusterVswitchId(queueMinimalExampleVswitch.id())
///             .manager(ClusterV2ManagerArgs.builder()
///                 .managerNode(ClusterV2ManagerManagerNodeArgs.builder()
///                     .systemDisk(ClusterV2ManagerManagerNodeSystemDiskArgs.builder()
///                         .category("cloud_essd")
///                         .size(40)
///                         .level("PL0")
///                         .build())
///                     .enableHt(true)
///                     .instanceChargeType("PostPaid")
///                     .imageId("centos_7_6_x64_20G_alibase_20211130.vhd")
///                     .instanceType("ecs.c6.xlarge")
///                     .spotStrategy("NoSpot")
///                     .build())
///                 .scheduler(ClusterV2ManagerSchedulerArgs.builder()
///                     .type("SLURM")
///                     .version("22.05.8")
///                     .build())
///                 .dns(ClusterV2ManagerDnsArgs.builder()
///                     .type("nis")
///                     .version("1.0")
///                     .build())
///                 .directoryService(ClusterV2ManagerDirectoryServiceArgs.builder()
///                     .type("nis")
///                     .version("1.0")
///                     .build())
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(queueMinimalExampleAccessRule)
///                 .build());
///
///         var default_ = new Queue("default", QueueArgs.builder()
///             .clusterId(queueMinimalClusterExample.id())
///             .queueName("autoque1")
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
///   queueMinimalExampleVpc:
///     type: alicloud:vpc:Network
///     name: queue_minimal_example_vpc
///     properties:
///       isDefault: false
///       cidrBlock: 10.0.0.0/8
///       vpcName: example-cluster-vpc
///   queueMinimalExampleVswitch:
///     type: alicloud:vpc:Switch
///     name: queue_minimal_example_vswitch
///     properties:
///       isDefault: false
///       vpcId: ${queueMinimalExampleVpc.id}
///       zoneId: cn-hangzhou-k
///       cidrBlock: 10.0.0.0/24
///       vswitchName: example-cluster-vsw
///   queueMinimalExampleNas:
///     type: alicloud:nas:FileSystem
///     name: queue_minimal_example_nas
///     properties:
///       description: example-cluster-nas
///       storageType: Capacity
///       nfsAcl:
///         enabled: false
///       zoneId: cn-hangzhou-k
///       encryptType: '0'
///       protocolType: NFS
///       fileSystemType: standard
///   queueMinimalExampleAccessGroup:
///     type: alicloud:nas:AccessGroup
///     name: queue_minimal_example_access_group
///     properties:
///       accessGroupType: Vpc
///       description: ${name}
///       accessGroupName: StandardMountTarget
///       fileSystemType: standard
///   queueMinimalExampleSecurityGroup:
///     type: alicloud:ecs:SecurityGroup
///     name: queue_minimal_example_security_group
///     properties:
///       vpcId: ${queueMinimalExampleVpc.id}
///       securityGroupType: normal
///   queueMinimalExampleMountDomain:
///     type: alicloud:nas:MountTarget
///     name: queue_minimal_example_mount_domain
///     properties:
///       vpcId: ${queueMinimalExampleVpc.id}
///       networkType: Vpc
///       accessGroupName: ${queueMinimalExampleAccessGroup.accessGroupName}
///       vswitchId: ${queueMinimalExampleVswitch.id}
///       fileSystemId: ${queueMinimalExampleNas.id}
///   queueMinimalExampleAccessRule:
///     type: alicloud:nas:AccessRule
///     name: queue_minimal_example_access_rule
///     properties:
///       priority: '1'
///       accessGroupName: ${queueMinimalExampleAccessGroup.accessGroupName}
///       fileSystemType: ${queueMinimalExampleNas.fileSystemType}
///       sourceCidrIp: 10.0.0.0/8
///   queueMinimalClusterExample:
///     type: alicloud:ehpc:ClusterV2
///     name: queue_minimal_cluster_example
///     properties:
///       clusterCredentials:
///         password: aliHPC123
///       clusterVpcId: ${queueMinimalExampleVpc.id}
///       clusterCategory: Standard
///       clusterMode: Integrated
///       securityGroupId: ${queueMinimalExampleSecurityGroup.id}
///       addons:
///         - version: '1.0'
///           servicesSpec: |
///             [
///                     {
///                       \"ServiceName\": \"SSH\",
///                       \"NetworkACL\": [
///                         {
///                           \"Port\": 22,
///                           \"SourceCidrIp\": \"0.0.0.0/0\",
///                           \"IpProtocol\": \"TCP\"
///                         }
///                       ]
///                     },
///                     {
///                       \"ServiceName\": \"VNC\",
///                       \"NetworkACL\": [
///                         {
///                           \"Port\": 12016,
///                           \"SourceCidrIp\": \"0.0.0.0/0\",
///                           \"IpProtocol\": \"TCP\"
///                         }
///                       ]
///                     },
///                     {
///                       \"ServiceName\": \"CLIENT\",
///                       \"ServiceAccessType\": \"URL\",
///                       \"ServiceAccessUrl\": \"https://ehpc-app.oss-cn-hangzhou.aliyuncs.com/ClientRelease/E-HPC-Client-Mac-zh-cn.zip\",
///                       \"NetworkACL\": [
///                         {
///                           \"Port\": 12011,
///                           \"SourceCidrIp\": \"0.0.0.0/0\",
///                           \"IpProtocol\": \"TCP\"
///                         }
///                       ]
///                     }
///                   ]
///           resourcesSpec: |
///             {
///                     \"EipResource\": {
///                       \"AutoCreate\": true
///                     },
///                     \"EcsResources\": [
///                       {
///                         \"ImageId\": \"centos_7_6_x64_20G_alibase_20211130.vhd\",
///                         \"EnableHT\": true,
///                         \"InstanceChargeType\": \"PostPaid\",
///                         \"InstanceType\": \"ecs.c7.xlarge\",
///                         \"SpotStrategy\": \"NoSpot\",
///                         \"SystemDisk\": {
///                           \"Category\": \"cloud_essd\",
///                           \"Size\": 40,
///                           \"Level\": \"PL0\"
///                         },
///                         \"DataDisks\": [
///                           {
///                             \"Category\": \"cloud_essd\",
///                             \"Size\": 40,
///                             \"Level\": \"PL0\"
///                           }
///                         ]
///                       }
///                     ]
///                   }
///           name: Login
///       clusterName: minimal-example-cluster
///       deletionProtection: false
///       sharedStorages:
///         - mountDirectory: /home
///           nasDirectory: /
///           mountTargetDomain: ${queueMinimalExampleMountDomain.mountTargetDomain}
///           protocolType: NFS
///           fileSystemId: ${queueMinimalExampleNas.id}
///           mountOptions: -t nfs -o vers=3,nolock,proto=tcp,noresvport
///         - mountDirectory: /opt
///           nasDirectory: /
///           mountTargetDomain: ${queueMinimalExampleMountDomain.mountTargetDomain}
///           protocolType: NFS
///           fileSystemId: ${queueMinimalExampleNas.id}
///           mountOptions: -t nfs -o vers=3,nolock,proto=tcp,noresvport
///         - mountDirectory: /ehpcdata
///           nasDirectory: /
///           mountTargetDomain: ${queueMinimalExampleMountDomain.mountTargetDomain}
///           protocolType: NFS
///           fileSystemId: ${queueMinimalExampleNas.id}
///           mountOptions: -t nfs -o vers=3,nolock,proto=tcp,noresvport
///       clusterVswitchId: ${queueMinimalExampleVswitch.id}
///       manager:
///         managerNode:
///           systemDisk:
///             category: cloud_essd
///             size: '40'
///             level: PL0
///           enableHt: true
///           instanceChargeType: PostPaid
///           imageId: centos_7_6_x64_20G_alibase_20211130.vhd
///           instanceType: ecs.c6.xlarge
///           spotStrategy: NoSpot
///         scheduler:
///           type: SLURM
///           version: 22.05.8
///         dns:
///           type: nis
///           version: '1.0'
///         directoryService:
///           type: nis
///           version: '1.0'
///     options:
///       dependsOn:
///         - ${queueMinimalExampleAccessRule}
///   default:
///     type: alicloud:ehpc:Queue
///     properties:
///       clusterId: ${queueMinimalClusterExample.id}
///       queueName: autoque1
/// ```
///
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Ehpc Queue can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:ehpc/queue:Queue example <cluster_id>:<queue_name>
/// ```
class Queue extends pulumi.CustomResource {
  /// The cluster ID.
  /// You can call the ListClusters operation to query the cluster ID.
  late final pulumi.Output<String> clusterId;
  /// The hardware configurations of the compute nodes in the queue. Valid values of N: 1 to 10. See `compute_nodes` below.
  late final pulumi.Output<List<QueueComputeNode>> computeNodes;
  /// The creation time of the resource
  late final pulumi.Output<String> createTime;
  /// Specifies whether to enable auto scale-in for the queue. Valid values:
  ///
  /// - true
  /// - false
  late final pulumi.Output<bool> enableScaleIn;
  /// Specifies whether to enable auto scale-out for the queue. Valid values:
  ///
  /// - true
  /// - false
  late final pulumi.Output<bool> enableScaleOut;
  /// The hostname prefix of the added compute nodes.
  late final pulumi.Output<String> hostnamePrefix;
  /// The hostname suffix of the compute nodes in the queue.
  late final pulumi.Output<String> hostnameSuffix;
  /// The initial number of compute nodes in the queue.
  late final pulumi.Output<int> initialCount;
  /// The type of the network for interconnecting compute nodes in the queue.
  late final pulumi.Output<String> interConnect;
  /// The maximum number of compute nodes that the queue can contain.
  late final pulumi.Output<int> maxCount;
  /// The minimum number of compute nodes that the queue must contain.
  late final pulumi.Output<int> minCount;
  /// The queue name.
  late final pulumi.Output<String> queueName;
  /// The vSwitches available for use by compute nodes in the queue.
  late final pulumi.Output<List<String>?> vswitchIds;

  /// Creates a new [Queue].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Queue]. {@macro pulumi_ehpc_queue_queue_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Queue(
    String name, {
    QueueArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ehpc/queue:Queue',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.clusterId = registerOutput<String>('clusterId');
    this.computeNodes = registerOutput<List<QueueComputeNode>>('computeNodes');
    this.createTime = registerOutput<String>('createTime');
    this.enableScaleIn = registerOutput<bool>('enableScaleIn');
    this.enableScaleOut = registerOutput<bool>('enableScaleOut');
    this.hostnamePrefix = registerOutput<String>('hostnamePrefix');
    this.hostnameSuffix = registerOutput<String>('hostnameSuffix');
    this.initialCount = registerOutput<int>('initialCount');
    this.interConnect = registerOutput<String>('interConnect');
    this.maxCount = registerOutput<int>('maxCount');
    this.minCount = registerOutput<int>('minCount');
    this.queueName = registerOutput<String>('queueName');
    this.vswitchIds = registerOutput<List<String>?>('vswitchIds');
  }

  /// Gets an existing [Queue] resource's state with the given [name] and [id].
  static Queue get(
    String name,
    pulumi.Input<String> id, {
    QueueState? state,
  }) {
    return Queue._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Queue._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ehpc/queue:Queue',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.clusterId = registerOutput<String>('clusterId');
    this.computeNodes = registerOutput<List<QueueComputeNode>>('computeNodes');
    this.createTime = registerOutput<String>('createTime');
    this.enableScaleIn = registerOutput<bool>('enableScaleIn');
    this.enableScaleOut = registerOutput<bool>('enableScaleOut');
    this.hostnamePrefix = registerOutput<String>('hostnamePrefix');
    this.hostnameSuffix = registerOutput<String>('hostnameSuffix');
    this.initialCount = registerOutput<int>('initialCount');
    this.interConnect = registerOutput<String>('interConnect');
    this.maxCount = registerOutput<int>('maxCount');
    this.minCount = registerOutput<int>('minCount');
    this.queueName = registerOutput<String>('queueName');
    this.vswitchIds = registerOutput<List<String>?>('vswitchIds');
  }
}
