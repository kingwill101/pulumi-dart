import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_v2_addon.dart';
import 'cluster_v2_args.dart';
import 'cluster_v2_cluster_credentials.dart';
import 'cluster_v2_manager.dart';
import 'cluster_v2_shared_storage.dart';
import 'cluster_v2_state.dart';

/// Provides a Ehpc Cluster V2 resource.
///
/// E-HPC Cluster Resources.
///
/// For information about Ehpc Cluster V2 and how to use it, see [What is Cluster V2](https://next.api.alibabacloud.com/document/EHPC/2024-07-30/CreateCluster).
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
/// const example = new alicloud.vpc.Network("example", {
///     isDefault: false,
///     cidrBlock: "10.0.0.0/24",
///     vpcName: "example-cluster-vpc",
/// });
/// const exampleAccessGroup = new alicloud.nas.AccessGroup("example", {
///     accessGroupType: "Vpc",
///     description: name,
///     accessGroupName: "StandardMountTarget",
///     fileSystemType: "standard",
/// });
/// const exampleFileSystem = new alicloud.nas.FileSystem("example", {
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
/// const exampleSwitch = new alicloud.vpc.Switch("example", {
///     isDefault: false,
///     vpcId: example.id,
///     zoneId: "cn-hangzhou-k",
///     cidrBlock: "10.0.0.0/24",
///     vswitchName: "example-cluster-vsw",
/// });
/// const exampleAccessRule = new alicloud.nas.AccessRule("example", {
///     priority: 1,
///     accessGroupName: exampleAccessGroup.accessGroupName,
///     fileSystemType: exampleFileSystem.fileSystemType,
///     sourceCidrIp: "10.0.0.0/24",
/// });
/// const exampleEcsKeyPair = new alicloud.ecs.EcsKeyPair("example", {keyPairName: name});
/// const exampleMountTarget = new alicloud.nas.MountTarget("example", {
///     vpcId: example.id,
///     networkType: "Vpc",
///     accessGroupName: exampleAccessGroup.accessGroupName,
///     vswitchId: exampleSwitch.id,
///     fileSystemId: exampleFileSystem.id,
/// });
/// const exampleSecurityGroup = new alicloud.ecs.SecurityGroup("example", {
///     vpcId: example.id,
///     securityGroupType: "normal",
/// });
/// const _default = new alicloud.ehpc.ClusterV2("default", {
///     clusterCredentials: {
///         keyPairName: exampleEcsKeyPair.id,
///     },
///     clusterMode: "Integrated",
///     clusterVpcId: example.id,
///     deletionProtection: true,
///     sharedStorages: [
///         {
///             mountDirectory: "/home",
///             nasDirectory: "/",
///             mountTargetDomain: exampleMountTarget.mountTargetDomain,
///             protocolType: "NFS",
///             fileSystemId: exampleFileSystem.id,
///             mountOptions: "-t nfs -o vers=3,nolock,proto=tcp,noresvport",
///         },
///         {
///             nasDirectory: "/",
///             mountTargetDomain: exampleMountTarget.mountTargetDomain,
///             protocolType: "NFS",
///             fileSystemId: exampleFileSystem.id,
///             mountOptions: "-t nfs -o vers=3,nolock,proto=tcp,noresvport",
///             mountDirectory: "/opt",
///         },
///         {
///             mountOptions: "-t nfs -o vers=3,nolock,proto=tcp,noresvport",
///             mountDirectory: "/ehpcdata",
///             nasDirectory: "/",
///             mountTargetDomain: exampleMountTarget.mountTargetDomain,
///             protocolType: "NFS",
///             fileSystemId: exampleFileSystem.id,
///         },
///     ],
///     clusterVswitchId: exampleSwitch.id,
///     clusterCategory: "Standard",
///     securityGroupId: exampleSecurityGroup.id,
///     clusterName: name,
///     manager: {
///         managerNode: {
///             spotStrategy: "NoSpot",
///             systemDisk: {
///                 category: "cloud_essd",
///                 size: 40,
///                 level: "PL0",
///             },
///             enableHt: true,
///             instanceChargeType: "PostPaid",
///             imageId: "centos_7_6_x64_20G_alibase_20211130.vhd",
///             instanceType: "ecs.c6.xlarge",
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
/// example = alicloud.vpc.Network("example",
///     is_default=False,
///     cidr_block="10.0.0.0/24",
///     vpc_name="example-cluster-vpc")
/// example_access_group = alicloud.nas.AccessGroup("example",
///     access_group_type="Vpc",
///     description=name,
///     access_group_name="StandardMountTarget",
///     file_system_type="standard")
/// example_file_system = alicloud.nas.FileSystem("example",
///     description="example-cluster-nas",
///     storage_type="Capacity",
///     nfs_acl={
///         "enabled": False,
///     },
///     zone_id="cn-hangzhou-k",
///     encrypt_type=0,
///     protocol_type="NFS",
///     file_system_type="standard")
/// example_switch = alicloud.vpc.Switch("example",
///     is_default=False,
///     vpc_id=example.id,
///     zone_id="cn-hangzhou-k",
///     cidr_block="10.0.0.0/24",
///     vswitch_name="example-cluster-vsw")
/// example_access_rule = alicloud.nas.AccessRule("example",
///     priority=1,
///     access_group_name=example_access_group.access_group_name,
///     file_system_type=example_file_system.file_system_type,
///     source_cidr_ip="10.0.0.0/24")
/// example_ecs_key_pair = alicloud.ecs.EcsKeyPair("example", key_pair_name=name)
/// example_mount_target = alicloud.nas.MountTarget("example",
///     vpc_id=example.id,
///     network_type="Vpc",
///     access_group_name=example_access_group.access_group_name,
///     vswitch_id=example_switch.id,
///     file_system_id=example_file_system.id)
/// example_security_group = alicloud.ecs.SecurityGroup("example",
///     vpc_id=example.id,
///     security_group_type="normal")
/// default = alicloud.ehpc.ClusterV2("default",
///     cluster_credentials={
///         "key_pair_name": example_ecs_key_pair.id,
///     },
///     cluster_mode="Integrated",
///     cluster_vpc_id=example.id,
///     deletion_protection=True,
///     shared_storages=[
///         {
///             "mount_directory": "/home",
///             "nas_directory": "/",
///             "mount_target_domain": example_mount_target.mount_target_domain,
///             "protocol_type": "NFS",
///             "file_system_id": example_file_system.id,
///             "mount_options": "-t nfs -o vers=3,nolock,proto=tcp,noresvport",
///         },
///         {
///             "nas_directory": "/",
///             "mount_target_domain": example_mount_target.mount_target_domain,
///             "protocol_type": "NFS",
///             "file_system_id": example_file_system.id,
///             "mount_options": "-t nfs -o vers=3,nolock,proto=tcp,noresvport",
///             "mount_directory": "/opt",
///         },
///         {
///             "mount_options": "-t nfs -o vers=3,nolock,proto=tcp,noresvport",
///             "mount_directory": "/ehpcdata",
///             "nas_directory": "/",
///             "mount_target_domain": example_mount_target.mount_target_domain,
///             "protocol_type": "NFS",
///             "file_system_id": example_file_system.id,
///         },
///     ],
///     cluster_vswitch_id=example_switch.id,
///     cluster_category="Standard",
///     security_group_id=example_security_group.id,
///     cluster_name=name,
///     manager={
///         "manager_node": {
///             "spot_strategy": "NoSpot",
///             "system_disk": {
///                 "category": "cloud_essd",
///                 "size": 40,
///                 "level": "PL0",
///             },
///             "enable_ht": True,
///             "instance_charge_type": "PostPaid",
///             "image_id": "centos_7_6_x64_20G_alibase_20211130.vhd",
///             "instance_type": "ecs.c6.xlarge",
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
///     })
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
///     var example = new AliCloud.Vpc.Network("example", new()
///     {
///         IsDefault = false,
///         CidrBlock = "10.0.0.0/24",
///         VpcName = "example-cluster-vpc",
///     });
///
///     var exampleAccessGroup = new AliCloud.Nas.AccessGroup("example", new()
///     {
///         AccessGroupType = "Vpc",
///         Description = name,
///         AccessGroupName = "StandardMountTarget",
///         FileSystemType = "standard",
///     });
///
///     var exampleFileSystem = new AliCloud.Nas.FileSystem("example", new()
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
///     var exampleSwitch = new AliCloud.Vpc.Switch("example", new()
///     {
///         IsDefault = false,
///         VpcId = example.Id,
///         ZoneId = "cn-hangzhou-k",
///         CidrBlock = "10.0.0.0/24",
///         VswitchName = "example-cluster-vsw",
///     });
///
///     var exampleAccessRule = new AliCloud.Nas.AccessRule("example", new()
///     {
///         Priority = 1,
///         AccessGroupName = exampleAccessGroup.AccessGroupName,
///         FileSystemType = exampleFileSystem.FileSystemType,
///         SourceCidrIp = "10.0.0.0/24",
///     });
///
///     var exampleEcsKeyPair = new AliCloud.Ecs.EcsKeyPair("example", new()
///     {
///         KeyPairName = name,
///     });
///
///     var exampleMountTarget = new AliCloud.Nas.MountTarget("example", new()
///     {
///         VpcId = example.Id,
///         NetworkType = "Vpc",
///         AccessGroupName = exampleAccessGroup.AccessGroupName,
///         VswitchId = exampleSwitch.Id,
///         FileSystemId = exampleFileSystem.Id,
///     });
///
///     var exampleSecurityGroup = new AliCloud.Ecs.SecurityGroup("example", new()
///     {
///         VpcId = example.Id,
///         SecurityGroupType = "normal",
///     });
///
///     var @default = new AliCloud.Ehpc.ClusterV2("default", new()
///     {
///         ClusterCredentials = new AliCloud.Ehpc.Inputs.ClusterV2ClusterCredentialsArgs
///         {
///             KeyPairName = exampleEcsKeyPair.Id,
///         },
///         ClusterMode = "Integrated",
///         ClusterVpcId = example.Id,
///         DeletionProtection = true,
///         SharedStorages = new[]
///         {
///             new AliCloud.Ehpc.Inputs.ClusterV2SharedStorageArgs
///             {
///                 MountDirectory = "/home",
///                 NasDirectory = "/",
///                 MountTargetDomain = exampleMountTarget.MountTargetDomain,
///                 ProtocolType = "NFS",
///                 FileSystemId = exampleFileSystem.Id,
///                 MountOptions = "-t nfs -o vers=3,nolock,proto=tcp,noresvport",
///             },
///             new AliCloud.Ehpc.Inputs.ClusterV2SharedStorageArgs
///             {
///                 NasDirectory = "/",
///                 MountTargetDomain = exampleMountTarget.MountTargetDomain,
///                 ProtocolType = "NFS",
///                 FileSystemId = exampleFileSystem.Id,
///                 MountOptions = "-t nfs -o vers=3,nolock,proto=tcp,noresvport",
///                 MountDirectory = "/opt",
///             },
///             new AliCloud.Ehpc.Inputs.ClusterV2SharedStorageArgs
///             {
///                 MountOptions = "-t nfs -o vers=3,nolock,proto=tcp,noresvport",
///                 MountDirectory = "/ehpcdata",
///                 NasDirectory = "/",
///                 MountTargetDomain = exampleMountTarget.MountTargetDomain,
///                 ProtocolType = "NFS",
///                 FileSystemId = exampleFileSystem.Id,
///             },
///         },
///         ClusterVswitchId = exampleSwitch.Id,
///         ClusterCategory = "Standard",
///         SecurityGroupId = exampleSecurityGroup.Id,
///         ClusterName = name,
///         Manager = new AliCloud.Ehpc.Inputs.ClusterV2ManagerArgs
///         {
///             ManagerNode = new AliCloud.Ehpc.Inputs.ClusterV2ManagerManagerNodeArgs
///             {
///                 SpotStrategy = "NoSpot",
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
/// 		example, err := vpc.NewNetwork(ctx, "example", &vpc.NetworkArgs{
/// 			IsDefault: pulumi.Bool(false),
/// 			CidrBlock: pulumi.String("10.0.0.0/24"),
/// 			VpcName:   pulumi.String("example-cluster-vpc"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAccessGroup, err := nas.NewAccessGroup(ctx, "example", &nas.AccessGroupArgs{
/// 			AccessGroupType: pulumi.String("Vpc"),
/// 			Description:     pulumi.String(name),
/// 			AccessGroupName: pulumi.String("StandardMountTarget"),
/// 			FileSystemType:  pulumi.String("standard"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleFileSystem, err := nas.NewFileSystem(ctx, "example", &nas.FileSystemArgs{
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
/// 		exampleSwitch, err := vpc.NewSwitch(ctx, "example", &vpc.SwitchArgs{
/// 			IsDefault:   pulumi.Bool(false),
/// 			VpcId:       example.ID(),
/// 			ZoneId:      pulumi.String("cn-hangzhou-k"),
/// 			CidrBlock:   pulumi.String("10.0.0.0/24"),
/// 			VswitchName: pulumi.String("example-cluster-vsw"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = nas.NewAccessRule(ctx, "example", &nas.AccessRuleArgs{
/// 			Priority:        pulumi.Int(1),
/// 			AccessGroupName: exampleAccessGroup.AccessGroupName,
/// 			FileSystemType:  exampleFileSystem.FileSystemType,
/// 			SourceCidrIp:    pulumi.String("10.0.0.0/24"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleEcsKeyPair, err := ecs.NewEcsKeyPair(ctx, "example", &ecs.EcsKeyPairArgs{
/// 			KeyPairName: pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleMountTarget, err := nas.NewMountTarget(ctx, "example", &nas.MountTargetArgs{
/// 			VpcId:           example.ID(),
/// 			NetworkType:     pulumi.String("Vpc"),
/// 			AccessGroupName: exampleAccessGroup.AccessGroupName,
/// 			VswitchId:       exampleSwitch.ID(),
/// 			FileSystemId:    exampleFileSystem.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSecurityGroup, err := ecs.NewSecurityGroup(ctx, "example", &ecs.SecurityGroupArgs{
/// 			VpcId:             example.ID(),
/// 			SecurityGroupType: pulumi.String("normal"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ehpc.NewClusterV2(ctx, "default", &ehpc.ClusterV2Args{
/// 			ClusterCredentials: &ehpc.ClusterV2ClusterCredentialsArgs{
/// 				KeyPairName: exampleEcsKeyPair.ID(),
/// 			},
/// 			ClusterMode:        pulumi.String("Integrated"),
/// 			ClusterVpcId:       example.ID(),
/// 			DeletionProtection: pulumi.Bool(true),
/// 			SharedStorages: ehpc.ClusterV2SharedStorageArray{
/// 				&ehpc.ClusterV2SharedStorageArgs{
/// 					MountDirectory:    pulumi.String("/home"),
/// 					NasDirectory:      pulumi.String("/"),
/// 					MountTargetDomain: exampleMountTarget.MountTargetDomain,
/// 					ProtocolType:      pulumi.String("NFS"),
/// 					FileSystemId:      exampleFileSystem.ID(),
/// 					MountOptions:      pulumi.String("-t nfs -o vers=3,nolock,proto=tcp,noresvport"),
/// 				},
/// 				&ehpc.ClusterV2SharedStorageArgs{
/// 					NasDirectory:      pulumi.String("/"),
/// 					MountTargetDomain: exampleMountTarget.MountTargetDomain,
/// 					ProtocolType:      pulumi.String("NFS"),
/// 					FileSystemId:      exampleFileSystem.ID(),
/// 					MountOptions:      pulumi.String("-t nfs -o vers=3,nolock,proto=tcp,noresvport"),
/// 					MountDirectory:    pulumi.String("/opt"),
/// 				},
/// 				&ehpc.ClusterV2SharedStorageArgs{
/// 					MountOptions:      pulumi.String("-t nfs -o vers=3,nolock,proto=tcp,noresvport"),
/// 					MountDirectory:    pulumi.String("/ehpcdata"),
/// 					NasDirectory:      pulumi.String("/"),
/// 					MountTargetDomain: exampleMountTarget.MountTargetDomain,
/// 					ProtocolType:      pulumi.String("NFS"),
/// 					FileSystemId:      exampleFileSystem.ID(),
/// 				},
/// 			},
/// 			ClusterVswitchId: exampleSwitch.ID(),
/// 			ClusterCategory:  pulumi.String("Standard"),
/// 			SecurityGroupId:  exampleSecurityGroup.ID(),
/// 			ClusterName:      pulumi.String(name),
/// 			Manager: &ehpc.ClusterV2ManagerArgs{
/// 				ManagerNode: &ehpc.ClusterV2ManagerManagerNodeArgs{
/// 					SpotStrategy: pulumi.String("NoSpot"),
/// 					SystemDisk: &ehpc.ClusterV2ManagerManagerNodeSystemDiskArgs{
/// 						Category: pulumi.String("cloud_essd"),
/// 						Size:     pulumi.Int(40),
/// 						Level:    pulumi.String("PL0"),
/// 					},
/// 					EnableHt:           pulumi.Bool(true),
/// 					InstanceChargeType: pulumi.String("PostPaid"),
/// 					ImageId:            pulumi.String("centos_7_6_x64_20G_alibase_20211130.vhd"),
/// 					InstanceType:       pulumi.String("ecs.c6.xlarge"),
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
/// import com.pulumi.alicloud.nas.AccessGroup;
/// import com.pulumi.alicloud.nas.AccessGroupArgs;
/// import com.pulumi.alicloud.nas.FileSystem;
/// import com.pulumi.alicloud.nas.FileSystemArgs;
/// import com.pulumi.alicloud.nas.inputs.FileSystemNfsAclArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.nas.AccessRule;
/// import com.pulumi.alicloud.nas.AccessRuleArgs;
/// import com.pulumi.alicloud.ecs.EcsKeyPair;
/// import com.pulumi.alicloud.ecs.EcsKeyPairArgs;
/// import com.pulumi.alicloud.nas.MountTarget;
/// import com.pulumi.alicloud.nas.MountTargetArgs;
/// import com.pulumi.alicloud.ecs.SecurityGroup;
/// import com.pulumi.alicloud.ecs.SecurityGroupArgs;
/// import com.pulumi.alicloud.ehpc.ClusterV2;
/// import com.pulumi.alicloud.ehpc.ClusterV2Args;
/// import com.pulumi.alicloud.ehpc.inputs.ClusterV2ClusterCredentialsArgs;
/// import com.pulumi.alicloud.ehpc.inputs.ClusterV2SharedStorageArgs;
/// import com.pulumi.alicloud.ehpc.inputs.ClusterV2ManagerArgs;
/// import com.pulumi.alicloud.ehpc.inputs.ClusterV2ManagerManagerNodeArgs;
/// import com.pulumi.alicloud.ehpc.inputs.ClusterV2ManagerManagerNodeSystemDiskArgs;
/// import com.pulumi.alicloud.ehpc.inputs.ClusterV2ManagerSchedulerArgs;
/// import com.pulumi.alicloud.ehpc.inputs.ClusterV2ManagerDnsArgs;
/// import com.pulumi.alicloud.ehpc.inputs.ClusterV2ManagerDirectoryServiceArgs;
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
///         var example = new Network("example", NetworkArgs.builder()
///             .isDefault(false)
///             .cidrBlock("10.0.0.0/24")
///             .vpcName("example-cluster-vpc")
///             .build());
///
///         var exampleAccessGroup = new AccessGroup("exampleAccessGroup", AccessGroupArgs.builder()
///             .accessGroupType("Vpc")
///             .description(name)
///             .accessGroupName("StandardMountTarget")
///             .fileSystemType("standard")
///             .build());
///
///         var exampleFileSystem = new FileSystem("exampleFileSystem", FileSystemArgs.builder()
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
///         var exampleSwitch = new Switch("exampleSwitch", SwitchArgs.builder()
///             .isDefault(false)
///             .vpcId(example.id())
///             .zoneId("cn-hangzhou-k")
///             .cidrBlock("10.0.0.0/24")
///             .vswitchName("example-cluster-vsw")
///             .build());
///
///         var exampleAccessRule = new AccessRule("exampleAccessRule", AccessRuleArgs.builder()
///             .priority(1)
///             .accessGroupName(exampleAccessGroup.accessGroupName())
///             .fileSystemType(exampleFileSystem.fileSystemType())
///             .sourceCidrIp("10.0.0.0/24")
///             .build());
///
///         var exampleEcsKeyPair = new EcsKeyPair("exampleEcsKeyPair", EcsKeyPairArgs.builder()
///             .keyPairName(name)
///             .build());
///
///         var exampleMountTarget = new MountTarget("exampleMountTarget", MountTargetArgs.builder()
///             .vpcId(example.id())
///             .networkType("Vpc")
///             .accessGroupName(exampleAccessGroup.accessGroupName())
///             .vswitchId(exampleSwitch.id())
///             .fileSystemId(exampleFileSystem.id())
///             .build());
///
///         var exampleSecurityGroup = new SecurityGroup("exampleSecurityGroup", SecurityGroupArgs.builder()
///             .vpcId(example.id())
///             .securityGroupType("normal")
///             .build());
///
///         var default_ = new ClusterV2("default", ClusterV2Args.builder()
///             .clusterCredentials(ClusterV2ClusterCredentialsArgs.builder()
///                 .keyPairName(exampleEcsKeyPair.id())
///                 .build())
///             .clusterMode("Integrated")
///             .clusterVpcId(example.id())
///             .deletionProtection(true)
///             .sharedStorages(
///                 ClusterV2SharedStorageArgs.builder()
///                     .mountDirectory("/home")
///                     .nasDirectory("/")
///                     .mountTargetDomain(exampleMountTarget.mountTargetDomain())
///                     .protocolType("NFS")
///                     .fileSystemId(exampleFileSystem.id())
///                     .mountOptions("-t nfs -o vers=3,nolock,proto=tcp,noresvport")
///                     .build(),
///                 ClusterV2SharedStorageArgs.builder()
///                     .nasDirectory("/")
///                     .mountTargetDomain(exampleMountTarget.mountTargetDomain())
///                     .protocolType("NFS")
///                     .fileSystemId(exampleFileSystem.id())
///                     .mountOptions("-t nfs -o vers=3,nolock,proto=tcp,noresvport")
///                     .mountDirectory("/opt")
///                     .build(),
///                 ClusterV2SharedStorageArgs.builder()
///                     .mountOptions("-t nfs -o vers=3,nolock,proto=tcp,noresvport")
///                     .mountDirectory("/ehpcdata")
///                     .nasDirectory("/")
///                     .mountTargetDomain(exampleMountTarget.mountTargetDomain())
///                     .protocolType("NFS")
///                     .fileSystemId(exampleFileSystem.id())
///                     .build())
///             .clusterVswitchId(exampleSwitch.id())
///             .clusterCategory("Standard")
///             .securityGroupId(exampleSecurityGroup.id())
///             .clusterName(name)
///             .manager(ClusterV2ManagerArgs.builder()
///                 .managerNode(ClusterV2ManagerManagerNodeArgs.builder()
///                     .spotStrategy("NoSpot")
///                     .systemDisk(ClusterV2ManagerManagerNodeSystemDiskArgs.builder()
///                         .category("cloud_essd")
///                         .size(40)
///                         .level("PL0")
///                         .build())
///                     .enableHt(true)
///                     .instanceChargeType("PostPaid")
///                     .imageId("centos_7_6_x64_20G_alibase_20211130.vhd")
///                     .instanceType("ecs.c6.xlarge")
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
///   example:
///     type: alicloud:vpc:Network
///     properties:
///       isDefault: false
///       cidrBlock: 10.0.0.0/24
///       vpcName: example-cluster-vpc
///   exampleAccessGroup:
///     type: alicloud:nas:AccessGroup
///     name: example
///     properties:
///       accessGroupType: Vpc
///       description: ${name}
///       accessGroupName: StandardMountTarget
///       fileSystemType: standard
///   exampleFileSystem:
///     type: alicloud:nas:FileSystem
///     name: example
///     properties:
///       description: example-cluster-nas
///       storageType: Capacity
///       nfsAcl:
///         enabled: false
///       zoneId: cn-hangzhou-k
///       encryptType: '0'
///       protocolType: NFS
///       fileSystemType: standard
///   exampleSwitch:
///     type: alicloud:vpc:Switch
///     name: example
///     properties:
///       isDefault: false
///       vpcId: ${example.id}
///       zoneId: cn-hangzhou-k
///       cidrBlock: 10.0.0.0/24
///       vswitchName: example-cluster-vsw
///   exampleAccessRule:
///     type: alicloud:nas:AccessRule
///     name: example
///     properties:
///       priority: '1'
///       accessGroupName: ${exampleAccessGroup.accessGroupName}
///       fileSystemType: ${exampleFileSystem.fileSystemType}
///       sourceCidrIp: 10.0.0.0/24
///   exampleEcsKeyPair:
///     type: alicloud:ecs:EcsKeyPair
///     name: example
///     properties:
///       keyPairName: ${name}
///   exampleMountTarget:
///     type: alicloud:nas:MountTarget
///     name: example
///     properties:
///       vpcId: ${example.id}
///       networkType: Vpc
///       accessGroupName: ${exampleAccessGroup.accessGroupName}
///       vswitchId: ${exampleSwitch.id}
///       fileSystemId: ${exampleFileSystem.id}
///   exampleSecurityGroup:
///     type: alicloud:ecs:SecurityGroup
///     name: example
///     properties:
///       vpcId: ${example.id}
///       securityGroupType: normal
///   default:
///     type: alicloud:ehpc:ClusterV2
///     properties:
///       clusterCredentials:
///         keyPairName: ${exampleEcsKeyPair.id}
///       clusterMode: Integrated
///       clusterVpcId: ${example.id}
///       deletionProtection: 'true'
///       sharedStorages:
///         - mountDirectory: /home
///           nasDirectory: /
///           mountTargetDomain: ${exampleMountTarget.mountTargetDomain}
///           protocolType: NFS
///           fileSystemId: ${exampleFileSystem.id}
///           mountOptions: -t nfs -o vers=3,nolock,proto=tcp,noresvport
///         - nasDirectory: /
///           mountTargetDomain: ${exampleMountTarget.mountTargetDomain}
///           protocolType: NFS
///           fileSystemId: ${exampleFileSystem.id}
///           mountOptions: -t nfs -o vers=3,nolock,proto=tcp,noresvport
///           mountDirectory: /opt
///         - mountOptions: -t nfs -o vers=3,nolock,proto=tcp,noresvport
///           mountDirectory: /ehpcdata
///           nasDirectory: /
///           mountTargetDomain: ${exampleMountTarget.mountTargetDomain}
///           protocolType: NFS
///           fileSystemId: ${exampleFileSystem.id}
///       clusterVswitchId: ${exampleSwitch.id}
///       clusterCategory: Standard
///       securityGroupId: ${exampleSecurityGroup.id}
///       clusterName: ${name}
///       manager:
///         managerNode:
///           spotStrategy: NoSpot
///           systemDisk:
///             category: cloud_essd
///             size: '40'
///             level: PL0
///           enableHt: 'true'
///           instanceChargeType: PostPaid
///           imageId: centos_7_6_x64_20G_alibase_20211130.vhd
///           instanceType: ecs.c6.xlarge
///         scheduler:
///           type: SLURM
///           version: 22.05.8
///         dns:
///           type: nis
///           version: '1.0'
///         directoryService:
///           type: nis
///           version: '1.0'
/// ```
///
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Ehpc Cluster V2 can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:ehpc/clusterV2:ClusterV2 example <cluster_id>
/// ```
class ClusterV2 extends pulumi.CustomResource {
  /// The cluster custom service component configuration. Only one component is supported. See `addons` below.
  late final pulumi.Output<List<ClusterV2Addon>?> addons;
  /// Specifies whether to enable auto scale-out for the cluster. Valid values:
  ///
  /// - true
  /// - false
  late final pulumi.Output<String> clientVersion;
  /// The cluster type. Valid values:
  ///
  /// - Standard
  /// - Serverless
  late final pulumi.Output<String?> clusterCategory;
  /// Security credentials for the cluster. See `cluster_credentials` below.
  late final pulumi.Output<ClusterV2ClusterCredentials> clusterCredentials;
  /// The deployment mode of the cluster. Valid values:
  ///
  /// - Integrated
  /// - Hybrid
  /// - Custom
  late final pulumi.Output<String?> clusterMode;
  /// The post-processing script of the cluster.
  late final pulumi.Output<String?> clusterName;
  /// The ID of the virtual private cloud (VPC) in which the cluster resides.
  late final pulumi.Output<String?> clusterVpcId;
  /// The ID of the vSwitch that you want the cluster to use. The vSwitch must reside in the VPC that is specified by the `ClusterVpcId` parameter.
  /// You can call the [DescribeVpcs](https://www.alibabacloud.com/help/en/doc-detail/448581.html) operation to query information about the created VPCs and vSwitches.
  late final pulumi.Output<String?> clusterVswitchId;
  /// The time when the cluster was created.
  late final pulumi.Output<String> createTime;
  /// The idle duration of the compute nodes allowed by the cluster.
  late final pulumi.Output<bool?> deletionProtection;
  /// The configurations of the cluster management node. See `manager` below.
  late final pulumi.Output<ClusterV2Manager?> manager;
  /// The ID of the resource group to which the cluster belongs.
  /// You can call the [ListResourceGroups](https://www.alibabacloud.com/help/en/doc-detail/158855.html) operation to obtain the IDs of the resource groups.
  late final pulumi.Output<String> resourceGroupId;
  /// The security group ID.
  late final pulumi.Output<String?> securityGroupId;
  /// List of cluster shared storage configurations. See `shared_storages` below.
  late final pulumi.Output<List<ClusterV2SharedStorage>> sharedStorages;

