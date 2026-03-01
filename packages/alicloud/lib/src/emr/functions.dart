import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_clusters_args.dart';
import 'get_clusters_result.dart';
import 'get_disk_types_args.dart';
import 'get_disk_types_result.dart';
import 'get_instance_types_args.dart';
import 'get_instance_types_result.dart';
import 'get_main_versions_args.dart';
import 'get_main_versions_result.dart';

/// This data source provides the Emr Clusters of the current Alibaba Cloud user.
///
/// > **DEPRECATED:**  This datasource has been deprecated from version `1.204.0`. Please use new datasource emrv2_clusters.
///
/// > **NOTE:** Available in v1.146.0+.
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
/// const config = new pulumi.Config();
/// const name = config.get("name") || "tf-testAccClusters";
/// const _default = alicloud.resourcemanager.getResourceGroups({
///     status: "OK",
/// });
/// const defaultGetMainVersions = alicloud.emr.getMainVersions({});
/// const defaultGetInstanceTypes = defaultGetMainVersions.then(defaultGetMainVersions => alicloud.emr.getInstanceTypes({
///     destinationResource: "InstanceType",
///     clusterType: defaultGetMainVersions.mainVersions?.[0]?.clusterTypes?.[0],
///     supportLocalStorage: false,
///     instanceChargeType: "PostPaid",
///     supportNodeTypes: [
///         "MASTER",
///         "CORE",
///         "TASK",
///     ],
/// }));
/// const dataDisk = Promise.all([defaultGetMainVersions, defaultGetInstanceTypes, defaultGetInstanceTypes]).then(([defaultGetMainVersions, defaultGetInstanceTypes, defaultGetInstanceTypes1]) => alicloud.emr.getDiskTypes({
///     destinationResource: "DataDisk",
///     clusterType: defaultGetMainVersions.mainVersions?.[0]?.clusterTypes?.[0],
///     instanceChargeType: "PostPaid",
///     instanceType: defaultGetInstanceTypes.types?.[0]?.id,
///     zoneId: defaultGetInstanceTypes1.types?.[0]?.zoneId,
/// }));
/// const systemDisk = Promise.all([defaultGetMainVersions, defaultGetInstanceTypes, defaultGetInstanceTypes]).then(([defaultGetMainVersions, defaultGetInstanceTypes, defaultGetInstanceTypes1]) => alicloud.emr.getDiskTypes({
///     destinationResource: "SystemDisk",
///     clusterType: defaultGetMainVersions.mainVersions?.[0]?.clusterTypes?.[0],
///     instanceChargeType: "PostPaid",
///     instanceType: defaultGetInstanceTypes.types?.[0]?.id,
///     zoneId: defaultGetInstanceTypes1.types?.[0]?.zoneId,
/// }));
/// const defaultGetNetworks = alicloud.vpc.getNetworks({
///     nameRegex: "default-NODELETING",
/// });
/// const defaultSecurityGroup = new alicloud.ecs.SecurityGroup("default", {
///     name: name,
///     vpcId: defaultGetNetworks.then(defaultGetNetworks => defaultGetNetworks.ids?.[0]),
/// });
/// const defaultGetSwitches = Promise.all([defaultGetNetworks, defaultGetInstanceTypes]).then(([defaultGetNetworks, defaultGetInstanceTypes]) => alicloud.vpc.getSwitches({
///     vpcId: defaultGetNetworks.ids?.[0],
///     zoneId: defaultGetInstanceTypes.types?.[0]?.zoneId,
/// }));
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
///     description: "this is a role test.",
///     force: true,
/// });
/// const defaultCluster = new alicloud.emr.Cluster("default", {
///     name: name,
///     emrVer: defaultGetMainVersions.then(defaultGetMainVersions => defaultGetMainVersions.mainVersions?.[0]?.emrVersion),
///     clusterType: defaultGetMainVersions.then(defaultGetMainVersions => defaultGetMainVersions.mainVersions?.[0]?.clusterTypes?.[0]),
///     hostGroups: [
///         {
///             hostGroupName: "master_group",
///             hostGroupType: "MASTER",
///             nodeCount: "2",
///             instanceType: defaultGetInstanceTypes.then(defaultGetInstanceTypes => defaultGetInstanceTypes.types?.[0]?.id),
///             diskType: dataDisk.then(dataDisk => dataDisk.types?.[0]?.value),
///             diskCapacity: Promise.all([dataDisk, dataDisk]).then(([dataDisk, dataDisk1]) => dataDisk.types?.[0]?.min > 160 ? dataDisk1.types?.[0]?.min : 160),
///             diskCount: "1",
///             sysDiskType: systemDisk.then(systemDisk => systemDisk.types?.[0]?.value),
///             sysDiskCapacity: Promise.all([systemDisk, systemDisk]).then(([systemDisk, systemDisk1]) => systemDisk.types?.[0]?.min > 160 ? systemDisk1.types?.[0]?.min : 160),
///         },
///         {
///             hostGroupName: "core_group",
///             hostGroupType: "CORE",
///             nodeCount: "3",
///             instanceType: defaultGetInstanceTypes.then(defaultGetInstanceTypes => defaultGetInstanceTypes.types?.[0]?.id),
///             diskType: dataDisk.then(dataDisk => dataDisk.types?.[0]?.value),
///             diskCapacity: Promise.all([dataDisk, dataDisk]).then(([dataDisk, dataDisk1]) => dataDisk.types?.[0]?.min > 160 ? dataDisk1.types?.[0]?.min : 160),
///             diskCount: "4",
///             sysDiskType: systemDisk.then(systemDisk => systemDisk.types?.[0]?.value),
///             sysDiskCapacity: Promise.all([systemDisk, systemDisk]).then(([systemDisk, systemDisk1]) => systemDisk.types?.[0]?.min > 160 ? systemDisk1.types?.[0]?.min : 160),
///         },
///         {
///             hostGroupName: "task_group",
///             hostGroupType: "TASK",
///             nodeCount: "2",
///             instanceType: defaultGetInstanceTypes.then(defaultGetInstanceTypes => defaultGetInstanceTypes.types?.[0]?.id),
///             diskType: dataDisk.then(dataDisk => dataDisk.types?.[0]?.value),
///             diskCapacity: Promise.all([dataDisk, dataDisk]).then(([dataDisk, dataDisk1]) => dataDisk.types?.[0]?.min > 160 ? dataDisk1.types?.[0]?.min : 160),
///             diskCount: "4",
///             sysDiskType: systemDisk.then(systemDisk => systemDisk.types?.[0]?.value),
///             sysDiskCapacity: Promise.all([systemDisk, systemDisk]).then(([systemDisk, systemDisk1]) => systemDisk.types?.[0]?.min > 160 ? systemDisk1.types?.[0]?.min : 160),
///         },
///     ],
///     highAvailabilityEnable: true,
///     zoneId: defaultGetInstanceTypes.then(defaultGetInstanceTypes => defaultGetInstanceTypes.types?.[0]?.zoneId),
///     securityGroupId: defaultSecurityGroup.id,
///     isOpenPublicIp: true,
///     chargeType: "PostPaid",
///     vswitchId: defaultGetSwitches.then(defaultGetSwitches => defaultGetSwitches.ids?.[0]),
///     userDefinedEmrEcsRole: defaultRole.name,
///     sshEnable: true,
///     masterPwd: "ABCtest1234!",
///     tags: {
///         Created: "TF",
///         For: "acceptance test",
///     },
/// });
/// const ids = alicloud.emr.getClusters({});
/// export const emrClusterId1 = ids.then(ids => ids.clusters?.[0]?.id);
/// const nameRegex = alicloud.emr.getClustersOutput({
///     nameRegex: defaultCluster.name,
/// });
/// export const emrClusterId2 = nameRegex.apply(nameRegex => nameRegex.clusters?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "tf-testAccClusters"
/// default = alicloud.resourcemanager.get_resource_groups(status="OK")
/// default_get_main_versions = alicloud.emr.get_main_versions()
/// default_get_instance_types = alicloud.emr.get_instance_types(destination_resource="InstanceType",
///     cluster_type=default_get_main_versions.main_versions[0].cluster_types[0],
///     support_local_storage=False,
///     instance_charge_type="PostPaid",
///     support_node_types=[
///         "MASTER",
///         "CORE",
///         "TASK",
///     ])
/// data_disk = alicloud.emr.get_disk_types(destination_resource="DataDisk",
///     cluster_type=default_get_main_versions.main_versions[0].cluster_types[0],
///     instance_charge_type="PostPaid",
///     instance_type=default_get_instance_types.types[0].id,
///     zone_id=default_get_instance_types.types[0].zone_id)
/// system_disk = alicloud.emr.get_disk_types(destination_resource="SystemDisk",
///     cluster_type=default_get_main_versions.main_versions[0].cluster_types[0],
///     instance_charge_type="PostPaid",
///     instance_type=default_get_instance_types.types[0].id,
///     zone_id=default_get_instance_types.types[0].zone_id)
/// default_get_networks = alicloud.vpc.get_networks(name_regex="default-NODELETING")
/// default_security_group = alicloud.ecs.SecurityGroup("default",
///     name=name,
///     vpc_id=default_get_networks.ids[0])
/// default_get_switches = alicloud.vpc.get_switches(vpc_id=default_get_networks.ids[0],
///     zone_id=default_get_instance_types.types[0].zone_id)
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
///     description="this is a role test.",
///     force=True)
/// default_cluster = alicloud.emr.Cluster("default",
///     name=name,
///     emr_ver=default_get_main_versions.main_versions[0].emr_version,
///     cluster_type=default_get_main_versions.main_versions[0].cluster_types[0],
///     host_groups=[
///         {
///             "host_group_name": "master_group",
///             "host_group_type": "MASTER",
///             "node_count": "2",
///             "instance_type": default_get_instance_types.types[0].id,
///             "disk_type": data_disk.types[0].value,
///             "disk_capacity": data_disk.types[0].min if data_disk.types[0].min > 160 else "160",
///             "disk_count": "1",
///             "sys_disk_type": system_disk.types[0].value,
///             "sys_disk_capacity": system_disk.types[0].min if system_disk.types[0].min > 160 else "160",
///         },
///         {
///             "host_group_name": "core_group",
///             "host_group_type": "CORE",
///             "node_count": "3",
///             "instance_type": default_get_instance_types.types[0].id,
///             "disk_type": data_disk.types[0].value,
///             "disk_capacity": data_disk.types[0].min if data_disk.types[0].min > 160 else "160",
///             "disk_count": "4",
///             "sys_disk_type": system_disk.types[0].value,
///             "sys_disk_capacity": system_disk.types[0].min if system_disk.types[0].min > 160 else "160",
///         },
///         {
///             "host_group_name": "task_group",
///             "host_group_type": "TASK",
///             "node_count": "2",
///             "instance_type": default_get_instance_types.types[0].id,
///             "disk_type": data_disk.types[0].value,
///             "disk_capacity": data_disk.types[0].min if data_disk.types[0].min > 160 else "160",
///             "disk_count": "4",
///             "sys_disk_type": system_disk.types[0].value,
///             "sys_disk_capacity": system_disk.types[0].min if system_disk.types[0].min > 160 else "160",
///         },
///     ],
///     high_availability_enable=True,
///     zone_id=default_get_instance_types.types[0].zone_id,
///     security_group_id=default_security_group.id,
///     is_open_public_ip=True,
///     charge_type="PostPaid",
///     vswitch_id=default_get_switches.ids[0],
///     user_defined_emr_ecs_role=default_role.name,
///     ssh_enable=True,
///     master_pwd="ABCtest1234!",
///     tags={
///         "Created": "TF",
///         "For": "acceptance test",
///     })
/// ids = alicloud.emr.get_clusters()
/// pulumi.export("emrClusterId1", ids.clusters[0].id)
/// name_regex = alicloud.emr.get_clusters_output(name_regex=default_cluster.name)
/// pulumi.export("emrClusterId2", name_regex.clusters[0].id)
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
///     var name = config.Get("name") ?? "tf-testAccClusters";
///     var @default = AliCloud.ResourceManager.GetResourceGroups.Invoke(new()
///     {
///         Status = "OK",
///     });
///
///     var defaultGetMainVersions = AliCloud.Emr.GetMainVersions.Invoke();
///
///     var defaultGetInstanceTypes = AliCloud.Emr.GetInstanceTypes.Invoke(new()
///     {
///         DestinationResource = "InstanceType",
///         ClusterType = defaultGetMainVersions.Apply(getMainVersionsResult => getMainVersionsResult.MainVersions[0]?.ClusterTypes[0]),
///         SupportLocalStorage = false,
///         InstanceChargeType = "PostPaid",
///         SupportNodeTypes = new[]
///         {
///             "MASTER",
///             "CORE",
///             "TASK",
///         },
///     });
///
///     var dataDisk = AliCloud.Emr.GetDiskTypes.Invoke(new()
///     {
///         DestinationResource = "DataDisk",
///         ClusterType = defaultGetMainVersions.Apply(getMainVersionsResult => getMainVersionsResult.MainVersions[0]?.ClusterTypes[0]),
///         InstanceChargeType = "PostPaid",
///         InstanceType = defaultGetInstanceTypes.Apply(getInstanceTypesResult => getInstanceTypesResult.Types[0]?.Id),
///         ZoneId = defaultGetInstanceTypes.Apply(getInstanceTypesResult => getInstanceTypesResult.Types[0]?.ZoneId),
///     });
///
///     var systemDisk = AliCloud.Emr.GetDiskTypes.Invoke(new()
///     {
///         DestinationResource = "SystemDisk",
///         ClusterType = defaultGetMainVersions.Apply(getMainVersionsResult => getMainVersionsResult.MainVersions[0]?.ClusterTypes[0]),
///         InstanceChargeType = "PostPaid",
///         InstanceType = defaultGetInstanceTypes.Apply(getInstanceTypesResult => getInstanceTypesResult.Types[0]?.Id),
///         ZoneId = defaultGetInstanceTypes.Apply(getInstanceTypesResult => getInstanceTypesResult.Types[0]?.ZoneId),
///     });
///
///     var defaultGetNetworks = AliCloud.Vpc.GetNetworks.Invoke(new()
///     {
///         NameRegex = "default-NODELETING",
///     });
///
///     var defaultSecurityGroup = new AliCloud.Ecs.SecurityGroup("default", new()
///     {
///         Name = name,
///         VpcId = defaultGetNetworks.Apply(getNetworksResult => getNetworksResult.Ids[0]),
///     });
///
///     var defaultGetSwitches = AliCloud.Vpc.GetSwitches.Invoke(new()
///     {
///         VpcId = defaultGetNetworks.Apply(getNetworksResult => getNetworksResult.Ids[0]),
///         ZoneId = defaultGetInstanceTypes.Apply(getInstanceTypesResult => getInstanceTypesResult.Types[0]?.ZoneId),
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
///         Description = "this is a role test.",
///         Force = true,
///     });
///
///     var defaultCluster = new AliCloud.Emr.Cluster("default", new()
///     {
///         Name = name,
///         EmrVer = defaultGetMainVersions.Apply(getMainVersionsResult => getMainVersionsResult.MainVersions[0]?.EmrVersion),
///         ClusterType = defaultGetMainVersions.Apply(getMainVersionsResult => getMainVersionsResult.MainVersions[0]?.ClusterTypes[0]),
///         HostGroups = new[]
///         {
///             new AliCloud.Emr.Inputs.ClusterHostGroupArgs
///             {
///                 HostGroupName = "master_group",
///                 HostGroupType = "MASTER",
///                 NodeCount = "2",
///                 InstanceType = defaultGetInstanceTypes.Apply(getInstanceTypesResult => getInstanceTypesResult.Types[0]?.Id),
///                 DiskType = dataDisk.Apply(getDiskTypesResult => getDiskTypesResult.Types[0]?.Value),
///                 DiskCapacity = Output.Tuple(dataDisk, dataDisk).Apply(values =>
///                 {
///                     var dataDisk = values.Item1;
///                     var dataDisk1 = values.Item2;
///                     return dataDisk.Apply(getDiskTypesResult => getDiskTypesResult.Types[0]?.Min) > 160 ? dataDisk1.Types[0]?.Min : 160;
///                 }),
///                 DiskCount = "1",
///                 SysDiskType = systemDisk.Apply(getDiskTypesResult => getDiskTypesResult.Types[0]?.Value),
///                 SysDiskCapacity = Output.Tuple(systemDisk, systemDisk).Apply(values =>
///                 {
///                     var systemDisk = values.Item1;
///                     var systemDisk1 = values.Item2;
///                     return systemDisk.Apply(getDiskTypesResult => getDiskTypesResult.Types[0]?.Min) > 160 ? systemDisk1.Types[0]?.Min : 160;
///                 }),
///             },
///             new AliCloud.Emr.Inputs.ClusterHostGroupArgs
///             {
///                 HostGroupName = "core_group",
///                 HostGroupType = "CORE",
///                 NodeCount = "3",
///                 InstanceType = defaultGetInstanceTypes.Apply(getInstanceTypesResult => getInstanceTypesResult.Types[0]?.Id),
///                 DiskType = dataDisk.Apply(getDiskTypesResult => getDiskTypesResult.Types[0]?.Value),
///                 DiskCapacity = Output.Tuple(dataDisk, dataDisk).Apply(values =>
///                 {
///                     var dataDisk = values.Item1;
///                     var dataDisk1 = values.Item2;
///                     return dataDisk.Apply(getDiskTypesResult => getDiskTypesResult.Types[0]?.Min) > 160 ? dataDisk1.Types[0]?.Min : 160;
///                 }),
///                 DiskCount = "4",
///                 SysDiskType = systemDisk.Apply(getDiskTypesResult => getDiskTypesResult.Types[0]?.Value),
///                 SysDiskCapacity = Output.Tuple(systemDisk, systemDisk).Apply(values =>
///                 {
///                     var systemDisk = values.Item1;
///                     var systemDisk1 = values.Item2;
///                     return systemDisk.Apply(getDiskTypesResult => getDiskTypesResult.Types[0]?.Min) > 160 ? systemDisk1.Types[0]?.Min : 160;
///                 }),
///             },
///             new AliCloud.Emr.Inputs.ClusterHostGroupArgs
///             {
///                 HostGroupName = "task_group",
///                 HostGroupType = "TASK",
///                 NodeCount = "2",
///                 InstanceType = defaultGetInstanceTypes.Apply(getInstanceTypesResult => getInstanceTypesResult.Types[0]?.Id),
///                 DiskType = dataDisk.Apply(getDiskTypesResult => getDiskTypesResult.Types[0]?.Value),
///                 DiskCapacity = Output.Tuple(dataDisk, dataDisk).Apply(values =>
///                 {
///                     var dataDisk = values.Item1;
///                     var dataDisk1 = values.Item2;
///                     return dataDisk.Apply(getDiskTypesResult => getDiskTypesResult.Types[0]?.Min) > 160 ? dataDisk1.Types[0]?.Min : 160;
///                 }),
///                 DiskCount = "4",
///                 SysDiskType = systemDisk.Apply(getDiskTypesResult => getDiskTypesResult.Types[0]?.Value),
///                 SysDiskCapacity = Output.Tuple(systemDisk, systemDisk).Apply(values =>
///                 {
///                     var systemDisk = values.Item1;
///                     var systemDisk1 = values.Item2;
///                     return systemDisk.Apply(getDiskTypesResult => getDiskTypesResult.Types[0]?.Min) > 160 ? systemDisk1.Types[0]?.Min : 160;
///                 }),
///             },
///         },
///         HighAvailabilityEnable = true,
///         ZoneId = defaultGetInstanceTypes.Apply(getInstanceTypesResult => getInstanceTypesResult.Types[0]?.ZoneId),
///         SecurityGroupId = defaultSecurityGroup.Id,
///         IsOpenPublicIp = true,
///         ChargeType = "PostPaid",
///         VswitchId = defaultGetSwitches.Apply(getSwitchesResult => getSwitchesResult.Ids[0]),
///         UserDefinedEmrEcsRole = defaultRole.Name,
///         SshEnable = true,
///         MasterPwd = "ABCtest1234!",
///         Tags =
///         {
///             { "Created", "TF" },
///             { "For", "acceptance test" },
///         },
///     });
///
///     var ids = AliCloud.Emr.GetClusters.Invoke();
///
///     var nameRegex = AliCloud.Emr.GetClusters.Invoke(new()
///     {
///         NameRegex = defaultCluster.Name,
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["emrClusterId1"] = ids.Apply(getClustersResult => getClustersResult.Clusters[0]?.Id),
///         ["emrClusterId2"] = nameRegex.Apply(getClustersResult => getClustersResult.Clusters[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ecs"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/emr"
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
/// 		name := "tf-testAccClusters"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_, err := resourcemanager.GetResourceGroups(ctx, &resourcemanager.GetResourceGroupsArgs{
/// 			Status: pulumi.StringRef("OK"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetMainVersions, err := emr.GetMainVersions(ctx, &emr.GetMainVersionsArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetInstanceTypes, err := emr.GetInstanceTypes(ctx, &emr.GetInstanceTypesArgs{
/// 			DestinationResource: "InstanceType",
/// 			ClusterType:         defaultGetMainVersions.MainVersions[0].ClusterTypes[0],
/// 			SupportLocalStorage: pulumi.BoolRef(false),
/// 			InstanceChargeType:  "PostPaid",
/// 			SupportNodeTypes: []string{
/// 				"MASTER",
/// 				"CORE",
/// 				"TASK",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		dataDisk, err := emr.GetDiskTypes(ctx, &emr.GetDiskTypesArgs{
/// 			DestinationResource: "DataDisk",
/// 			ClusterType:         defaultGetMainVersions.MainVersions[0].ClusterTypes[0],
/// 			InstanceChargeType:  "PostPaid",
/// 			InstanceType:        defaultGetInstanceTypes.Types[0].Id,
/// 			ZoneId:              pulumi.StringRef(defaultGetInstanceTypes.Types[0].ZoneId),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		systemDisk, err := emr.GetDiskTypes(ctx, &emr.GetDiskTypesArgs{
/// 			DestinationResource: "SystemDisk",
/// 			ClusterType:         defaultGetMainVersions.MainVersions[0].ClusterTypes[0],
/// 			InstanceChargeType:  "PostPaid",
/// 			InstanceType:        defaultGetInstanceTypes.Types[0].Id,
/// 			ZoneId:              pulumi.StringRef(defaultGetInstanceTypes.Types[0].ZoneId),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetNetworks, err := vpc.GetNetworks(ctx, &vpc.GetNetworksArgs{
/// 			NameRegex: pulumi.StringRef("default-NODELETING"),
/// 		}, nil)
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
/// 		defaultGetSwitches, err := vpc.GetSwitches(ctx, &vpc.GetSwitchesArgs{
/// 			VpcId:  pulumi.StringRef(defaultGetNetworks.Ids[0]),
/// 			ZoneId: pulumi.StringRef(defaultGetInstanceTypes.Types[0].ZoneId),
/// 		}, nil)
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
/// 			Description: pulumi.String("this is a role test."),
/// 			Force:       pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		var tmp0 pulumi.String
/// 		if dataDisk.Types[0].Min > 160 {
/// 			tmp0 = pulumi.Int(dataDisk.Types[0].Min)
/// 		} else {
/// 			tmp0 = pulumi.String("160")
/// 		}
/// 		var tmp1 pulumi.String
/// 		if systemDisk.Types[0].Min > 160 {
/// 			tmp1 = pulumi.Int(systemDisk.Types[0].Min)
/// 		} else {
/// 			tmp1 = pulumi.String("160")
/// 		}
/// 		var tmp2 pulumi.String
/// 		if dataDisk.Types[0].Min > 160 {
/// 			tmp2 = pulumi.Int(dataDisk.Types[0].Min)
/// 		} else {
/// 			tmp2 = pulumi.String("160")
/// 		}
/// 		var tmp3 pulumi.String
/// 		if systemDisk.Types[0].Min > 160 {
/// 			tmp3 = pulumi.Int(systemDisk.Types[0].Min)
/// 		} else {
/// 			tmp3 = pulumi.String("160")
/// 		}
/// 		var tmp4 pulumi.String
/// 		if dataDisk.Types[0].Min > 160 {
/// 			tmp4 = pulumi.Int(dataDisk.Types[0].Min)
/// 		} else {
/// 			tmp4 = pulumi.String("160")
/// 		}
/// 		var tmp5 pulumi.String
/// 		if systemDisk.Types[0].Min > 160 {
/// 			tmp5 = pulumi.Int(systemDisk.Types[0].Min)
/// 		} else {
/// 			tmp5 = pulumi.String("160")
/// 		}
/// 		defaultCluster, err := emr.NewCluster(ctx, "default", &emr.ClusterArgs{
/// 			Name:        pulumi.String(name),
/// 			EmrVer:      pulumi.String(defaultGetMainVersions.MainVersions[0].EmrVersion),
/// 			ClusterType: pulumi.String(defaultGetMainVersions.MainVersions[0].ClusterTypes[0]),
/// 			HostGroups: emr.ClusterHostGroupArray{
/// 				&emr.ClusterHostGroupArgs{
/// 					HostGroupName:   pulumi.String("master_group"),
/// 					HostGroupType:   pulumi.String("MASTER"),
/// 					NodeCount:       pulumi.String("2"),
/// 					InstanceType:    pulumi.String(defaultGetInstanceTypes.Types[0].Id),
/// 					DiskType:        pulumi.String(dataDisk.Types[0].Value),
/// 					DiskCapacity:    pulumi.String(tmp0),
/// 					DiskCount:       pulumi.String("1"),
/// 					SysDiskType:     pulumi.String(systemDisk.Types[0].Value),
/// 					SysDiskCapacity: pulumi.String(tmp1),
/// 				},
/// 				&emr.ClusterHostGroupArgs{
/// 					HostGroupName:   pulumi.String("core_group"),
/// 					HostGroupType:   pulumi.String("CORE"),
/// 					NodeCount:       pulumi.String("3"),
/// 					InstanceType:    pulumi.String(defaultGetInstanceTypes.Types[0].Id),
/// 					DiskType:        pulumi.String(dataDisk.Types[0].Value),
/// 					DiskCapacity:    pulumi.String(tmp2),
/// 					DiskCount:       pulumi.String("4"),
/// 					SysDiskType:     pulumi.String(systemDisk.Types[0].Value),
/// 					SysDiskCapacity: pulumi.String(tmp3),
/// 				},
/// 				&emr.ClusterHostGroupArgs{
/// 					HostGroupName:   pulumi.String("task_group"),
/// 					HostGroupType:   pulumi.String("TASK"),
/// 					NodeCount:       pulumi.String("2"),
/// 					InstanceType:    pulumi.String(defaultGetInstanceTypes.Types[0].Id),
/// 					DiskType:        pulumi.String(dataDisk.Types[0].Value),
/// 					DiskCapacity:    pulumi.String(tmp4),
/// 					DiskCount:       pulumi.String("4"),
/// 					SysDiskType:     pulumi.String(systemDisk.Types[0].Value),
/// 					SysDiskCapacity: pulumi.String(tmp5),
/// 				},
/// 			},
/// 			HighAvailabilityEnable: pulumi.Bool(true),
/// 			ZoneId:                 pulumi.String(defaultGetInstanceTypes.Types[0].ZoneId),
/// 			SecurityGroupId:        defaultSecurityGroup.ID(),
/// 			IsOpenPublicIp:         pulumi.Bool(true),
/// 			ChargeType:             pulumi.String("PostPaid"),
/// 			VswitchId:              pulumi.String(defaultGetSwitches.Ids[0]),
/// 			UserDefinedEmrEcsRole:  defaultRole.Name,
/// 			SshEnable:              pulumi.Bool(true),
/// 			MasterPwd:              pulumi.String("ABCtest1234!"),
/// 			Tags: pulumi.StringMap{
/// 				"Created": pulumi.String("TF"),
/// 				"For":     pulumi.String("acceptance test"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ids, err := emr.GetClusters(ctx, &emr.GetClustersArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("emrClusterId1", ids.Clusters[0].Id)
/// 		nameRegex := emr.GetClustersOutput(ctx, emr.GetClustersOutputArgs{
/// 			NameRegex: defaultCluster.Name,
/// 		}, nil)
/// 		ctx.Export("emrClusterId2", nameRegex.ApplyT(func(nameRegex emr.GetClustersResult) (*string, error) {
/// 			return &nameRegex.Clusters[0].Id, nil
/// 		}).(pulumi.StringPtrOutput))
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
/// import com.pulumi.alicloud.emr.EmrFunctions;
/// import com.pulumi.alicloud.emr.inputs.GetMainVersionsArgs;
/// import com.pulumi.alicloud.emr.inputs.GetInstanceTypesArgs;
/// import com.pulumi.alicloud.emr.inputs.GetDiskTypesArgs;
/// import com.pulumi.alicloud.vpc.VpcFunctions;
/// import com.pulumi.alicloud.vpc.inputs.GetNetworksArgs;
/// import com.pulumi.alicloud.ecs.SecurityGroup;
/// import com.pulumi.alicloud.ecs.SecurityGroupArgs;
/// import com.pulumi.alicloud.vpc.inputs.GetSwitchesArgs;
/// import com.pulumi.alicloud.ram.Role;
/// import com.pulumi.alicloud.ram.RoleArgs;
/// import com.pulumi.alicloud.emr.Cluster;
/// import com.pulumi.alicloud.emr.ClusterArgs;
/// import com.pulumi.alicloud.emr.inputs.ClusterHostGroupArgs;
/// import com.pulumi.alicloud.emr.inputs.GetClustersArgs;
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
///         final var name = config.get("name").orElse("tf-testAccClusters");
///         final var default = ResourcemanagerFunctions.getResourceGroups(GetResourceGroupsArgs.builder()
///             .status("OK")
///             .build());
///
///         final var defaultGetMainVersions = EmrFunctions.getMainVersions(GetMainVersionsArgs.builder()
///             .build());
///
///         final var defaultGetInstanceTypes = EmrFunctions.getInstanceTypes(GetInstanceTypesArgs.builder()
///             .destinationResource("InstanceType")
///             .clusterType(defaultGetMainVersions.mainVersions()[0].clusterTypes()[0])
///             .supportLocalStorage(false)
///             .instanceChargeType("PostPaid")
///             .supportNodeTypes(
///                 "MASTER",
///                 "CORE",
///                 "TASK")
///             .build());
///
///         final var dataDisk = EmrFunctions.getDiskTypes(GetDiskTypesArgs.builder()
///             .destinationResource("DataDisk")
///             .clusterType(defaultGetMainVersions.mainVersions()[0].clusterTypes()[0])
///             .instanceChargeType("PostPaid")
///             .instanceType(defaultGetInstanceTypes.types()[0].id())
///             .zoneId(defaultGetInstanceTypes.types()[0].zoneId())
///             .build());
///
///         final var systemDisk = EmrFunctions.getDiskTypes(GetDiskTypesArgs.builder()
///             .destinationResource("SystemDisk")
///             .clusterType(defaultGetMainVersions.mainVersions()[0].clusterTypes()[0])
///             .instanceChargeType("PostPaid")
///             .instanceType(defaultGetInstanceTypes.types()[0].id())
///             .zoneId(defaultGetInstanceTypes.types()[0].zoneId())
///             .build());
///
///         final var defaultGetNetworks = VpcFunctions.getNetworks(GetNetworksArgs.builder()
///             .nameRegex("default-NODELETING")
///             .build());
///
///         var defaultSecurityGroup = new SecurityGroup("defaultSecurityGroup", SecurityGroupArgs.builder()
///             .name(name)
///             .vpcId(defaultGetNetworks.ids()[0])
///             .build());
///
///         final var defaultGetSwitches = VpcFunctions.getSwitches(GetSwitchesArgs.builder()
///             .vpcId(defaultGetNetworks.ids()[0])
///             .zoneId(defaultGetInstanceTypes.types()[0].zoneId())
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
///             .description("this is a role test.")
///             .force(true)
///             .build());
///
///         var defaultCluster = new Cluster("defaultCluster", ClusterArgs.builder()
///             .name(name)
///             .emrVer(defaultGetMainVersions.mainVersions()[0].emrVersion())
///             .clusterType(defaultGetMainVersions.mainVersions()[0].clusterTypes()[0])
///             .hostGroups(
///                 ClusterHostGroupArgs.builder()
///                     .hostGroupName("master_group")
///                     .hostGroupType("MASTER")
///                     .nodeCount("2")
///                     .instanceType(defaultGetInstanceTypes.types()[0].id())
///                     .diskType(dataDisk.types()[0].value())
///                     .diskCapacity(dataDisk.types()[0].min().applyValue(___convert -> ___convert > 160) ? dataDisk.types()[0].min() : "160")
///                     .diskCount("1")
///                     .sysDiskType(systemDisk.types()[0].value())
///                     .sysDiskCapacity(systemDisk.types()[0].min().applyValue(___convert -> ___convert > 160) ? systemDisk.types()[0].min() : "160")
///                     .build(),
///                 ClusterHostGroupArgs.builder()
///                     .hostGroupName("core_group")
///                     .hostGroupType("CORE")
///                     .nodeCount("3")
///                     .instanceType(defaultGetInstanceTypes.types()[0].id())
///                     .diskType(dataDisk.types()[0].value())
///                     .diskCapacity(dataDisk.types()[0].min().applyValue(___convert -> ___convert > 160) ? dataDisk.types()[0].min() : "160")
///                     .diskCount("4")
///                     .sysDiskType(systemDisk.types()[0].value())
///                     .sysDiskCapacity(systemDisk.types()[0].min().applyValue(___convert -> ___convert > 160) ? systemDisk.types()[0].min() : "160")
///                     .build(),
///                 ClusterHostGroupArgs.builder()
///                     .hostGroupName("task_group")
///                     .hostGroupType("TASK")
///                     .nodeCount("2")
///                     .instanceType(defaultGetInstanceTypes.types()[0].id())
///                     .diskType(dataDisk.types()[0].value())
///                     .diskCapacity(dataDisk.types()[0].min().applyValue(___convert -> ___convert > 160) ? dataDisk.types()[0].min() : "160")
///                     .diskCount("4")
///                     .sysDiskType(systemDisk.types()[0].value())
///                     .sysDiskCapacity(systemDisk.types()[0].min().applyValue(___convert -> ___convert > 160) ? systemDisk.types()[0].min() : "160")
///                     .build())
///             .highAvailabilityEnable(true)
///             .zoneId(defaultGetInstanceTypes.types()[0].zoneId())
///             .securityGroupId(defaultSecurityGroup.id())
///             .isOpenPublicIp(true)
///             .chargeType("PostPaid")
///             .vswitchId(defaultGetSwitches.ids()[0])
///             .userDefinedEmrEcsRole(defaultRole.name())
///             .sshEnable(true)
///             .masterPwd("ABCtest1234!")
///             .tags(Map.ofEntries(
///                 Map.entry("Created", "TF"),
///                 Map.entry("For", "acceptance test")
///             ))
///             .build());
///
///         final var ids = EmrFunctions.getClusters(GetClustersArgs.builder()
///             .build());
///
///         ctx.export("emrClusterId1", ids.clusters()[0].id());
///         final var nameRegex = EmrFunctions.getClusters(GetClustersArgs.builder()
///             .nameRegex(defaultCluster.name())
///             .build());
///
///         ctx.export("emrClusterId2", nameRegex.applyValue(_nameRegex -> _nameRegex.clusters()[0].id()));
///     }
/// }
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_emr_get_clusters_get_clusters_args_doc}
/// [options] Invoke options controlling this call.
Future<GetClustersResult> getClusters(
  GetClustersArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:emr/getClusters:getClusters',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetClustersResult.fromMap(result);
}