  /// Creates a new [ClusterV2].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ClusterV2]. {@macro pulumi_ehpc_cluster_v2_cluster_v2_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ClusterV2(
    String name, {
    ClusterV2Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ehpc/clusterV2:ClusterV2',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.addons = registerOutput<List<ClusterV2Addon>?>('addons');
    this.clientVersion = registerOutput<String>('clientVersion');
    this.clusterCategory = registerOutput<String?>('clusterCategory');
    this.clusterCredentials = registerOutput<ClusterV2ClusterCredentials>('clusterCredentials');
    this.clusterMode = registerOutput<String?>('clusterMode');
    this.clusterName = registerOutput<String?>('clusterName');
    this.clusterVpcId = registerOutput<String?>('clusterVpcId');
    this.clusterVswitchId = registerOutput<String?>('clusterVswitchId');
    this.createTime = registerOutput<String>('createTime');
    this.deletionProtection = registerOutput<bool?>('deletionProtection');
    this.manager = registerOutput<ClusterV2Manager?>('manager');
    this.resourceGroupId = registerOutput<String>('resourceGroupId');
    this.securityGroupId = registerOutput<String?>('securityGroupId');
    this.sharedStorages = registerOutput<List<ClusterV2SharedStorage>>('sharedStorages');
  }

  /// Gets an existing [ClusterV2] resource's state with the given [name] and [id].
  static ClusterV2 get(
    String name,
    pulumi.Input<String> id, {
    ClusterV2State? state,
  }) {
    return ClusterV2._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ClusterV2._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ehpc/clusterV2:ClusterV2',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.addons = registerOutput<List<ClusterV2Addon>?>('addons');
    this.clientVersion = registerOutput<String>('clientVersion');
    this.clusterCategory = registerOutput<String?>('clusterCategory');
    this.clusterCredentials = registerOutput<ClusterV2ClusterCredentials>('clusterCredentials');
    this.clusterMode = registerOutput<String?>('clusterMode');
    this.clusterName = registerOutput<String?>('clusterName');
    this.clusterVpcId = registerOutput<String?>('clusterVpcId');
    this.clusterVswitchId = registerOutput<String?>('clusterVswitchId');
    this.createTime = registerOutput<String>('createTime');
    this.deletionProtection = registerOutput<bool?>('deletionProtection');
    this.manager = registerOutput<ClusterV2Manager?>('manager');
    this.resourceGroupId = registerOutput<String>('resourceGroupId');
    this.securityGroupId = registerOutput<String?>('securityGroupId');
    this.sharedStorages = registerOutput<List<ClusterV2SharedStorage>>('sharedStorages');
  }
}