/// The `alicloud.emr.getDiskTypes` data source provides a collection of data disk and
/// system disk types available in Alibaba Cloud account when create a emr cluster.
///
/// > **NOTE:** Available in 1.60.0+
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const _default = alicloud.emr.getDiskTypes({
///     destinationResource: "DataDisk",
///     instanceChargeType: "PostPaid",
///     clusterType: "HADOOP",
///     instanceType: "ecs.g5.xlarge",
///     zoneId: "cn-huhehaote-a",
/// });
/// export const dataDiskType = _default.then(_default => _default.types?.[0]?.value);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.emr.get_disk_types(destination_resource="DataDisk",
///     instance_charge_type="PostPaid",
///     cluster_type="HADOOP",
///     instance_type="ecs.g5.xlarge",
///     zone_id="cn-huhehaote-a")
/// pulumi.export("dataDiskType", default.types[0].value)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.Emr.GetDiskTypes.Invoke(new()
///     {
///         DestinationResource = "DataDisk",
///         InstanceChargeType = "PostPaid",
///         ClusterType = "HADOOP",
///         InstanceType = "ecs.g5.xlarge",
///         ZoneId = "cn-huhehaote-a",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["dataDiskType"] = @default.Apply(@default => @default.Apply(getDiskTypesResult => getDiskTypesResult.Types[0]?.Value)),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/emr"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := emr.GetDiskTypes(ctx, &emr.GetDiskTypesArgs{
/// 			DestinationResource: "DataDisk",
/// 			InstanceChargeType:  "PostPaid",
/// 			ClusterType:         "HADOOP",
/// 			InstanceType:        "ecs.g5.xlarge",
/// 			ZoneId:              pulumi.StringRef("cn-huhehaote-a"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("dataDiskType", _default.Types[0].Value)
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
/// import com.pulumi.alicloud.emr.EmrFunctions;
/// import com.pulumi.alicloud.emr.inputs.GetDiskTypesArgs;
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
///         final var default = EmrFunctions.getDiskTypes(GetDiskTypesArgs.builder()
///             .destinationResource("DataDisk")
///             .instanceChargeType("PostPaid")
///             .clusterType("HADOOP")
///             .instanceType("ecs.g5.xlarge")
///             .zoneId("cn-huhehaote-a")
///             .build());
///
///         ctx.export("dataDiskType", default_.types()[0].value());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:emr:getDiskTypes
///       arguments:
///         destinationResource: DataDisk
///         instanceChargeType: PostPaid
///         clusterType: HADOOP
///         instanceType: ecs.g5.xlarge
///         zoneId: cn-huhehaote-a
/// outputs:
///   dataDiskType: ${default.types[0].value}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_emr_get_disk_types_get_disk_types_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDiskTypesResult> getDiskTypes(
  GetDiskTypesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:emr/getDiskTypes:getDiskTypes',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDiskTypesResult.fromMap(result);
}

/// The `alicloud.emr.getInstanceTypes` data source provides a collection of ecs
/// instance types available in Alibaba Cloud account when create a emr cluster.
///
/// > **NOTE:** Available in 1.59.0+
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const _default = alicloud.emr.getInstanceTypes({
///     destinationResource: "InstanceType",
///     instanceChargeType: "PostPaid",
///     supportLocalStorage: false,
///     clusterType: "HADOOP",
///     instanceType: "ecs.g5.2xlarge",
///     supportNodeTypes: [
///         "MASTER",
///         "CORE",
///     ],
/// });
/// export const firstInstanceType = _default.then(_default => _default.types?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.emr.get_instance_types(destination_resource="InstanceType",
///     instance_charge_type="PostPaid",
///     support_local_storage=False,
///     cluster_type="HADOOP",
///     instance_type="ecs.g5.2xlarge",
///     support_node_types=[
///         "MASTER",
///         "CORE",
///     ])
/// pulumi.export("firstInstanceType", default.types[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.Emr.GetInstanceTypes.Invoke(new()
///     {
///         DestinationResource = "InstanceType",
///         InstanceChargeType = "PostPaid",
///         SupportLocalStorage = false,
///         ClusterType = "HADOOP",
///         InstanceType = "ecs.g5.2xlarge",
///         SupportNodeTypes = new[]
///         {
///             "MASTER",
///             "CORE",
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstInstanceType"] = @default.Apply(@default => @default.Apply(getInstanceTypesResult => getInstanceTypesResult.Types[0]?.Id)),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/emr"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := emr.GetInstanceTypes(ctx, &emr.GetInstanceTypesArgs{
/// 			DestinationResource: "InstanceType",
/// 			InstanceChargeType:  "PostPaid",
/// 			SupportLocalStorage: pulumi.BoolRef(false),
/// 			ClusterType:         "HADOOP",
/// 			InstanceType:        pulumi.StringRef("ecs.g5.2xlarge"),
/// 			SupportNodeTypes: []string{
/// 				"MASTER",
/// 				"CORE",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstInstanceType", _default.Types[0].Id)
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
/// import com.pulumi.alicloud.emr.EmrFunctions;
/// import com.pulumi.alicloud.emr.inputs.GetInstanceTypesArgs;
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
///         final var default = EmrFunctions.getInstanceTypes(GetInstanceTypesArgs.builder()
///             .destinationResource("InstanceType")
///             .instanceChargeType("PostPaid")
///             .supportLocalStorage(false)
///             .clusterType("HADOOP")
///             .instanceType("ecs.g5.2xlarge")
///             .supportNodeTypes(
///                 "MASTER",
///                 "CORE")
///             .build());
///
///         ctx.export("firstInstanceType", default_.types()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:emr:getInstanceTypes
///       arguments:
///         destinationResource: InstanceType
///         instanceChargeType: PostPaid
///         supportLocalStorage: false
///         clusterType: HADOOP
///         instanceType: ecs.g5.2xlarge
///         supportNodeTypes:
///           - MASTER
///           - CORE
/// outputs:
///   firstInstanceType: ${default.types[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_emr_get_instance_types_get_instance_types_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstanceTypesResult> getInstanceTypes(
  GetInstanceTypesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:emr/getInstanceTypes:getInstanceTypes',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceTypesResult.fromMap(result);
}

/// The `alicloud.emr.getMainVersions` data source provides a collection of emr
/// main versions available in Alibaba Cloud account when create a emr cluster.
///
/// > **NOTE:** Available in 1.59.0+
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const _default = alicloud.emr.getMainVersions({
///     emrVersion: "EMR-3.22.0",
///     clusterTypes: [
///         "HADOOP",
///         "ZOOKEEPER",
///     ],
/// });
/// export const firstMainVersion = _default.then(_default => _default.mainVersions?.[0]?.emrVersion);
/// export const thisClusterTypes = _default.then(_default => _default.mainVersions?.[0]?.clusterTypes);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.emr.get_main_versions(emr_version="EMR-3.22.0",
///     cluster_types=[
///         "HADOOP",
///         "ZOOKEEPER",
///     ])
/// pulumi.export("firstMainVersion", default.main_versions[0].emr_version)
/// pulumi.export("thisClusterTypes", default.main_versions[0].cluster_types)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.Emr.GetMainVersions.Invoke(new()
///     {
///         EmrVersion = "EMR-3.22.0",
///         ClusterTypes = new[]
///         {
///             "HADOOP",
///             "ZOOKEEPER",
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstMainVersion"] = @default.Apply(@default => @default.Apply(getMainVersionsResult => getMainVersionsResult.MainVersions[0]?.EmrVersion)),
///         ["thisClusterTypes"] = @default.Apply(@default => @default.Apply(getMainVersionsResult => getMainVersionsResult.MainVersions[0]?.ClusterTypes)),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/emr"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := emr.GetMainVersions(ctx, &emr.GetMainVersionsArgs{
/// 			EmrVersion: pulumi.StringRef("EMR-3.22.0"),
/// 			ClusterTypes: []string{
/// 				"HADOOP",
/// 				"ZOOKEEPER",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstMainVersion", _default.MainVersions[0].EmrVersion)
/// 		ctx.Export("thisClusterTypes", _default.MainVersions[0].ClusterTypes)
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
/// import com.pulumi.alicloud.emr.EmrFunctions;
/// import com.pulumi.alicloud.emr.inputs.GetMainVersionsArgs;
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
///         final var default = EmrFunctions.getMainVersions(GetMainVersionsArgs.builder()
///             .emrVersion("EMR-3.22.0")
///             .clusterTypes(
///                 "HADOOP",
///                 "ZOOKEEPER")
///             .build());
///
///         ctx.export("firstMainVersion", default_.mainVersions()[0].emrVersion());
///         ctx.export("thisClusterTypes", default_.mainVersions()[0].clusterTypes());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:emr:getMainVersions
///       arguments:
///         emrVersion: EMR-3.22.0
///         clusterTypes:
///           - HADOOP
///           - ZOOKEEPER
/// outputs:
///   firstMainVersion: ${default.mainVersions[0].emrVersion}
///   thisClusterTypes: ${default.mainVersions[0].clusterTypes}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_emr_get_main_versions_get_main_versions_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMainVersionsResult> getMainVersions(
  GetMainVersionsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:emr/getMainVersions:getMainVersions',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMainVersionsResult.fromMap(result);
}
