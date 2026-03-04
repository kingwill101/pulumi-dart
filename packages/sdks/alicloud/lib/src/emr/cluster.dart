import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_args.dart';
import 'cluster_meta_store_conf.dart';
import 'cluster_modify_cluster_service_config.dart';
import 'cluster_state.dart';

/// Provides a EMR Cluster resource. With this you can create, read, and release  EMR Cluster.
///
/// &gt; **DEPRECATED:**  This resource has been deprecated from version `1.204.0`. Please use new resource emrv2_cluster.
///
/// &gt; **NOTE:** Available since v1.57.0.
///
/// ## Example Usage
///
/// ### 1. Create A Cluster
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const _default = alicloud.emr.getMainVersions({});
/// const defaultGetInstanceTypes = _default.then(_default => alicloud.emr.getInstanceTypes({
///     destinationResource: "InstanceType",
///     clusterType: _default.mainVersions?.[0]?.clusterTypes?.[0],
///     supportLocalStorage: false,
///     instanceChargeType: "PostPaid",
///     supportNodeTypes: [
///         "MASTER",
///         "CORE",
///         "TASK",
///     ],
/// }));
/// const dataDisk = Promise.all([_default, defaultGetInstanceTypes, defaultGetInstanceTypes]).then(([_default, defaultGetInstanceTypes, defaultGetInstanceTypes1]) => alicloud.emr.getDiskTypes({
///     destinationResource: "DataDisk",
///     clusterType: _default.mainVersions?.[0]?.clusterTypes?.[0],
///     instanceChargeType: "PostPaid",
///     instanceType: defaultGetInstanceTypes.types?.[0]?.id,
///     zoneId: defaultGetInstanceTypes1.types?.[0]?.zoneId,
/// }));
/// const systemDisk = Promise.all([_default, defaultGetInstanceTypes, defaultGetInstanceTypes]).then(([_default, defaultGetInstanceTypes, defaultGetInstanceTypes1]) => alicloud.emr.getDiskTypes({
///     destinationResource: "SystemDisk",
///     clusterType: _default.mainVersions?.[0]?.clusterTypes?.[0],
///     instanceChargeType: "PostPaid",
///     instanceType: defaultGetInstanceTypes.types?.[0]?.id,
///     zoneId: defaultGetInstanceTypes1.types?.[0]?.zoneId,
/// }));
/// const vpc: alicloud.vpc.Network[] = [];
/// for (const range = {value: 0}; range.value < (vpcId == "" ? 1 : 0); range.value++) {
///     vpc.push(new alicloud.vpc.Network(`vpc-${range.value}`, {
///         name: vpcName,
///         cidrBlock: vpcCidr,
///     }));
/// }
/// const defaultSecurityGroup: alicloud.ecs.SecurityGroup[] = [];
/// for (const range = {value: 0}; range.value < (securityGroupId == "" ? 1 : 0); range.value++) {
///     defaultSecurityGroup.push(new alicloud.ecs.SecurityGroup(`default-${range.value}`, {
///         name: securityGroupName,
///         vpcId: vpcId == "" ? vpc[0].id : vpcId,
///     }));
/// }
/// // VSwitch Resource for Module
/// const vswitch: alicloud.vpc.Switch[] = [];
/// for (const range = {value: 0}; range.value < (vswitchId == "" ? 1 : 0); range.value++) {
///     vswitch.push(new alicloud.vpc.Switch(`vswitch-${range.value}`, {
///         availabilityZone: availabilityZone == "" ? defaultGetInstanceTypes.then(defaultGetInstanceTypes => defaultGetInstanceTypes.types?.[0]?.zoneId) : availabilityZone,
///         vswitchName: vswitchName,
///         cidrBlock: vswitchCidr,
///         vpcId: vpcId == "" ? vpc[0].id : vpcId,
///     }));
/// }
/// // Ram role Resource for Module
/// const defaultRole = new alicloud.ram.Role("default", {
///     name: ramName,
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
///     name: "terraform-create-cluster-test",
///     emrVer: _default.then(_default => _default.mainVersions?.[0]?.emrVersion),
///     clusterType: _default.then(_default => _default.mainVersions?.[0]?.clusterTypes?.[0]),
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
///     securityGroupId: securityGroupId == "" ? defaultSecurityGroup[0].id : securityGroupId,
///     isOpenPublicIp: true,
///     chargeType: "PostPaid",
///     vswitchId: vswitchId == "" ? vswitch[0].id : vswitchId,
///     userDefinedEmrEcsRole: defaultRole.name,
///     sshEnable: true,
///     masterPwd: "ABCtest1234!",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.emr.get_main_versions()
/// default_get_instance_types = alicloud.emr.get_instance_types(destination_resource="InstanceType",
///     cluster_type=default.main_versions[0].cluster_types[0],
///     support_local_storage=False,
///     instance_charge_type="PostPaid",
///     support_node_types=[
///         "MASTER",
///         "CORE",
///         "TASK",
///     ])
/// data_disk = alicloud.emr.get_disk_types(destination_resource="DataDisk",
///     cluster_type=default.main_versions[0].cluster_types[0],
///     instance_charge_type="PostPaid",
///     instance_type=default_get_instance_types.types[0].id,
///     zone_id=default_get_instance_types.types[0].zone_id)
/// system_disk = alicloud.emr.get_disk_types(destination_resource="SystemDisk",
///     cluster_type=default.main_versions[0].cluster_types[0],
///     instance_charge_type="PostPaid",
///     instance_type=default_get_instance_types.types[0].id,
///     zone_id=default_get_instance_types.types[0].zone_id)
/// vpc = []
/// for range in [{"value": i} for i in range(0, 1 if vpc_id ==  else 0)]:
///     vpc.append(alicloud.vpc.Network(f"vpc-{range['value']}",
///         name=vpc_name,
///         cidr_block=vpc_cidr))
/// default_security_group = []
/// for range in [{"value": i} for i in range(0, 1 if security_group_id ==  else 0)]:
///     default_security_group.append(alicloud.ecs.SecurityGroup(f"default-{range['value']}",
///         name=security_group_name,
///         vpc_id=vpc[0].id if vpc_id == "" else vpc_id))
/// # VSwitch Resource for Module
/// vswitch = []
/// for range in [{"value": i} for i in range(0, 1 if vswitch_id ==  else 0)]:
///     vswitch.append(alicloud.vpc.Switch(f"vswitch-{range['value']}",
///         availability_zone=default_get_instance_types.types[0].zone_id if availability_zone == "" else availability_zone,
///         vswitch_name=vswitch_name,
///         cidr_block=vswitch_cidr,
///         vpc_id=vpc[0].id if vpc_id == "" else vpc_id))
/// # Ram role Resource for Module
/// default_role = alicloud.ram.Role("default",
///     name=ram_name,
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
///     name="terraform-create-cluster-test",
///     emr_ver=default.main_versions[0].emr_version,
///     cluster_type=default.main_versions[0].cluster_types[0],
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
///     security_group_id=default_security_group[0].id if security_group_id == "" else security_group_id,
///     is_open_public_ip=True,
///     charge_type="PostPaid",
///     vswitch_id=vswitch[0].id if vswitch_id == "" else vswitch_id,
///     user_defined_emr_ecs_role=default_role.name,
///     ssh_enable=True,
///     master_pwd="ABCtest1234!")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.Emr.GetMainVersions.Invoke();
///
///     var defaultGetInstanceTypes = AliCloud.Emr.GetInstanceTypes.Invoke(new()
///     {
///         DestinationResource = "InstanceType",
///         ClusterType = @default.Apply(getMainVersionsResult => getMainVersionsResult.MainVersions[0]?.ClusterTypes[0]),
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
///         ClusterType = @default.Apply(getMainVersionsResult => getMainVersionsResult.MainVersions[0]?.ClusterTypes[0]),
///         InstanceChargeType = "PostPaid",
///         InstanceType = defaultGetInstanceTypes.Apply(getInstanceTypesResult => getInstanceTypesResult.Types[0]?.Id),
///         ZoneId = defaultGetInstanceTypes.Apply(getInstanceTypesResult => getInstanceTypesResult.Types[0]?.ZoneId),
///     });
///
///     var systemDisk = AliCloud.Emr.GetDiskTypes.Invoke(new()
///     {
///         DestinationResource = "SystemDisk",
///         ClusterType = @default.Apply(getMainVersionsResult => getMainVersionsResult.MainVersions[0]?.ClusterTypes[0]),
///         InstanceChargeType = "PostPaid",
///         InstanceType = defaultGetInstanceTypes.Apply(getInstanceTypesResult => getInstanceTypesResult.Types[0]?.Id),
///         ZoneId = defaultGetInstanceTypes.Apply(getInstanceTypesResult => getInstanceTypesResult.Types[0]?.ZoneId),
///     });
///
///     var vpc = new List<AliCloud.Vpc.Network>();
///     for (var rangeIndex = 0; rangeIndex < (vpcId == "" ? 1 : 0); rangeIndex++)
///     {
///         var range = new { Value = rangeIndex };
///         vpc.Add(new AliCloud.Vpc.Network($"vpc-{range.Value}", new()
///         {
///             Name = vpcName,
///             CidrBlock = vpcCidr,
///         }));
///     }
///     var defaultSecurityGroup = new List<AliCloud.Ecs.SecurityGroup>();
///     for (var rangeIndex = 0; rangeIndex < (securityGroupId == "" ? 1 : 0); rangeIndex++)
///     {
///         var range = new { Value = rangeIndex };
///         defaultSecurityGroup.Add(new AliCloud.Ecs.SecurityGroup($"default-{range.Value}", new()
///         {
///             Name = securityGroupName,
///             VpcId = vpcId == "" ? vpc[0].Id : vpcId,
///         }));
///     }
///     // VSwitch Resource for Module
///     var vswitch = new List<AliCloud.Vpc.Switch>();
///     for (var rangeIndex = 0; rangeIndex < (vswitchId == "" ? 1 : 0); rangeIndex++)
///     {
///         var range = new { Value = rangeIndex };
///         vswitch.Add(new AliCloud.Vpc.Switch($"vswitch-{range.Value}", new()
///         {
///             AvailabilityZone = availabilityZone == "" ? defaultGetInstanceTypes.Apply(getInstanceTypesResult => getInstanceTypesResult.Types[0]?.ZoneId) : availabilityZone,
///             VswitchName = vswitchName,
///             CidrBlock = vswitchCidr,
///             VpcId = vpcId == "" ? vpc[0].Id : vpcId,
///         }));
///     }
///     // Ram role Resource for Module
///     var defaultRole = new AliCloud.Ram.Role("default", new()
///     {
///         Name = ramName,
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
///         Name = "terraform-create-cluster-test",
///         EmrVer = @default.Apply(@default => @default.Apply(getMainVersionsResult => getMainVersionsResult.MainVersions[0]?.EmrVersion)),
///         ClusterType = @default.Apply(@default => @default.Apply(getMainVersionsResult => getMainVersionsResult.MainVersions[0]?.ClusterTypes[0])),
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
///         SecurityGroupId = securityGroupId == "" ? defaultSecurityGroup[0].Id : securityGroupId,
///         IsOpenPublicIp = true,
///         ChargeType = "PostPaid",
///         VswitchId = vswitchId == "" ? vswitch[0].Id : vswitchId,
///         UserDefinedEmrEcsRole = defaultRole.Name,
///         SshEnable = true,
///         MasterPwd = "ABCtest1234!",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ecs"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/emr"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ram"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := emr.GetMainVersions(ctx, &emr.GetMainVersionsArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetInstanceTypes, err := emr.GetInstanceTypes(ctx, &emr.GetInstanceTypesArgs{
/// 			DestinationResource: "InstanceType",
/// 			ClusterType:         _default.MainVersions[0].ClusterTypes[0],
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
/// 			ClusterType:         _default.MainVersions[0].ClusterTypes[0],
/// 			InstanceChargeType:  "PostPaid",
/// 			InstanceType:        defaultGetInstanceTypes.Types[0].Id,
/// 			ZoneId:              pulumi.StringRef(defaultGetInstanceTypes.Types[0].ZoneId),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		systemDisk, err := emr.GetDiskTypes(ctx, &emr.GetDiskTypesArgs{
/// 			DestinationResource: "SystemDisk",
/// 			ClusterType:         _default.MainVersions[0].ClusterTypes[0],
/// 			InstanceChargeType:  "PostPaid",
/// 			InstanceType:        defaultGetInstanceTypes.Types[0].Id,
/// 			ZoneId:              pulumi.StringRef(defaultGetInstanceTypes.Types[0].ZoneId),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		var tmp0 float64
/// 		if vpcId == "" {
/// 			tmp0 = 1
/// 		} else {
/// 			tmp0 = 0
/// 		}
/// 		var vpc []*vpc.Network
/// 		for index := 0; index < tmp0; index++ {
/// 			key0 := index
/// 			_ := index
/// 			__res, err := vpc.NewNetwork(ctx, fmt.Sprintf("vpc-%v", key0), &vpc.NetworkArgs{
/// 				Name:      pulumi.Any(vpcName),
/// 				CidrBlock: pulumi.Any(vpcCidr),
/// 			})
/// 			if err != nil {
/// 				return err
/// 			}
/// 			vpc = append(vpc, __res)
/// 		}
/// 		var tmp1 pulumi.String
/// 		if vpcId == "" {
/// 			tmp1 = vpc[0].ID()
/// 		} else {
/// 			tmp1 = pulumi.Any(vpcId)
/// 		}
/// 		var tmp2 float64
/// 		if securityGroupId == "" {
/// 			tmp2 = 1
/// 		} else {
/// 			tmp2 = 0
/// 		}
/// 		var defaultSecurityGroup []*ecs.SecurityGroup
/// 		for index := 0; index < tmp2; index++ {
/// 			key0 := index
/// 			_ := index
/// 			__res, err := ecs.NewSecurityGroup(ctx, fmt.Sprintf("default-%v", key0), &ecs.SecurityGroupArgs{
/// 				Name:  pulumi.Any(securityGroupName),
/// 				VpcId: pulumi.String(tmp1),
/// 			})
/// 			if err != nil {
/// 				return err
/// 			}
/// 			defaultSecurityGroup = append(defaultSecurityGroup, __res)
/// 		}
/// 		var tmp3 pulumi.String
/// 		if availabilityZone == "" {
/// 			tmp3 = pulumi.String(defaultGetInstanceTypes.Types[0].ZoneId)
/// 		} else {
/// 			tmp3 = pulumi.Any(availabilityZone)
/// 		}
/// 		var tmp4 pulumi.String
/// 		if vpcId == "" {
/// 			tmp4 = vpc[0].ID()
/// 		} else {
/// 			tmp4 = pulumi.Any(vpcId)
/// 		}
/// 		// VSwitch Resource for Module
/// 		var tmp5 float64
/// 		if vswitchId == "" {
/// 			tmp5 = 1
/// 		} else {
/// 			tmp5 = 0
/// 		}
/// 		var vswitch []*vpc.Switch
/// 		for index := 0; index < tmp5; index++ {
/// 			key0 := index
/// 			_ := index
/// 			__res, err := vpc.NewSwitch(ctx, fmt.Sprintf("vswitch-%v", key0), &vpc.SwitchArgs{
/// 				AvailabilityZone: pulumi.String(tmp3),
/// 				VswitchName:      pulumi.Any(vswitchName),
/// 				CidrBlock:        pulumi.Any(vswitchCidr),
/// 				VpcId:            pulumi.String(tmp4),
/// 			})
/// 			if err != nil {
/// 				return err
/// 			}
/// 			vswitch = append(vswitch, __res)
/// 		}
/// 		// Ram role Resource for Module
/// 		defaultRole, err := ram.NewRole(ctx, "default", &ram.RoleArgs{
/// 			Name: pulumi.Any(ramName),
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
/// 		var tmp6 pulumi.String
/// 		if dataDisk.Types[0].Min > 160 {
/// 			tmp6 = pulumi.Int(dataDisk.Types[0].Min)
/// 		} else {
/// 			tmp6 = pulumi.String("160")
/// 		}
/// 		var tmp7 pulumi.String
/// 		if systemDisk.Types[0].Min > 160 {
/// 			tmp7 = pulumi.Int(systemDisk.Types[0].Min)
/// 		} else {
/// 			tmp7 = pulumi.String("160")
/// 		}
/// 		var tmp8 pulumi.String
/// 		if dataDisk.Types[0].Min > 160 {
/// 			tmp8 = pulumi.Int(dataDisk.Types[0].Min)
/// 		} else {
/// 			tmp8 = pulumi.String("160")
/// 		}
/// 		var tmp9 pulumi.String
/// 		if systemDisk.Types[0].Min > 160 {
/// 			tmp9 = pulumi.Int(systemDisk.Types[0].Min)
/// 		} else {
/// 			tmp9 = pulumi.String("160")
/// 		}
/// 		var tmp10 pulumi.String
/// 		if dataDisk.Types[0].Min > 160 {
/// 			tmp10 = pulumi.Int(dataDisk.Types[0].Min)
/// 		} else {
/// 			tmp10 = pulumi.String("160")
/// 		}
/// 		var tmp11 pulumi.String
/// 		if systemDisk.Types[0].Min > 160 {
/// 			tmp11 = pulumi.Int(systemDisk.Types[0].Min)
/// 		} else {
/// 			tmp11 = pulumi.String("160")
/// 		}
/// 		var tmp12 pulumi.String
/// 		if securityGroupId == "" {
/// 			tmp12 = defaultSecurityGroup[0].ID()
/// 		} else {
/// 			tmp12 = pulumi.Any(securityGroupId)
/// 		}
/// 		var tmp13 pulumi.String
/// 		if vswitchId == "" {
/// 			tmp13 = vswitch[0].ID()
/// 		} else {
/// 			tmp13 = pulumi.Any(vswitchId)
/// 		}
/// 		_, err = emr.NewCluster(ctx, "default", &emr.ClusterArgs{
/// 			Name:        pulumi.String("terraform-create-cluster-test"),
/// 			EmrVer:      pulumi.String(_default.MainVersions[0].EmrVersion),
/// 			ClusterType: pulumi.String(_default.MainVersions[0].ClusterTypes[0]),
/// 			HostGroups: emr.ClusterHostGroupArray{
/// 				&emr.ClusterHostGroupArgs{
/// 					HostGroupName:   pulumi.String("master_group"),
/// 					HostGroupType:   pulumi.String("MASTER"),
/// 					NodeCount:       pulumi.String("2"),
/// 					InstanceType:    pulumi.String(defaultGetInstanceTypes.Types[0].Id),
/// 					DiskType:        pulumi.String(dataDisk.Types[0].Value),
/// 					DiskCapacity:    pulumi.String(tmp6),
/// 					DiskCount:       pulumi.String("1"),
/// 					SysDiskType:     pulumi.String(systemDisk.Types[0].Value),
/// 					SysDiskCapacity: pulumi.String(tmp7),
/// 				},
/// 				&emr.ClusterHostGroupArgs{
/// 					HostGroupName:   pulumi.String("core_group"),
/// 					HostGroupType:   pulumi.String("CORE"),
/// 					NodeCount:       pulumi.String("3"),
/// 					InstanceType:    pulumi.String(defaultGetInstanceTypes.Types[0].Id),
/// 					DiskType:        pulumi.String(dataDisk.Types[0].Value),
/// 					DiskCapacity:    pulumi.String(tmp8),
/// 					DiskCount:       pulumi.String("4"),
/// 					SysDiskType:     pulumi.String(systemDisk.Types[0].Value),
/// 					SysDiskCapacity: pulumi.String(tmp9),
/// 				},
/// 				&emr.ClusterHostGroupArgs{
/// 					HostGroupName:   pulumi.String("task_group"),
/// 					HostGroupType:   pulumi.String("TASK"),
/// 					NodeCount:       pulumi.String("2"),
/// 					InstanceType:    pulumi.String(defaultGetInstanceTypes.Types[0].Id),
/// 					DiskType:        pulumi.String(dataDisk.Types[0].Value),
/// 					DiskCapacity:    pulumi.String(tmp10),
/// 					DiskCount:       pulumi.String("4"),
/// 					SysDiskType:     pulumi.String(systemDisk.Types[0].Value),
/// 					SysDiskCapacity: pulumi.String(tmp11),
/// 				},
/// 			},
/// 			HighAvailabilityEnable: pulumi.Bool(true),
/// 			ZoneId:                 pulumi.String(defaultGetInstanceTypes.Types[0].ZoneId),
/// 			SecurityGroupId:        pulumi.String(tmp12),
/// 			IsOpenPublicIp:         pulumi.Bool(true),
/// 			ChargeType:             pulumi.String("PostPaid"),
/// 			VswitchId:              pulumi.String(tmp13),
/// 			UserDefinedEmrEcsRole:  defaultRole.Name,
/// 			SshEnable:              pulumi.Bool(true),
/// 			MasterPwd:              pulumi.String("ABCtest1234!"),
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
/// import com.pulumi.alicloud.emr.EmrFunctions;
/// import com.pulumi.alicloud.emr.inputs.GetMainVersionsArgs;
/// import com.pulumi.alicloud.emr.inputs.GetInstanceTypesArgs;
/// import com.pulumi.alicloud.emr.inputs.GetDiskTypesArgs;
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.ecs.SecurityGroup;
/// import com.pulumi.alicloud.ecs.SecurityGroupArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.ram.Role;
/// import com.pulumi.alicloud.ram.RoleArgs;
/// import com.pulumi.alicloud.emr.Cluster;
/// import com.pulumi.alicloud.emr.ClusterArgs;
/// import com.pulumi.alicloud.emr.inputs.ClusterHostGroupArgs;
/// import com.pulumi.codegen.internal.KeyedValue;
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
///             .build());
///
///         final var defaultGetInstanceTypes = EmrFunctions.getInstanceTypes(GetInstanceTypesArgs.builder()
///             .destinationResource("InstanceType")
///             .clusterType(default_.mainVersions()[0].clusterTypes()[0])
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
///             .clusterType(default_.mainVersions()[0].clusterTypes()[0])
///             .instanceChargeType("PostPaid")
///             .instanceType(defaultGetInstanceTypes.types()[0].id())
///             .zoneId(defaultGetInstanceTypes.types()[0].zoneId())
///             .build());
///
///         final var systemDisk = EmrFunctions.getDiskTypes(GetDiskTypesArgs.builder()
///             .destinationResource("SystemDisk")
///             .clusterType(default_.mainVersions()[0].clusterTypes()[0])
///             .instanceChargeType("PostPaid")
///             .instanceType(defaultGetInstanceTypes.types()[0].id())
///             .zoneId(defaultGetInstanceTypes.types()[0].zoneId())
///             .build());
///
///         for (var i = 0; i < (vpcId == "" ? 1 : 0); i++) {
///             new Network("vpc-" + i, NetworkArgs.builder()
///                 .name(vpcName)
///                 .cidrBlock(vpcCidr)
///                 .build());
///
///
/// }
///         for (var i = 0; i < (securityGroupId == "" ? 1 : 0); i++) {
///             new SecurityGroup("defaultSecurityGroup-" + i, SecurityGroupArgs.builder()
///                 .name(securityGroupName)
///                 .vpcId(vpcId == "" ? vpc[0].id() : vpcId)
///                 .build());
///
///
/// }
///         // VSwitch Resource for Module
///         for (var i = 0; i < (vswitchId == "" ? 1 : 0); i++) {
///             new Switch("vswitch-" + i, SwitchArgs.builder()
///                 .availabilityZone(availabilityZone == "" ? defaultGetInstanceTypes.types()[0].zoneId() : availabilityZone)
///                 .vswitchName(vswitchName)
///                 .cidrBlock(vswitchCidr)
///                 .vpcId(vpcId == "" ? vpc[0].id() : vpcId)
///                 .build());
///
///
/// }
///         // Ram role Resource for Module
///         var defaultRole = new Role("defaultRole", RoleArgs.builder()
///             .name(ramName)
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
///             .name("terraform-create-cluster-test")
///             .emrVer(default_.mainVersions()[0].emrVersion())
///             .clusterType(default_.mainVersions()[0].clusterTypes()[0])
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
///             .securityGroupId(securityGroupId == "" ? defaultSecurityGroup[0].id() : securityGroupId)
///             .isOpenPublicIp(true)
///             .chargeType("PostPaid")
///             .vswitchId(vswitchId == "" ? vswitch[0].id() : vswitchId)
///             .userDefinedEmrEcsRole(defaultRole.name())
///             .sshEnable(true)
///             .masterPwd("ABCtest1234!")
///             .build());
///
///     }
/// }
/// ```
///
///
/// ### 2. Scale Up
/// The hosts of EMR Cluster are orginized as host group. Scaling up/down is operating host group.
///
/// In the case of scaling up cluster, we should add the node_count of some host group.
///
/// &gt; **NOTE:** Scaling up is only applicable to CORE and TASK group. Cost time of scaling up will vary with the number of scaling-up nodes.
/// Scaling down is only applicable to TASK group. If you want to scale down CORE group, please submit tickets or contact EMR support team.
///
/// As the following case, we scale up the TASK group 2 nodes by increasing host_group.node_count by 2.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const _default = alicloud.emr.getMainVersions({});
/// const defaultGetInstanceTypes = _default.then(_default => alicloud.emr.getInstanceTypes({
///     destinationResource: "InstanceType",
///     clusterType: _default.mainVersions?.[0]?.clusterTypes?.[0],
///     supportLocalStorage: false,
///     instanceChargeType: "PostPaid",
///     supportNodeTypes: [
///         "MASTER",
///         "CORE",
///         "TASK",
///     ],
/// }));
/// const dataDisk = Promise.all([_default, defaultGetInstanceTypes, defaultGetInstanceTypes]).then(([_default, defaultGetInstanceTypes, defaultGetInstanceTypes1]) => alicloud.emr.getDiskTypes({
///     destinationResource: "DataDisk",
///     clusterType: _default.mainVersions?.[0]?.clusterTypes?.[0],
///     instanceChargeType: "PostPaid",
///     instanceType: defaultGetInstanceTypes.types?.[0]?.id,
///     zoneId: defaultGetInstanceTypes1.types?.[0]?.zoneId,
/// }));
/// const systemDisk = Promise.all([_default, defaultGetInstanceTypes, defaultGetInstanceTypes]).then(([_default, defaultGetInstanceTypes, defaultGetInstanceTypes1]) => alicloud.emr.getDiskTypes({
///     destinationResource: "SystemDisk",
///     clusterType: _default.mainVersions?.[0]?.clusterTypes?.[0],
///     instanceChargeType: "PostPaid",
///     instanceType: defaultGetInstanceTypes.types?.[0]?.id,
///     zoneId: defaultGetInstanceTypes1.types?.[0]?.zoneId,
/// }));
/// const vpc: alicloud.vpc.Network[] = [];
/// for (const range = {value: 0}; range.value < (vpcId == "" ? 1 : 0); range.value++) {
///     vpc.push(new alicloud.vpc.Network(`vpc-${range.value}`, {
///         name: vpcName,
///         cidrBlock: vpcCidr,
///     }));
/// }
/// const defaultSecurityGroup: alicloud.ecs.SecurityGroup[] = [];
/// for (const range = {value: 0}; range.value < (securityGroupId == "" ? 1 : 0); range.value++) {
///     defaultSecurityGroup.push(new alicloud.ecs.SecurityGroup(`default-${range.value}`, {
///         name: securityGroupName,
///         vpcId: vpcId == "" ? vpc[0].id : vpcId,
///     }));
/// }
/// // VSwitch Resource for Module
/// const vswitch: alicloud.vpc.Switch[] = [];
/// for (const range = {value: 0}; range.value < (vswitchId == "" ? 1 : 0); range.value++) {
///     vswitch.push(new alicloud.vpc.Switch(`vswitch-${range.value}`, {
///         availabilityZone: availabilityZone == "" ? defaultGetInstanceTypes.then(defaultGetInstanceTypes => defaultGetInstanceTypes.types?.[0]?.zoneId) : availabilityZone,
///         vswitchName: vswitchName,
///         cidrBlock: vswitchCidr,
///         vpcId: vpcId == "" ? vpc[0].id : vpcId,
///     }));
/// }
/// // Ram role Resource for Module
/// const defaultRole = new alicloud.ram.Role("default", {
///     name: ramName,
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
///     name: "terraform-resize-cluster-test",
///     emrVer: _default.then(_default => _default.mainVersions?.[0]?.emrVersion),
///     clusterType: _default.then(_default => _default.mainVersions?.[0]?.clusterTypes?.[0]),
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
///             nodeCount: "4",
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
///     securityGroupId: securityGroupId == "" ? defaultSecurityGroup[0].id : securityGroupId,
///     isOpenPublicIp: true,
///     chargeType: "PostPaid",
///     vswitchId: vswitchId == "" ? vswitch[0].id : vswitchId,
///     userDefinedEmrEcsRole: defaultRole.name,
///     sshEnable: true,
///     masterPwd: "ABCtest1234!",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.emr.get_main_versions()
/// default_get_instance_types = alicloud.emr.get_instance_types(destination_resource="InstanceType",
///     cluster_type=default.main_versions[0].cluster_types[0],
///     support_local_storage=False,
///     instance_charge_type="PostPaid",
///     support_node_types=[
///         "MASTER",
///         "CORE",
///         "TASK",
///     ])
/// data_disk = alicloud.emr.get_disk_types(destination_resource="DataDisk",
///     cluster_type=default.main_versions[0].cluster_types[0],
///     instance_charge_type="PostPaid",
///     instance_type=default_get_instance_types.types[0].id,
///     zone_id=default_get_instance_types.types[0].zone_id)
/// system_disk = alicloud.emr.get_disk_types(destination_resource="SystemDisk",
///     cluster_type=default.main_versions[0].cluster_types[0],
///     instance_charge_type="PostPaid",
///     instance_type=default_get_instance_types.types[0].id,
///     zone_id=default_get_instance_types.types[0].zone_id)
/// vpc = []
/// for range in [{"value": i} for i in range(0, 1 if vpc_id ==  else 0)]:
///     vpc.append(alicloud.vpc.Network(f"vpc-{range['value']}",
///         name=vpc_name,
///         cidr_block=vpc_cidr))
/// default_security_group = []
/// for range in [{"value": i} for i in range(0, 1 if security_group_id ==  else 0)]:
///     default_security_group.append(alicloud.ecs.SecurityGroup(f"default-{range['value']}",
///         name=security_group_name,
///         vpc_id=vpc[0].id if vpc_id == "" else vpc_id))
/// # VSwitch Resource for Module
/// vswitch = []
/// for range in [{"value": i} for i in range(0, 1 if vswitch_id ==  else 0)]:
///     vswitch.append(alicloud.vpc.Switch(f"vswitch-{range['value']}",
///         availability_zone=default_get_instance_types.types[0].zone_id if availability_zone == "" else availability_zone,
///         vswitch_name=vswitch_name,
///         cidr_block=vswitch_cidr,
///         vpc_id=vpc[0].id if vpc_id == "" else vpc_id))
/// # Ram role Resource for Module
/// default_role = alicloud.ram.Role("default",
///     name=ram_name,
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
///     name="terraform-resize-cluster-test",
///     emr_ver=default.main_versions[0].emr_version,
///     cluster_type=default.main_versions[0].cluster_types[0],
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
///             "node_count": "4",
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
///     security_group_id=default_security_group[0].id if security_group_id == "" else security_group_id,
///     is_open_public_ip=True,
///     charge_type="PostPaid",
///     vswitch_id=vswitch[0].id if vswitch_id == "" else vswitch_id,
///     user_defined_emr_ecs_role=default_role.name,
///     ssh_enable=True,
///     master_pwd="ABCtest1234!")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.Emr.GetMainVersions.Invoke();
///
///     var defaultGetInstanceTypes = AliCloud.Emr.GetInstanceTypes.Invoke(new()
///     {
///         DestinationResource = "InstanceType",
///         ClusterType = @default.Apply(getMainVersionsResult => getMainVersionsResult.MainVersions[0]?.ClusterTypes[0]),
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
///         ClusterType = @default.Apply(getMainVersionsResult => getMainVersionsResult.MainVersions[0]?.ClusterTypes[0]),
///         InstanceChargeType = "PostPaid",
///         InstanceType = defaultGetInstanceTypes.Apply(getInstanceTypesResult => getInstanceTypesResult.Types[0]?.Id),
///         ZoneId = defaultGetInstanceTypes.Apply(getInstanceTypesResult => getInstanceTypesResult.Types[0]?.ZoneId),
///     });
///
///     var systemDisk = AliCloud.Emr.GetDiskTypes.Invoke(new()
///     {
///         DestinationResource = "SystemDisk",
///         ClusterType = @default.Apply(getMainVersionsResult => getMainVersionsResult.MainVersions[0]?.ClusterTypes[0]),
///         InstanceChargeType = "PostPaid",
///         InstanceType = defaultGetInstanceTypes.Apply(getInstanceTypesResult => getInstanceTypesResult.Types[0]?.Id),
///         ZoneId = defaultGetInstanceTypes.Apply(getInstanceTypesResult => getInstanceTypesResult.Types[0]?.ZoneId),
///     });
///
///     var vpc = new List<AliCloud.Vpc.Network>();
///     for (var rangeIndex = 0; rangeIndex < (vpcId == "" ? 1 : 0); rangeIndex++)
///     {
///         var range = new { Value = rangeIndex };
///         vpc.Add(new AliCloud.Vpc.Network($"vpc-{range.Value}", new()
///         {
///             Name = vpcName,
///             CidrBlock = vpcCidr,
///         }));
///     }
///     var defaultSecurityGroup = new List<AliCloud.Ecs.SecurityGroup>();
///     for (var rangeIndex = 0; rangeIndex < (securityGroupId == "" ? 1 : 0); rangeIndex++)
///     {
///         var range = new { Value = rangeIndex };
///         defaultSecurityGroup.Add(new AliCloud.Ecs.SecurityGroup($"default-{range.Value}", new()
///         {
///             Name = securityGroupName,
///             VpcId = vpcId == "" ? vpc[0].Id : vpcId,
///         }));
///     }
///     // VSwitch Resource for Module
///     var vswitch = new List<AliCloud.Vpc.Switch>();
///     for (var rangeIndex = 0; rangeIndex < (vswitchId == "" ? 1 : 0); rangeIndex++)
///     {
///         var range = new { Value = rangeIndex };
///         vswitch.Add(new AliCloud.Vpc.Switch($"vswitch-{range.Value}", new()
///         {
///             AvailabilityZone = availabilityZone == "" ? defaultGetInstanceTypes.Apply(getInstanceTypesResult => getInstanceTypesResult.Types[0]?.ZoneId) : availabilityZone,
///             VswitchName = vswitchName,
///             CidrBlock = vswitchCidr,
///             VpcId = vpcId == "" ? vpc[0].Id : vpcId,
///         }));
///     }
///     // Ram role Resource for Module
///     var defaultRole = new AliCloud.Ram.Role("default", new()
///     {
///         Name = ramName,
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
///         Name = "terraform-resize-cluster-test",
///         EmrVer = @default.Apply(@default => @default.Apply(getMainVersionsResult => getMainVersionsResult.MainVersions[0]?.EmrVersion)),
///         ClusterType = @default.Apply(@default => @default.Apply(getMainVersionsResult => getMainVersionsResult.MainVersions[0]?.ClusterTypes[0])),
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
///                 NodeCount = "4",
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
///         SecurityGroupId = securityGroupId == "" ? defaultSecurityGroup[0].Id : securityGroupId,
///         IsOpenPublicIp = true,
///         ChargeType = "PostPaid",
///         VswitchId = vswitchId == "" ? vswitch[0].Id : vswitchId,
///         UserDefinedEmrEcsRole = defaultRole.Name,
///         SshEnable = true,
///         MasterPwd = "ABCtest1234!",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ecs"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/emr"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ram"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := emr.GetMainVersions(ctx, &emr.GetMainVersionsArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetInstanceTypes, err := emr.GetInstanceTypes(ctx, &emr.GetInstanceTypesArgs{
/// 			DestinationResource: "InstanceType",
/// 			ClusterType:         _default.MainVersions[0].ClusterTypes[0],
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
/// 			ClusterType:         _default.MainVersions[0].ClusterTypes[0],
/// 			InstanceChargeType:  "PostPaid",
/// 			InstanceType:        defaultGetInstanceTypes.Types[0].Id,
/// 			ZoneId:              pulumi.StringRef(defaultGetInstanceTypes.Types[0].ZoneId),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		systemDisk, err := emr.GetDiskTypes(ctx, &emr.GetDiskTypesArgs{
/// 			DestinationResource: "SystemDisk",
/// 			ClusterType:         _default.MainVersions[0].ClusterTypes[0],
/// 			InstanceChargeType:  "PostPaid",
/// 			InstanceType:        defaultGetInstanceTypes.Types[0].Id,
/// 			ZoneId:              pulumi.StringRef(defaultGetInstanceTypes.Types[0].ZoneId),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		var tmp0 float64
/// 		if vpcId == "" {
/// 			tmp0 = 1
/// 		} else {
/// 			tmp0 = 0
/// 		}
/// 		var vpc []*vpc.Network
/// 		for index := 0; index < tmp0; index++ {
/// 			key0 := index
/// 			_ := index
/// 			__res, err := vpc.NewNetwork(ctx, fmt.Sprintf("vpc-%v", key0), &vpc.NetworkArgs{
/// 				Name:      pulumi.Any(vpcName),
/// 				CidrBlock: pulumi.Any(vpcCidr),
/// 			})
/// 			if err != nil {
/// 				return err
/// 			}
/// 			vpc = append(vpc, __res)
/// 		}
/// 		var tmp1 pulumi.String
/// 		if vpcId == "" {
/// 			tmp1 = vpc[0].ID()
/// 		} else {
/// 			tmp1 = pulumi.Any(vpcId)
/// 		}
/// 		var tmp2 float64
/// 		if securityGroupId == "" {
/// 			tmp2 = 1
/// 		} else {
/// 			tmp2 = 0
/// 		}
/// 		var defaultSecurityGroup []*ecs.SecurityGroup
/// 		for index := 0; index < tmp2; index++ {
/// 			key0 := index
/// 			_ := index
/// 			__res, err := ecs.NewSecurityGroup(ctx, fmt.Sprintf("default-%v", key0), &ecs.SecurityGroupArgs{
/// 				Name:  pulumi.Any(securityGroupName),
/// 				VpcId: pulumi.String(tmp1),
/// 			})
/// 			if err != nil {
/// 				return err
/// 			}
/// 			defaultSecurityGroup = append(defaultSecurityGroup, __res)
/// 		}
/// 		var tmp3 pulumi.String
/// 		if availabilityZone == "" {
/// 			tmp3 = pulumi.String(defaultGetInstanceTypes.Types[0].ZoneId)
/// 		} else {
/// 			tmp3 = pulumi.Any(availabilityZone)
/// 		}
/// 		var tmp4 pulumi.String
/// 		if vpcId == "" {
/// 			tmp4 = vpc[0].ID()
/// 		} else {
/// 			tmp4 = pulumi.Any(vpcId)
/// 		}
/// 		// VSwitch Resource for Module
/// 		var tmp5 float64
/// 		if vswitchId == "" {
/// 			tmp5 = 1
/// 		} else {
/// 			tmp5 = 0
/// 		}
/// 		var vswitch []*vpc.Switch
/// 		for index := 0; index < tmp5; index++ {
/// 			key0 := index
/// 			_ := index
/// 			__res, err := vpc.NewSwitch(ctx, fmt.Sprintf("vswitch-%v", key0), &vpc.SwitchArgs{
/// 				AvailabilityZone: pulumi.String(tmp3),
/// 				VswitchName:      pulumi.Any(vswitchName),
/// 				CidrBlock:        pulumi.Any(vswitchCidr),
/// 				VpcId:            pulumi.String(tmp4),
/// 			})
/// 			if err != nil {
/// 				return err
/// 			}
/// 			vswitch = append(vswitch, __res)
/// 		}
/// 		// Ram role Resource for Module
/// 		defaultRole, err := ram.NewRole(ctx, "default", &ram.RoleArgs{
/// 			Name: pulumi.Any(ramName),
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
/// 		var tmp6 pulumi.String
/// 		if dataDisk.Types[0].Min > 160 {
/// 			tmp6 = pulumi.Int(dataDisk.Types[0].Min)
/// 		} else {
/// 			tmp6 = pulumi.String("160")
/// 		}
/// 		var tmp7 pulumi.String
/// 		if systemDisk.Types[0].Min > 160 {
/// 			tmp7 = pulumi.Int(systemDisk.Types[0].Min)
/// 		} else {
/// 			tmp7 = pulumi.String("160")
/// 		}
/// 		var tmp8 pulumi.String
/// 		if dataDisk.Types[0].Min > 160 {
/// 			tmp8 = pulumi.Int(dataDisk.Types[0].Min)
/// 		} else {
/// 			tmp8 = pulumi.String("160")
/// 		}
/// 		var tmp9 pulumi.String
/// 		if systemDisk.Types[0].Min > 160 {
/// 			tmp9 = pulumi.Int(systemDisk.Types[0].Min)
/// 		} else {
/// 			tmp9 = pulumi.String("160")
/// 		}
/// 		var tmp10 pulumi.String
/// 		if dataDisk.Types[0].Min > 160 {
/// 			tmp10 = pulumi.Int(dataDisk.Types[0].Min)
/// 		} else {
/// 			tmp10 = pulumi.String("160")
/// 		}
/// 		var tmp11 pulumi.String
/// 		if systemDisk.Types[0].Min > 160 {
/// 			tmp11 = pulumi.Int(systemDisk.Types[0].Min)
/// 		} else {
/// 			tmp11 = pulumi.String("160")
/// 		}
/// 		var tmp12 pulumi.String
/// 		if securityGroupId == "" {
/// 			tmp12 = defaultSecurityGroup[0].ID()
/// 		} else {
/// 			tmp12 = pulumi.Any(securityGroupId)
/// 		}
/// 		var tmp13 pulumi.String
/// 		if vswitchId == "" {
/// 			tmp13 = vswitch[0].ID()
/// 		} else {
/// 			tmp13 = pulumi.Any(vswitchId)
/// 		}
/// 		_, err = emr.NewCluster(ctx, "default", &emr.ClusterArgs{
/// 			Name:        pulumi.String("terraform-resize-cluster-test"),
/// 			EmrVer:      pulumi.String(_default.MainVersions[0].EmrVersion),
/// 			ClusterType: pulumi.String(_default.MainVersions[0].ClusterTypes[0]),
/// 			HostGroups: emr.ClusterHostGroupArray{
/// 				&emr.ClusterHostGroupArgs{
/// 					HostGroupName:   pulumi.String("master_group"),
/// 					HostGroupType:   pulumi.String("MASTER"),
/// 					NodeCount:       pulumi.String("2"),
/// 					InstanceType:    pulumi.String(defaultGetInstanceTypes.Types[0].Id),
/// 					DiskType:        pulumi.String(dataDisk.Types[0].Value),
/// 					DiskCapacity:    pulumi.String(tmp6),
/// 					DiskCount:       pulumi.String("1"),
/// 					SysDiskType:     pulumi.String(systemDisk.Types[0].Value),
/// 					SysDiskCapacity: pulumi.String(tmp7),
/// 				},
/// 				&emr.ClusterHostGroupArgs{
/// 					HostGroupName:   pulumi.String("core_group"),
/// 					HostGroupType:   pulumi.String("CORE"),
/// 					NodeCount:       pulumi.String("3"),
/// 					InstanceType:    pulumi.String(defaultGetInstanceTypes.Types[0].Id),
/// 					DiskType:        pulumi.String(dataDisk.Types[0].Value),
/// 					DiskCapacity:    pulumi.String(tmp8),
/// 					DiskCount:       pulumi.String("4"),
/// 					SysDiskType:     pulumi.String(systemDisk.Types[0].Value),
/// 					SysDiskCapacity: pulumi.String(tmp9),
/// 				},
/// 				&emr.ClusterHostGroupArgs{
/// 					HostGroupName:   pulumi.String("task_group"),
/// 					HostGroupType:   pulumi.String("TASK"),
/// 					NodeCount:       pulumi.String("4"),
/// 					InstanceType:    pulumi.String(defaultGetInstanceTypes.Types[0].Id),
/// 					DiskType:        pulumi.String(dataDisk.Types[0].Value),
/// 					DiskCapacity:    pulumi.String(tmp10),
/// 					DiskCount:       pulumi.String("4"),
/// 					SysDiskType:     pulumi.String(systemDisk.Types[0].Value),
/// 					SysDiskCapacity: pulumi.String(tmp11),
/// 				},
/// 			},
/// 			HighAvailabilityEnable: pulumi.Bool(true),
/// 			ZoneId:                 pulumi.String(defaultGetInstanceTypes.Types[0].ZoneId),
/// 			SecurityGroupId:        pulumi.String(tmp12),
/// 			IsOpenPublicIp:         pulumi.Bool(true),
/// 			ChargeType:             pulumi.String("PostPaid"),
/// 			VswitchId:              pulumi.String(tmp13),
/// 			UserDefinedEmrEcsRole:  defaultRole.Name,
/// 			SshEnable:              pulumi.Bool(true),
/// 			MasterPwd:              pulumi.String("ABCtest1234!"),
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
/// import com.pulumi.alicloud.emr.EmrFunctions;
/// import com.pulumi.alicloud.emr.inputs.GetMainVersionsArgs;
/// import com.pulumi.alicloud.emr.inputs.GetInstanceTypesArgs;
/// import com.pulumi.alicloud.emr.inputs.GetDiskTypesArgs;
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.ecs.SecurityGroup;
/// import com.pulumi.alicloud.ecs.SecurityGroupArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.ram.Role;
/// import com.pulumi.alicloud.ram.RoleArgs;
/// import com.pulumi.alicloud.emr.Cluster;
/// import com.pulumi.alicloud.emr.ClusterArgs;
/// import com.pulumi.alicloud.emr.inputs.ClusterHostGroupArgs;
/// import com.pulumi.codegen.internal.KeyedValue;
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
///             .build());
///
///         final var defaultGetInstanceTypes = EmrFunctions.getInstanceTypes(GetInstanceTypesArgs.builder()
///             .destinationResource("InstanceType")
///             .clusterType(default_.mainVersions()[0].clusterTypes()[0])
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
///             .clusterType(default_.mainVersions()[0].clusterTypes()[0])
///             .instanceChargeType("PostPaid")
///             .instanceType(defaultGetInstanceTypes.types()[0].id())
///             .zoneId(defaultGetInstanceTypes.types()[0].zoneId())
///             .build());
///
///         final var systemDisk = EmrFunctions.getDiskTypes(GetDiskTypesArgs.builder()
///             .destinationResource("SystemDisk")
///             .clusterType(default_.mainVersions()[0].clusterTypes()[0])
///             .instanceChargeType("PostPaid")
///             .instanceType(defaultGetInstanceTypes.types()[0].id())
///             .zoneId(defaultGetInstanceTypes.types()[0].zoneId())
///             .build());
///
///         for (var i = 0; i < (vpcId == "" ? 1 : 0); i++) {
///             new Network("vpc-" + i, NetworkArgs.builder()
///                 .name(vpcName)
///                 .cidrBlock(vpcCidr)
///                 .build());
///
///
/// }
///         for (var i = 0; i < (securityGroupId == "" ? 1 : 0); i++) {
///             new SecurityGroup("defaultSecurityGroup-" + i, SecurityGroupArgs.builder()
///                 .name(securityGroupName)
///                 .vpcId(vpcId == "" ? vpc[0].id() : vpcId)
///                 .build());
///
///
/// }
///         // VSwitch Resource for Module
///         for (var i = 0; i < (vswitchId == "" ? 1 : 0); i++) {
///             new Switch("vswitch-" + i, SwitchArgs.builder()
///                 .availabilityZone(availabilityZone == "" ? defaultGetInstanceTypes.types()[0].zoneId() : availabilityZone)
///                 .vswitchName(vswitchName)
///                 .cidrBlock(vswitchCidr)
///                 .vpcId(vpcId == "" ? vpc[0].id() : vpcId)
///                 .build());
///
///
/// }
///         // Ram role Resource for Module
///         var defaultRole = new Role("defaultRole", RoleArgs.builder()
///             .name(ramName)
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
///             .name("terraform-resize-cluster-test")
///             .emrVer(default_.mainVersions()[0].emrVersion())
///             .clusterType(default_.mainVersions()[0].clusterTypes()[0])
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
///                     .nodeCount("4")
///                     .instanceType(defaultGetInstanceTypes.types()[0].id())
///                     .diskType(dataDisk.types()[0].value())
///                     .diskCapacity(dataDisk.types()[0].min().applyValue(___convert -> ___convert > 160) ? dataDisk.types()[0].min() : "160")
///                     .diskCount("4")
///                     .sysDiskType(systemDisk.types()[0].value())
///                     .sysDiskCapacity(systemDisk.types()[0].min().applyValue(___convert -> ___convert > 160) ? systemDisk.types()[0].min() : "160")
///                     .build())
///             .highAvailabilityEnable(true)
///             .zoneId(defaultGetInstanceTypes.types()[0].zoneId())
///             .securityGroupId(securityGroupId == "" ? defaultSecurityGroup[0].id() : securityGroupId)
///             .isOpenPublicIp(true)
///             .chargeType("PostPaid")
///             .vswitchId(vswitchId == "" ? vswitch[0].id() : vswitchId)
///             .userDefinedEmrEcsRole(defaultRole.name())
///             .sshEnable(true)
///             .masterPwd("ABCtest1234!")
///             .build());
///
///     }
/// }
/// ```
///
///
/// ### 3. Scale Down
///
/// In the case of scaling down a cluster, we need to specified the host group and the instance list.
///
/// &gt; **NOTE:** Graceful decommission of hadoop cluster has been supported Available since v1.168.0.
///
/// The following is an example. We scale down the cluster by decreasing the node count by 2, and specifying the scale-down instance list.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const _default = alicloud.emr.getMainVersions({});
/// const defaultGetInstanceTypes = _default.then(_default => alicloud.emr.getInstanceTypes({
///     destinationResource: "InstanceType",
///     clusterType: _default.mainVersions?.[0]?.clusterTypes?.[0],
///     supportLocalStorage: false,
///     instanceChargeType: "PostPaid",
///     supportNodeTypes: [
///         "MASTER",
///         "CORE",
///         "TASK",
///     ],
/// }));
/// const dataDisk = Promise.all([_default, defaultGetInstanceTypes, defaultGetInstanceTypes]).then(([_default, defaultGetInstanceTypes, defaultGetInstanceTypes1]) => alicloud.emr.getDiskTypes({
///     destinationResource: "DataDisk",
///     clusterType: _default.mainVersions?.[0]?.clusterTypes?.[0],
///     instanceChargeType: "PostPaid",
///     instanceType: defaultGetInstanceTypes.types?.[0]?.id,
///     zoneId: defaultGetInstanceTypes1.types?.[0]?.zoneId,
/// }));
/// const systemDisk = Promise.all([_default, defaultGetInstanceTypes, defaultGetInstanceTypes]).then(([_default, defaultGetInstanceTypes, defaultGetInstanceTypes1]) => alicloud.emr.getDiskTypes({
///     destinationResource: "SystemDisk",
///     clusterType: _default.mainVersions?.[0]?.clusterTypes?.[0],
///     instanceChargeType: "PostPaid",
///     instanceType: defaultGetInstanceTypes.types?.[0]?.id,
///     zoneId: defaultGetInstanceTypes1.types?.[0]?.zoneId,
/// }));
/// const vpc: alicloud.vpc.Network[] = [];
/// for (const range = {value: 0}; range.value < (vpcId == "" ? 1 : 0); range.value++) {
///     vpc.push(new alicloud.vpc.Network(`vpc-${range.value}`, {
///         name: vpcName,
///         cidrBlock: vpcCidr,
///     }));
/// }
/// const defaultSecurityGroup: alicloud.ecs.SecurityGroup[] = [];
/// for (const range = {value: 0}; range.value < (securityGroupId == "" ? 1 : 0); range.value++) {
///     defaultSecurityGroup.push(new alicloud.ecs.SecurityGroup(`default-${range.value}`, {
///         name: securityGroupName,
///         vpcId: vpcId == "" ? vpc[0].id : vpcId,
///     }));
/// }
/// // VSwitch Resource for Module
/// const vswitch: alicloud.vpc.Switch[] = [];
/// for (const range = {value: 0}; range.value < (vswitchId == "" ? 1 : 0); range.value++) {
///     vswitch.push(new alicloud.vpc.Switch(`vswitch-${range.value}`, {
///         availabilityZone: availabilityZone == "" ? defaultGetInstanceTypes.then(defaultGetInstanceTypes => defaultGetInstanceTypes.types?.[0]?.zoneId) : availabilityZone,
///         vswitchName: vswitchName,
///         cidrBlock: vswitchCidr,
///         vpcId: vpcId == "" ? vpc[0].id : vpcId,
///     }));
/// }
/// // Ram role Resource for Module
/// const defaultRole = new alicloud.ram.Role("default", {
///     name: ramName,
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
///     name: "terraform-resize-cluster-test",
///     emrVer: _default.then(_default => _default.mainVersions?.[0]?.emrVersion),
///     clusterType: _default.then(_default => _default.mainVersions?.[0]?.clusterTypes?.[0]),
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
///     securityGroupId: securityGroupId == "" ? defaultSecurityGroup[0].id : securityGroupId,
///     isOpenPublicIp: true,
///     chargeType: "PostPaid",
///     vswitchId: vswitchId == "" ? vswitch[0].id : vswitchId,
///     userDefinedEmrEcsRole: defaultRole.name,
///     sshEnable: true,
///     masterPwd: "ABCtest1234!",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.emr.get_main_versions()
/// default_get_instance_types = alicloud.emr.get_instance_types(destination_resource="InstanceType",
///     cluster_type=default.main_versions[0].cluster_types[0],
///     support_local_storage=False,
///     instance_charge_type="PostPaid",
///     support_node_types=[
///         "MASTER",
///         "CORE",
///         "TASK",
///     ])
/// data_disk = alicloud.emr.get_disk_types(destination_resource="DataDisk",
///     cluster_type=default.main_versions[0].cluster_types[0],
///     instance_charge_type="PostPaid",
///     instance_type=default_get_instance_types.types[0].id,
///     zone_id=default_get_instance_types.types[0].zone_id)
/// system_disk = alicloud.emr.get_disk_types(destination_resource="SystemDisk",
///     cluster_type=default.main_versions[0].cluster_types[0],
///     instance_charge_type="PostPaid",
///     instance_type=default_get_instance_types.types[0].id,
///     zone_id=default_get_instance_types.types[0].zone_id)
/// vpc = []
/// for range in [{"value": i} for i in range(0, 1 if vpc_id ==  else 0)]:
///     vpc.append(alicloud.vpc.Network(f"vpc-{range['value']}",
///         name=vpc_name,
///         cidr_block=vpc_cidr))
/// default_security_group = []
/// for range in [{"value": i} for i in range(0, 1 if security_group_id ==  else 0)]:
///     default_security_group.append(alicloud.ecs.SecurityGroup(f"default-{range['value']}",
///         name=security_group_name,
///         vpc_id=vpc[0].id if vpc_id == "" else vpc_id))
/// # VSwitch Resource for Module
/// vswitch = []
/// for range in [{"value": i} for i in range(0, 1 if vswitch_id ==  else 0)]:
///     vswitch.append(alicloud.vpc.Switch(f"vswitch-{range['value']}",
///         availability_zone=default_get_instance_types.types[0].zone_id if availability_zone == "" else availability_zone,
///         vswitch_name=vswitch_name,
///         cidr_block=vswitch_cidr,
///         vpc_id=vpc[0].id if vpc_id == "" else vpc_id))
/// # Ram role Resource for Module
/// default_role = alicloud.ram.Role("default",
///     name=ram_name,
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
///     name="terraform-resize-cluster-test",
///     emr_ver=default.main_versions[0].emr_version,
///     cluster_type=default.main_versions[0].cluster_types[0],
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
///     security_group_id=default_security_group[0].id if security_group_id == "" else security_group_id,
///     is_open_public_ip=True,
///     charge_type="PostPaid",
///     vswitch_id=vswitch[0].id if vswitch_id == "" else vswitch_id,
///     user_defined_emr_ecs_role=default_role.name,
///     ssh_enable=True,
///     master_pwd="ABCtest1234!")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.Emr.GetMainVersions.Invoke();
///
///     var defaultGetInstanceTypes = AliCloud.Emr.GetInstanceTypes.Invoke(new()
///     {
///         DestinationResource = "InstanceType",
///         ClusterType = @default.Apply(getMainVersionsResult => getMainVersionsResult.MainVersions[0]?.ClusterTypes[0]),
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
///         ClusterType = @default.Apply(getMainVersionsResult => getMainVersionsResult.MainVersions[0]?.ClusterTypes[0]),
///         InstanceChargeType = "PostPaid",
///         InstanceType = defaultGetInstanceTypes.Apply(getInstanceTypesResult => getInstanceTypesResult.Types[0]?.Id),
///         ZoneId = defaultGetInstanceTypes.Apply(getInstanceTypesResult => getInstanceTypesResult.Types[0]?.ZoneId),
///     });
///
///     var systemDisk = AliCloud.Emr.GetDiskTypes.Invoke(new()
///     {
///         DestinationResource = "SystemDisk",
///         ClusterType = @default.Apply(getMainVersionsResult => getMainVersionsResult.MainVersions[0]?.ClusterTypes[0]),
///         InstanceChargeType = "PostPaid",
///         InstanceType = defaultGetInstanceTypes.Apply(getInstanceTypesResult => getInstanceTypesResult.Types[0]?.Id),
///         ZoneId = defaultGetInstanceTypes.Apply(getInstanceTypesResult => getInstanceTypesResult.Types[0]?.ZoneId),
///     });
///
///     var vpc = new List<AliCloud.Vpc.Network>();
///     for (var rangeIndex = 0; rangeIndex < (vpcId == "" ? 1 : 0); rangeIndex++)
///     {
///         var range = new { Value = rangeIndex };
///         vpc.Add(new AliCloud.Vpc.Network($"vpc-{range.Value}", new()
///         {
///             Name = vpcName,
///             CidrBlock = vpcCidr,
///         }));
///     }
///     var defaultSecurityGroup = new List<AliCloud.Ecs.SecurityGroup>();
///     for (var rangeIndex = 0; rangeIndex < (securityGroupId == "" ? 1 : 0); rangeIndex++)
///     {
///         var range = new { Value = rangeIndex };
///         defaultSecurityGroup.Add(new AliCloud.Ecs.SecurityGroup($"default-{range.Value}", new()
///         {
///             Name = securityGroupName,
///             VpcId = vpcId == "" ? vpc[0].Id : vpcId,
///         }));
///     }
///     // VSwitch Resource for Module
///     var vswitch = new List<AliCloud.Vpc.Switch>();
///     for (var rangeIndex = 0; rangeIndex < (vswitchId == "" ? 1 : 0); rangeIndex++)
///     {
///         var range = new { Value = rangeIndex };
///         vswitch.Add(new AliCloud.Vpc.Switch($"vswitch-{range.Value}", new()
///         {
///             AvailabilityZone = availabilityZone == "" ? defaultGetInstanceTypes.Apply(getInstanceTypesResult => getInstanceTypesResult.Types[0]?.ZoneId) : availabilityZone,
///             VswitchName = vswitchName,
///             CidrBlock = vswitchCidr,
///             VpcId = vpcId == "" ? vpc[0].Id : vpcId,
///         }));
///     }
///     // Ram role Resource for Module
///     var defaultRole = new AliCloud.Ram.Role("default", new()
///     {
///         Name = ramName,
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
///         Name = "terraform-resize-cluster-test",
///         EmrVer = @default.Apply(@default => @default.Apply(getMainVersionsResult => getMainVersionsResult.MainVersions[0]?.EmrVersion)),
///         ClusterType = @default.Apply(@default => @default.Apply(getMainVersionsResult => getMainVersionsResult.MainVersions[0]?.ClusterTypes[0])),
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
///         SecurityGroupId = securityGroupId == "" ? defaultSecurityGroup[0].Id : securityGroupId,
///         IsOpenPublicIp = true,
///         ChargeType = "PostPaid",
///         VswitchId = vswitchId == "" ? vswitch[0].Id : vswitchId,
///         UserDefinedEmrEcsRole = defaultRole.Name,
///         SshEnable = true,
///         MasterPwd = "ABCtest1234!",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ecs"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/emr"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ram"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := emr.GetMainVersions(ctx, &emr.GetMainVersionsArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetInstanceTypes, err := emr.GetInstanceTypes(ctx, &emr.GetInstanceTypesArgs{
/// 			DestinationResource: "InstanceType",
/// 			ClusterType:         _default.MainVersions[0].ClusterTypes[0],
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
/// 			ClusterType:         _default.MainVersions[0].ClusterTypes[0],
/// 			InstanceChargeType:  "PostPaid",
/// 			InstanceType:        defaultGetInstanceTypes.Types[0].Id,
/// 			ZoneId:              pulumi.StringRef(defaultGetInstanceTypes.Types[0].ZoneId),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		systemDisk, err := emr.GetDiskTypes(ctx, &emr.GetDiskTypesArgs{
/// 			DestinationResource: "SystemDisk",
/// 			ClusterType:         _default.MainVersions[0].ClusterTypes[0],
/// 			InstanceChargeType:  "PostPaid",
/// 			InstanceType:        defaultGetInstanceTypes.Types[0].Id,
/// 			ZoneId:              pulumi.StringRef(defaultGetInstanceTypes.Types[0].ZoneId),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		var tmp0 float64
/// 		if vpcId == "" {
/// 			tmp0 = 1
/// 		} else {
/// 			tmp0 = 0
/// 		}
/// 		var vpc []*vpc.Network
/// 		for index := 0; index < tmp0; index++ {
/// 			key0 := index
/// 			_ := index
/// 			__res, err := vpc.NewNetwork(ctx, fmt.Sprintf("vpc-%v", key0), &vpc.NetworkArgs{
/// 				Name:      pulumi.Any(vpcName),
/// 				CidrBlock: pulumi.Any(vpcCidr),
/// 			})
/// 			if err != nil {
/// 				return err
/// 			}
/// 			vpc = append(vpc, __res)
/// 		}
/// 		var tmp1 pulumi.String
/// 		if vpcId == "" {
/// 			tmp1 = vpc[0].ID()
/// 		} else {
/// 			tmp1 = pulumi.Any(vpcId)
/// 		}
/// 		var tmp2 float64
/// 		if securityGroupId == "" {
/// 			tmp2 = 1
/// 		} else {
/// 			tmp2 = 0
/// 		}
/// 		var defaultSecurityGroup []*ecs.SecurityGroup
/// 		for index := 0; index < tmp2; index++ {
/// 			key0 := index
/// 			_ := index
/// 			__res, err := ecs.NewSecurityGroup(ctx, fmt.Sprintf("default-%v", key0), &ecs.SecurityGroupArgs{
/// 				Name:  pulumi.Any(securityGroupName),
/// 				VpcId: pulumi.String(tmp1),
/// 			})
/// 			if err != nil {
/// 				return err
/// 			}
/// 			defaultSecurityGroup = append(defaultSecurityGroup, __res)
/// 		}
/// 		var tmp3 pulumi.String
/// 		if availabilityZone == "" {
/// 			tmp3 = pulumi.String(defaultGetInstanceTypes.Types[0].ZoneId)
/// 		} else {
/// 			tmp3 = pulumi.Any(availabilityZone)
/// 		}
/// 		var tmp4 pulumi.String
/// 		if vpcId == "" {
/// 			tmp4 = vpc[0].ID()
/// 		} else {
/// 			tmp4 = pulumi.Any(vpcId)
/// 		}
/// 		// VSwitch Resource for Module
/// 		var tmp5 float64
/// 		if vswitchId == "" {
/// 			tmp5 = 1
/// 		} else {
/// 			tmp5 = 0
/// 		}
/// 		var vswitch []*vpc.Switch
/// 		for index := 0; index < tmp5; index++ {
/// 			key0 := index
/// 			_ := index
/// 			__res, err := vpc.NewSwitch(ctx, fmt.Sprintf("vswitch-%v", key0), &vpc.SwitchArgs{
/// 				AvailabilityZone: pulumi.String(tmp3),
/// 				VswitchName:      pulumi.Any(vswitchName),
/// 				CidrBlock:        pulumi.Any(vswitchCidr),
/// 				VpcId:            pulumi.String(tmp4),
/// 			})
/// 			if err != nil {
/// 				return err
/// 			}
/// 			vswitch = append(vswitch, __res)
/// 		}
/// 		// Ram role Resource for Module
/// 		defaultRole, err := ram.NewRole(ctx, "default", &ram.RoleArgs{
/// 			Name: pulumi.Any(ramName),
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
/// 		var tmp6 pulumi.String
/// 		if dataDisk.Types[0].Min > 160 {
/// 			tmp6 = pulumi.Int(dataDisk.Types[0].Min)
/// 		} else {
/// 			tmp6 = pulumi.String("160")
/// 		}
/// 		var tmp7 pulumi.String
/// 		if systemDisk.Types[0].Min > 160 {
/// 			tmp7 = pulumi.Int(systemDisk.Types[0].Min)
/// 		} else {
/// 			tmp7 = pulumi.String("160")
/// 		}
/// 		var tmp8 pulumi.String
/// 		if dataDisk.Types[0].Min > 160 {
/// 			tmp8 = pulumi.Int(dataDisk.Types[0].Min)
/// 		} else {
/// 			tmp8 = pulumi.String("160")
/// 		}
/// 		var tmp9 pulumi.String
/// 		if systemDisk.Types[0].Min > 160 {
/// 			tmp9 = pulumi.Int(systemDisk.Types[0].Min)
/// 		} else {
/// 			tmp9 = pulumi.String("160")
/// 		}
/// 		var tmp10 pulumi.String
/// 		if dataDisk.Types[0].Min > 160 {
/// 			tmp10 = pulumi.Int(dataDisk.Types[0].Min)
/// 		} else {
/// 			tmp10 = pulumi.String("160")
/// 		}
/// 		var tmp11 pulumi.String
/// 		if systemDisk.Types[0].Min > 160 {
/// 			tmp11 = pulumi.Int(systemDisk.Types[0].Min)
/// 		} else {
/// 			tmp11 = pulumi.String("160")
/// 		}
/// 		var tmp12 pulumi.String
/// 		if securityGroupId == "" {
/// 			tmp12 = defaultSecurityGroup[0].ID()
/// 		} else {
/// 			tmp12 = pulumi.Any(securityGroupId)
/// 		}
/// 		var tmp13 pulumi.String
/// 		if vswitchId == "" {
/// 			tmp13 = vswitch[0].ID()
/// 		} else {
/// 			tmp13 = pulumi.Any(vswitchId)
/// 		}
/// 		_, err = emr.NewCluster(ctx, "default", &emr.ClusterArgs{
/// 			Name:        pulumi.String("terraform-resize-cluster-test"),
/// 			EmrVer:      pulumi.String(_default.MainVersions[0].EmrVersion),
/// 			ClusterType: pulumi.String(_default.MainVersions[0].ClusterTypes[0]),
/// 			HostGroups: emr.ClusterHostGroupArray{
/// 				&emr.ClusterHostGroupArgs{
/// 					HostGroupName:   pulumi.String("master_group"),
/// 					HostGroupType:   pulumi.String("MASTER"),
/// 					NodeCount:       pulumi.String("2"),
/// 					InstanceType:    pulumi.String(defaultGetInstanceTypes.Types[0].Id),
/// 					DiskType:        pulumi.String(dataDisk.Types[0].Value),
/// 					DiskCapacity:    pulumi.String(tmp6),
/// 					DiskCount:       pulumi.String("1"),
/// 					SysDiskType:     pulumi.String(systemDisk.Types[0].Value),
/// 					SysDiskCapacity: pulumi.String(tmp7),
/// 				},
/// 				&emr.ClusterHostGroupArgs{
/// 					HostGroupName:   pulumi.String("core_group"),
/// 					HostGroupType:   pulumi.String("CORE"),
/// 					NodeCount:       pulumi.String("3"),
/// 					InstanceType:    pulumi.String(defaultGetInstanceTypes.Types[0].Id),
/// 					DiskType:        pulumi.String(dataDisk.Types[0].Value),
/// 					DiskCapacity:    pulumi.String(tmp8),
/// 					DiskCount:       pulumi.String("4"),
/// 					SysDiskType:     pulumi.String(systemDisk.Types[0].Value),
/// 					SysDiskCapacity: pulumi.String(tmp9),
/// 				},
/// 				&emr.ClusterHostGroupArgs{
/// 					HostGroupName:   pulumi.String("task_group"),
/// 					HostGroupType:   pulumi.String("TASK"),
/// 					NodeCount:       pulumi.String("2"),
/// 					InstanceType:    pulumi.String(defaultGetInstanceTypes.Types[0].Id),
/// 					DiskType:        pulumi.String(dataDisk.Types[0].Value),
/// 					DiskCapacity:    pulumi.String(tmp10),
/// 					DiskCount:       pulumi.String("4"),
/// 					SysDiskType:     pulumi.String(systemDisk.Types[0].Value),
/// 					SysDiskCapacity: pulumi.String(tmp11),
/// 				},
/// 			},
/// 			HighAvailabilityEnable: pulumi.Bool(true),
/// 			ZoneId:                 pulumi.String(defaultGetInstanceTypes.Types[0].ZoneId),
/// 			SecurityGroupId:        pulumi.String(tmp12),
/// 			IsOpenPublicIp:         pulumi.Bool(true),
/// 			ChargeType:             pulumi.String("PostPaid"),
/// 			VswitchId:              pulumi.String(tmp13),
/// 			UserDefinedEmrEcsRole:  defaultRole.Name,
/// 			SshEnable:              pulumi.Bool(true),
/// 			MasterPwd:              pulumi.String("ABCtest1234!"),
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
/// import com.pulumi.alicloud.emr.EmrFunctions;
/// import com.pulumi.alicloud.emr.inputs.GetMainVersionsArgs;
/// import com.pulumi.alicloud.emr.inputs.GetInstanceTypesArgs;
/// import com.pulumi.alicloud.emr.inputs.GetDiskTypesArgs;
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.ecs.SecurityGroup;
/// import com.pulumi.alicloud.ecs.SecurityGroupArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.ram.Role;
/// import com.pulumi.alicloud.ram.RoleArgs;
/// import com.pulumi.alicloud.emr.Cluster;
/// import com.pulumi.alicloud.emr.ClusterArgs;
/// import com.pulumi.alicloud.emr.inputs.ClusterHostGroupArgs;
/// import com.pulumi.codegen.internal.KeyedValue;
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
///             .build());
///
///         final var defaultGetInstanceTypes = EmrFunctions.getInstanceTypes(GetInstanceTypesArgs.builder()
///             .destinationResource("InstanceType")
///             .clusterType(default_.mainVersions()[0].clusterTypes()[0])
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
///             .clusterType(default_.mainVersions()[0].clusterTypes()[0])
///             .instanceChargeType("PostPaid")
///             .instanceType(defaultGetInstanceTypes.types()[0].id())
///             .zoneId(defaultGetInstanceTypes.types()[0].zoneId())
///             .build());
///
///         final var systemDisk = EmrFunctions.getDiskTypes(GetDiskTypesArgs.builder()
///             .destinationResource("SystemDisk")
///             .clusterType(default_.mainVersions()[0].clusterTypes()[0])
///             .instanceChargeType("PostPaid")
///             .instanceType(defaultGetInstanceTypes.types()[0].id())
///             .zoneId(defaultGetInstanceTypes.types()[0].zoneId())
///             .build());
///
///         for (var i = 0; i < (vpcId == "" ? 1 : 0); i++) {
///             new Network("vpc-" + i, NetworkArgs.builder()
///                 .name(vpcName)
///                 .cidrBlock(vpcCidr)
///                 .build());
///
///
/// }
///         for (var i = 0; i < (securityGroupId == "" ? 1 : 0); i++) {
///             new SecurityGroup("defaultSecurityGroup-" + i, SecurityGroupArgs.builder()
///                 .name(securityGroupName)
///                 .vpcId(vpcId == "" ? vpc[0].id() : vpcId)
///                 .build());
///
///
/// }
///         // VSwitch Resource for Module
///         for (var i = 0; i < (vswitchId == "" ? 1 : 0); i++) {
///             new Switch("vswitch-" + i, SwitchArgs.builder()
///                 .availabilityZone(availabilityZone == "" ? defaultGetInstanceTypes.types()[0].zoneId() : availabilityZone)
///                 .vswitchName(vswitchName)
///                 .cidrBlock(vswitchCidr)
///                 .vpcId(vpcId == "" ? vpc[0].id() : vpcId)
///                 .build());
///
///
/// }
///         // Ram role Resource for Module
///         var defaultRole = new Role("defaultRole", RoleArgs.builder()
///             .name(ramName)
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
///             .name("terraform-resize-cluster-test")
///             .emrVer(default_.mainVersions()[0].emrVersion())
///             .clusterType(default_.mainVersions()[0].clusterTypes()[0])
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
///             .securityGroupId(securityGroupId == "" ? defaultSecurityGroup[0].id() : securityGroupId)
///             .isOpenPublicIp(true)
///             .chargeType("PostPaid")
///             .vswitchId(vswitchId == "" ? vswitch[0].id() : vswitchId)
///             .userDefinedEmrEcsRole(defaultRole.name())
///             .sshEnable(true)
///             .masterPwd("ABCtest1234!")
///             .build());
///
///     }
/// }
/// ```
///
///
/// ### 4. Create a emr gateway cluster
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const _default = alicloud.emr.getMainVersions({});
/// const defaultGetInstanceTypes = _default.then(_default => alicloud.emr.getInstanceTypes({
///     destinationResource: "InstanceType",
///     clusterType: _default.mainVersions?.[0]?.clusterTypes?.[0],
///     supportLocalStorage: false,
///     instanceChargeType: "PostPaid",
///     supportNodeTypes: ["GATEWAY"],
/// }));
/// const dataDisk = Promise.all([_default, defaultGetInstanceTypes, defaultGetInstanceTypes]).then(([_default, defaultGetInstanceTypes, defaultGetInstanceTypes1]) => alicloud.emr.getDiskTypes({
///     destinationResource: "DataDisk",
///     clusterType: _default.mainVersions?.[0]?.clusterTypes?.[0],
///     instanceChargeType: "PostPaid",
///     instanceType: defaultGetInstanceTypes.types?.[0]?.id,
///     zoneId: defaultGetInstanceTypes1.types?.[0]?.zoneId,
/// }));
/// const systemDisk = Promise.all([_default, defaultGetInstanceTypes, defaultGetInstanceTypes]).then(([_default, defaultGetInstanceTypes, defaultGetInstanceTypes1]) => alicloud.emr.getDiskTypes({
///     destinationResource: "SystemDisk",
///     clusterType: _default.mainVersions?.[0]?.clusterTypes?.[0],
///     instanceChargeType: "PostPaid",
///     instanceType: defaultGetInstanceTypes.types?.[0]?.id,
///     zoneId: defaultGetInstanceTypes1.types?.[0]?.zoneId,
/// }));
/// const vpc: alicloud.vpc.Network[] = [];
/// for (const range = {value: 0}; range.value < (vpcId == "" ? 1 : 0); range.value++) {
///     vpc.push(new alicloud.vpc.Network(`vpc-${range.value}`, {
///         name: vpcName,
///         cidrBlock: vpcCidr,
///     }));
/// }
/// const defaultSecurityGroup: alicloud.ecs.SecurityGroup[] = [];
/// for (const range = {value: 0}; range.value < (securityGroupId == "" ? 1 : 0); range.value++) {
///     defaultSecurityGroup.push(new alicloud.ecs.SecurityGroup(`default-${range.value}`, {
///         name: securityGroupName,
///         vpcId: vpcId == "" ? vpc[0].id : vpcId,
///     }));
/// }
/// // VSwitch Resource for Module
/// const vswitch: alicloud.vpc.Switch[] = [];
/// for (const range = {value: 0}; range.value < (vswitchId == "" ? 1 : 0); range.value++) {
///     vswitch.push(new alicloud.vpc.Switch(`vswitch-${range.value}`, {
///         availabilityZone: availabilityZone == "" ? defaultGetInstanceTypes.then(defaultGetInstanceTypes => defaultGetInstanceTypes.types?.[0]?.zoneId) : availabilityZone,
///         vswitchName: vswitchName,
///         cidrBlock: vswitchCidr,
///         vpcId: vpcId == "" ? vpc[0].id : vpcId,
///     }));
/// }
/// // Ram role Resource for Module
/// const defaultRole = new alicloud.ram.Role("default", {
///     name: ramName,
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
/// const gateway = new alicloud.emr.Cluster("gateway", {
///     name: "terraform-gateway-cluster-test",
///     emrVer: _default.then(_default => _default.mainVersions?.[0]?.emrVersion),
///     clusterType: "GATEWAY",
///     hostGroups: [{
///         hostGroupName: "master_group",
///         hostGroupType: "GATEWAY",
///         nodeCount: "1",
///         instanceType: defaultGetInstanceTypes.then(defaultGetInstanceTypes => defaultGetInstanceTypes.types?.[0]?.id),
///         diskType: dataDisk.then(dataDisk => dataDisk.types?.[0]?.value),
///         diskCapacity: Promise.all([dataDisk, dataDisk]).then(([dataDisk, dataDisk1]) => dataDisk.types?.[0]?.min > 160 ? dataDisk1.types?.[0]?.min : 160),
///         diskCount: "1",
///         sysDiskType: systemDisk.then(systemDisk => systemDisk.types?.[0]?.value),
///         sysDiskCapacity: Promise.all([systemDisk, systemDisk]).then(([systemDisk, systemDisk1]) => systemDisk.types?.[0]?.min > 160 ? systemDisk1.types?.[0]?.min : 160),
///     }],
///     highAvailabilityEnable: true,
///     zoneId: defaultGetInstanceTypes.then(defaultGetInstanceTypes => defaultGetInstanceTypes.types?.[0]?.zoneId),
///     securityGroupId: securityGroupId == "" ? defaultSecurityGroup[0].id : securityGroupId,
///     isOpenPublicIp: true,
///     chargeType: "PostPaid",
///     vswitchId: vswitchId == "" ? vswitch[0].id : vswitchId,
///     userDefinedEmrEcsRole: defaultRole.name,
///     sshEnable: true,
///     masterPwd: "ABCtest1234!",
///     relatedClusterId: relatedClusterId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.emr.get_main_versions()
/// default_get_instance_types = alicloud.emr.get_instance_types(destination_resource="InstanceType",
///     cluster_type=default.main_versions[0].cluster_types[0],
///     support_local_storage=False,
///     instance_charge_type="PostPaid",
///     support_node_types=["GATEWAY"])
/// data_disk = alicloud.emr.get_disk_types(destination_resource="DataDisk",
///     cluster_type=default.main_versions[0].cluster_types[0],
///     instance_charge_type="PostPaid",
///     instance_type=default_get_instance_types.types[0].id,
///     zone_id=default_get_instance_types.types[0].zone_id)
/// system_disk = alicloud.emr.get_disk_types(destination_resource="SystemDisk",
///     cluster_type=default.main_versions[0].cluster_types[0],
///     instance_charge_type="PostPaid",
///     instance_type=default_get_instance_types.types[0].id,
///     zone_id=default_get_instance_types.types[0].zone_id)
/// vpc = []
/// for range in [{"value": i} for i in range(0, 1 if vpc_id ==  else 0)]:
///     vpc.append(alicloud.vpc.Network(f"vpc-{range['value']}",
///         name=vpc_name,
///         cidr_block=vpc_cidr))
/// default_security_group = []
/// for range in [{"value": i} for i in range(0, 1 if security_group_id ==  else 0)]:
///     default_security_group.append(alicloud.ecs.SecurityGroup(f"default-{range['value']}",
///         name=security_group_name,
///         vpc_id=vpc[0].id if vpc_id == "" else vpc_id))
/// # VSwitch Resource for Module
/// vswitch = []
/// for range in [{"value": i} for i in range(0, 1 if vswitch_id ==  else 0)]:
///     vswitch.append(alicloud.vpc.Switch(f"vswitch-{range['value']}",
///         availability_zone=default_get_instance_types.types[0].zone_id if availability_zone == "" else availability_zone,
///         vswitch_name=vswitch_name,
///         cidr_block=vswitch_cidr,
///         vpc_id=vpc[0].id if vpc_id == "" else vpc_id))
/// # Ram role Resource for Module
/// default_role = alicloud.ram.Role("default",
///     name=ram_name,
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
/// gateway = alicloud.emr.Cluster("gateway",
///     name="terraform-gateway-cluster-test",
///     emr_ver=default.main_versions[0].emr_version,
///     cluster_type="GATEWAY",
///     host_groups=[{
///         "host_group_name": "master_group",
///         "host_group_type": "GATEWAY",
///         "node_count": "1",
///         "instance_type": default_get_instance_types.types[0].id,
///         "disk_type": data_disk.types[0].value,
///         "disk_capacity": data_disk.types[0].min if data_disk.types[0].min > 160 else "160",
///         "disk_count": "1",
///         "sys_disk_type": system_disk.types[0].value,
///         "sys_disk_capacity": system_disk.types[0].min if system_disk.types[0].min > 160 else "160",
///     }],
///     high_availability_enable=True,
///     zone_id=default_get_instance_types.types[0].zone_id,
///     security_group_id=default_security_group[0].id if security_group_id == "" else security_group_id,
///     is_open_public_ip=True,
///     charge_type="PostPaid",
///     vswitch_id=vswitch[0].id if vswitch_id == "" else vswitch_id,
///     user_defined_emr_ecs_role=default_role.name,
///     ssh_enable=True,
///     master_pwd="ABCtest1234!",
///     related_cluster_id=related_cluster_id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.Emr.GetMainVersions.Invoke();
///
///     var defaultGetInstanceTypes = AliCloud.Emr.GetInstanceTypes.Invoke(new()
///     {
///         DestinationResource = "InstanceType",
///         ClusterType = @default.Apply(getMainVersionsResult => getMainVersionsResult.MainVersions[0]?.ClusterTypes[0]),
///         SupportLocalStorage = false,
///         InstanceChargeType = "PostPaid",
///         SupportNodeTypes = new[]
///         {
///             "GATEWAY",
///         },
///     });
///
///     var dataDisk = AliCloud.Emr.GetDiskTypes.Invoke(new()
///     {
///         DestinationResource = "DataDisk",
///         ClusterType = @default.Apply(getMainVersionsResult => getMainVersionsResult.MainVersions[0]?.ClusterTypes[0]),
///         InstanceChargeType = "PostPaid",
///         InstanceType = defaultGetInstanceTypes.Apply(getInstanceTypesResult => getInstanceTypesResult.Types[0]?.Id),
///         ZoneId = defaultGetInstanceTypes.Apply(getInstanceTypesResult => getInstanceTypesResult.Types[0]?.ZoneId),
///     });
///
///     var systemDisk = AliCloud.Emr.GetDiskTypes.Invoke(new()
///     {
///         DestinationResource = "SystemDisk",
///         ClusterType = @default.Apply(getMainVersionsResult => getMainVersionsResult.MainVersions[0]?.ClusterTypes[0]),
///         InstanceChargeType = "PostPaid",
///         InstanceType = defaultGetInstanceTypes.Apply(getInstanceTypesResult => getInstanceTypesResult.Types[0]?.Id),
///         ZoneId = defaultGetInstanceTypes.Apply(getInstanceTypesResult => getInstanceTypesResult.Types[0]?.ZoneId),
///     });
///
///     var vpc = new List<AliCloud.Vpc.Network>();
///     for (var rangeIndex = 0; rangeIndex < (vpcId == "" ? 1 : 0); rangeIndex++)
///     {
///         var range = new { Value = rangeIndex };
///         vpc.Add(new AliCloud.Vpc.Network($"vpc-{range.Value}", new()
///         {
///             Name = vpcName,
///             CidrBlock = vpcCidr,
///         }));
///     }
///     var defaultSecurityGroup = new List<AliCloud.Ecs.SecurityGroup>();
///     for (var rangeIndex = 0; rangeIndex < (securityGroupId == "" ? 1 : 0); rangeIndex++)
///     {
///         var range = new { Value = rangeIndex };
///         defaultSecurityGroup.Add(new AliCloud.Ecs.SecurityGroup($"default-{range.Value}", new()
///         {
///             Name = securityGroupName,
///             VpcId = vpcId == "" ? vpc[0].Id : vpcId,
///         }));
///     }
///     // VSwitch Resource for Module
///     var vswitch = new List<AliCloud.Vpc.Switch>();
///     for (var rangeIndex = 0; rangeIndex < (vswitchId == "" ? 1 : 0); rangeIndex++)
///     {
///         var range = new { Value = rangeIndex };
///         vswitch.Add(new AliCloud.Vpc.Switch($"vswitch-{range.Value}", new()
///         {
///             AvailabilityZone = availabilityZone == "" ? defaultGetInstanceTypes.Apply(getInstanceTypesResult => getInstanceTypesResult.Types[0]?.ZoneId) : availabilityZone,
///             VswitchName = vswitchName,
///             CidrBlock = vswitchCidr,
///             VpcId = vpcId == "" ? vpc[0].Id : vpcId,
///         }));
///     }
///     // Ram role Resource for Module
///     var defaultRole = new AliCloud.Ram.Role("default", new()
///     {
///         Name = ramName,
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
///     var gateway = new AliCloud.Emr.Cluster("gateway", new()
///     {
///         Name = "terraform-gateway-cluster-test",
///         EmrVer = @default.Apply(@default => @default.Apply(getMainVersionsResult => getMainVersionsResult.MainVersions[0]?.EmrVersion)),
///         ClusterType = "GATEWAY",
///         HostGroups = new[]
///         {
///             new AliCloud.Emr.Inputs.ClusterHostGroupArgs
///             {
///                 HostGroupName = "master_group",
///                 HostGroupType = "GATEWAY",
///                 NodeCount = "1",
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
///         },
///         HighAvailabilityEnable = true,
///         ZoneId = defaultGetInstanceTypes.Apply(getInstanceTypesResult => getInstanceTypesResult.Types[0]?.ZoneId),
///         SecurityGroupId = securityGroupId == "" ? defaultSecurityGroup[0].Id : securityGroupId,
///         IsOpenPublicIp = true,
///         ChargeType = "PostPaid",
///         VswitchId = vswitchId == "" ? vswitch[0].Id : vswitchId,
///         UserDefinedEmrEcsRole = defaultRole.Name,
///         SshEnable = true,
///         MasterPwd = "ABCtest1234!",
///         RelatedClusterId = relatedClusterId,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ecs"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/emr"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ram"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := emr.GetMainVersions(ctx, &emr.GetMainVersionsArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetInstanceTypes, err := emr.GetInstanceTypes(ctx, &emr.GetInstanceTypesArgs{
/// 			DestinationResource: "InstanceType",
/// 			ClusterType:         _default.MainVersions[0].ClusterTypes[0],
/// 			SupportLocalStorage: pulumi.BoolRef(false),
/// 			InstanceChargeType:  "PostPaid",
/// 			SupportNodeTypes: []string{
/// 				"GATEWAY",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		dataDisk, err := emr.GetDiskTypes(ctx, &emr.GetDiskTypesArgs{
/// 			DestinationResource: "DataDisk",
/// 			ClusterType:         _default.MainVersions[0].ClusterTypes[0],
/// 			InstanceChargeType:  "PostPaid",
/// 			InstanceType:        defaultGetInstanceTypes.Types[0].Id,
/// 			ZoneId:              pulumi.StringRef(defaultGetInstanceTypes.Types[0].ZoneId),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		systemDisk, err := emr.GetDiskTypes(ctx, &emr.GetDiskTypesArgs{
/// 			DestinationResource: "SystemDisk",
/// 			ClusterType:         _default.MainVersions[0].ClusterTypes[0],
/// 			InstanceChargeType:  "PostPaid",
/// 			InstanceType:        defaultGetInstanceTypes.Types[0].Id,
/// 			ZoneId:              pulumi.StringRef(defaultGetInstanceTypes.Types[0].ZoneId),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		var tmp0 float64
/// 		if vpcId == "" {
/// 			tmp0 = 1
/// 		} else {
/// 			tmp0 = 0
/// 		}
/// 		var vpc []*vpc.Network
/// 		for index := 0; index < tmp0; index++ {
/// 			key0 := index
/// 			_ := index
/// 			__res, err := vpc.NewNetwork(ctx, fmt.Sprintf("vpc-%v", key0), &vpc.NetworkArgs{
/// 				Name:      pulumi.Any(vpcName),
/// 				CidrBlock: pulumi.Any(vpcCidr),
/// 			})
/// 			if err != nil {
/// 				return err
/// 			}
/// 			vpc = append(vpc, __res)
/// 		}
/// 		var tmp1 pulumi.String
/// 		if vpcId == "" {
/// 			tmp1 = vpc[0].ID()
/// 		} else {
/// 			tmp1 = pulumi.Any(vpcId)
/// 		}
/// 		var tmp2 float64
/// 		if securityGroupId == "" {
/// 			tmp2 = 1
/// 		} else {
/// 			tmp2 = 0
/// 		}
/// 		var defaultSecurityGroup []*ecs.SecurityGroup
/// 		for index := 0; index < tmp2; index++ {
/// 			key0 := index
/// 			_ := index
/// 			__res, err := ecs.NewSecurityGroup(ctx, fmt.Sprintf("default-%v", key0), &ecs.SecurityGroupArgs{
/// 				Name:  pulumi.Any(securityGroupName),
/// 				VpcId: pulumi.String(tmp1),
/// 			})
/// 			if err != nil {
/// 				return err
/// 			}
/// 			defaultSecurityGroup = append(defaultSecurityGroup, __res)
/// 		}
/// 		var tmp3 pulumi.String
/// 		if availabilityZone == "" {
/// 			tmp3 = pulumi.String(defaultGetInstanceTypes.Types[0].ZoneId)
/// 		} else {
/// 			tmp3 = pulumi.Any(availabilityZone)
/// 		}
/// 		var tmp4 pulumi.String
/// 		if vpcId == "" {
/// 			tmp4 = vpc[0].ID()
/// 		} else {
/// 			tmp4 = pulumi.Any(vpcId)
/// 		}
/// 		// VSwitch Resource for Module
/// 		var tmp5 float64
/// 		if vswitchId == "" {
/// 			tmp5 = 1
/// 		} else {
/// 			tmp5 = 0
/// 		}
/// 		var vswitch []*vpc.Switch
/// 		for index := 0; index < tmp5; index++ {
/// 			key0 := index
/// 			_ := index
/// 			__res, err := vpc.NewSwitch(ctx, fmt.Sprintf("vswitch-%v", key0), &vpc.SwitchArgs{
/// 				AvailabilityZone: pulumi.String(tmp3),
/// 				VswitchName:      pulumi.Any(vswitchName),
/// 				CidrBlock:        pulumi.Any(vswitchCidr),
/// 				VpcId:            pulumi.String(tmp4),
/// 			})
/// 			if err != nil {
/// 				return err
/// 			}
/// 			vswitch = append(vswitch, __res)
/// 		}
/// 		// Ram role Resource for Module
/// 		defaultRole, err := ram.NewRole(ctx, "default", &ram.RoleArgs{
/// 			Name: pulumi.Any(ramName),
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
/// 		var tmp6 pulumi.String
/// 		if dataDisk.Types[0].Min > 160 {
/// 			tmp6 = pulumi.Int(dataDisk.Types[0].Min)
/// 		} else {
/// 			tmp6 = pulumi.String("160")
/// 		}
/// 		var tmp7 pulumi.String
/// 		if systemDisk.Types[0].Min > 160 {
/// 			tmp7 = pulumi.Int(systemDisk.Types[0].Min)
/// 		} else {
/// 			tmp7 = pulumi.String("160")
/// 		}
/// 		var tmp8 pulumi.String
/// 		if securityGroupId == "" {
/// 			tmp8 = defaultSecurityGroup[0].ID()
/// 		} else {
/// 			tmp8 = pulumi.Any(securityGroupId)
/// 		}
/// 		var tmp9 pulumi.String
/// 		if vswitchId == "" {
/// 			tmp9 = vswitch[0].ID()
/// 		} else {
/// 			tmp9 = pulumi.Any(vswitchId)
/// 		}
/// 		_, err = emr.NewCluster(ctx, "gateway", &emr.ClusterArgs{
/// 			Name:        pulumi.String("terraform-gateway-cluster-test"),
/// 			EmrVer:      pulumi.String(_default.MainVersions[0].EmrVersion),
/// 			ClusterType: pulumi.String("GATEWAY"),
/// 			HostGroups: emr.ClusterHostGroupArray{
/// 				&emr.ClusterHostGroupArgs{
/// 					HostGroupName:   pulumi.String("master_group"),
/// 					HostGroupType:   pulumi.String("GATEWAY"),
/// 					NodeCount:       pulumi.String("1"),
/// 					InstanceType:    pulumi.String(defaultGetInstanceTypes.Types[0].Id),
/// 					DiskType:        pulumi.String(dataDisk.Types[0].Value),
/// 					DiskCapacity:    pulumi.String(tmp6),
/// 					DiskCount:       pulumi.String("1"),
/// 					SysDiskType:     pulumi.String(systemDisk.Types[0].Value),
/// 					SysDiskCapacity: pulumi.String(tmp7),
/// 				},
/// 			},
/// 			HighAvailabilityEnable: pulumi.Bool(true),
/// 			ZoneId:                 pulumi.String(defaultGetInstanceTypes.Types[0].ZoneId),
/// 			SecurityGroupId:        pulumi.String(tmp8),
/// 			IsOpenPublicIp:         pulumi.Bool(true),
/// 			ChargeType:             pulumi.String("PostPaid"),
/// 			VswitchId:              pulumi.String(tmp9),
/// 			UserDefinedEmrEcsRole:  defaultRole.Name,
/// 			SshEnable:              pulumi.Bool(true),
/// 			MasterPwd:              pulumi.String("ABCtest1234!"),
/// 			RelatedClusterId:       pulumi.Any(relatedClusterId),
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
/// import com.pulumi.alicloud.emr.EmrFunctions;
/// import com.pulumi.alicloud.emr.inputs.GetMainVersionsArgs;
/// import com.pulumi.alicloud.emr.inputs.GetInstanceTypesArgs;
/// import com.pulumi.alicloud.emr.inputs.GetDiskTypesArgs;
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.ecs.SecurityGroup;
/// import com.pulumi.alicloud.ecs.SecurityGroupArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.ram.Role;
/// import com.pulumi.alicloud.ram.RoleArgs;
/// import com.pulumi.alicloud.emr.Cluster;
/// import com.pulumi.alicloud.emr.ClusterArgs;
/// import com.pulumi.alicloud.emr.inputs.ClusterHostGroupArgs;
/// import com.pulumi.codegen.internal.KeyedValue;
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
///             .build());
///
///         final var defaultGetInstanceTypes = EmrFunctions.getInstanceTypes(GetInstanceTypesArgs.builder()
///             .destinationResource("InstanceType")
///             .clusterType(default_.mainVersions()[0].clusterTypes()[0])
///             .supportLocalStorage(false)
///             .instanceChargeType("PostPaid")
///             .supportNodeTypes("GATEWAY")
///             .build());
///
///         final var dataDisk = EmrFunctions.getDiskTypes(GetDiskTypesArgs.builder()
///             .destinationResource("DataDisk")
///             .clusterType(default_.mainVersions()[0].clusterTypes()[0])
///             .instanceChargeType("PostPaid")
///             .instanceType(defaultGetInstanceTypes.types()[0].id())
///             .zoneId(defaultGetInstanceTypes.types()[0].zoneId())
///             .build());
///
///         final var systemDisk = EmrFunctions.getDiskTypes(GetDiskTypesArgs.builder()
///             .destinationResource("SystemDisk")
///             .clusterType(default_.mainVersions()[0].clusterTypes()[0])
///             .instanceChargeType("PostPaid")
///             .instanceType(defaultGetInstanceTypes.types()[0].id())
///             .zoneId(defaultGetInstanceTypes.types()[0].zoneId())
///             .build());
///
///         for (var i = 0; i < (vpcId == "" ? 1 : 0); i++) {
///             new Network("vpc-" + i, NetworkArgs.builder()
///                 .name(vpcName)
///                 .cidrBlock(vpcCidr)
///                 .build());
///
///
/// }
///         for (var i = 0; i < (securityGroupId == "" ? 1 : 0); i++) {
///             new SecurityGroup("defaultSecurityGroup-" + i, SecurityGroupArgs.builder()
///                 .name(securityGroupName)
///                 .vpcId(vpcId == "" ? vpc[0].id() : vpcId)
///                 .build());
///
///
/// }
///         // VSwitch Resource for Module
///         for (var i = 0; i < (vswitchId == "" ? 1 : 0); i++) {
///             new Switch("vswitch-" + i, SwitchArgs.builder()
///                 .availabilityZone(availabilityZone == "" ? defaultGetInstanceTypes.types()[0].zoneId() : availabilityZone)
///                 .vswitchName(vswitchName)
///                 .cidrBlock(vswitchCidr)
///                 .vpcId(vpcId == "" ? vpc[0].id() : vpcId)
///                 .build());
///
///
/// }
///         // Ram role Resource for Module
///         var defaultRole = new Role("defaultRole", RoleArgs.builder()
///             .name(ramName)
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
///         var gateway = new Cluster("gateway", ClusterArgs.builder()
///             .name("terraform-gateway-cluster-test")
///             .emrVer(default_.mainVersions()[0].emrVersion())
///             .clusterType("GATEWAY")
///             .hostGroups(ClusterHostGroupArgs.builder()
///                 .hostGroupName("master_group")
///                 .hostGroupType("GATEWAY")
///                 .nodeCount("1")
///                 .instanceType(defaultGetInstanceTypes.types()[0].id())
///                 .diskType(dataDisk.types()[0].value())
///                 .diskCapacity(dataDisk.types()[0].min().applyValue(___convert -> ___convert > 160) ? dataDisk.types()[0].min() : "160")
///                 .diskCount("1")
///                 .sysDiskType(systemDisk.types()[0].value())
///                 .sysDiskCapacity(systemDisk.types()[0].min().applyValue(___convert -> ___convert > 160) ? systemDisk.types()[0].min() : "160")
///                 .build())
///             .highAvailabilityEnable(true)
///             .zoneId(defaultGetInstanceTypes.types()[0].zoneId())
///             .securityGroupId(securityGroupId == "" ? defaultSecurityGroup[0].id() : securityGroupId)
///             .isOpenPublicIp(true)
///             .chargeType("PostPaid")
///             .vswitchId(vswitchId == "" ? vswitch[0].id() : vswitchId)
///             .userDefinedEmrEcsRole(defaultRole.name())
///             .sshEnable(true)
///             .masterPwd("ABCtest1234!")
///             .relatedClusterId(relatedClusterId)
///             .build());
///
///     }
/// }
/// ```
///
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Aliclioud E-MapReduce cluster can be imported using the id e.g.
///
/// ```sh
/// $ pulumi import alicloud:emr/cluster:Cluster default C-B47FB8FE96C67XXXX
/// ```
class Cluster extends pulumi.CustomResource {
  /// Boot action parameters.
  late final pulumi.Output<List<Map<String, dynamic>>?> bootstrapActions;

  /// Charge Type for this cluster. Supported value: PostPaid or PrePaid. Default value: PostPaid.
  late final pulumi.Output<String?> chargeType;

  /// EMR Cluster Type, e.g. HADOOP, KAFKA, DRUID, GATEWAY etc. You can find all valid EMR cluster type in emr web console. Supported 'GATEWAY' available in 1.61.0+.
  late final pulumi.Output<String> clusterType;

  /// The custom configurations of emr-cluster service.
  late final pulumi.Output<List<Map<String, dynamic>>?> configs;

  /// Cluster deposit type, HALF_MANAGED or FULL_MANAGED.
  late final pulumi.Output<String?> depositType;

  /// High security cluster (true) or not. Default value is false.
  late final pulumi.Output<bool?> easEnable;

  /// EMR Version, e.g. EMR-3.22.0. You can find the all valid EMR Version in emr web console.
  late final pulumi.Output<String> emrVer;

  /// High Available for HDFS and YARN. If this is set true, MASTER group must have two nodes.
  late final pulumi.Output<bool?> highAvailabilityEnable;

  /// Groups of Host, You can specify MASTER as a group, CORE as a group (just like the above example).
  late final pulumi.Output<List<Map<String, dynamic>>?> hostGroups;

  /// Whether the MASTER node has a public IP address enabled. Default value is false.
  late final pulumi.Output<bool?> isOpenPublicIp;

  /// Ssh key pair.
  late final pulumi.Output<String?> keyPairName;

  /// Master ssh password.
  late final pulumi.Output<String?> masterPwd;

  /// The configuration of emr-cluster service component metadata storage. If meta store type is ’user_rds’, this should be specified.
  late final pulumi.Output<ClusterMetaStoreConf?> metaStoreConf;

  /// The type of emr-cluster service component metadata storage. ’dlf’ or ’local’ or ’user_rds’ .
  late final pulumi.Output<String> metaStoreType;

  /// The configurations of emr-cluster service modification after cluster created.
  late final pulumi.Output<ClusterModifyClusterServiceConfig?>
  modifyClusterServiceConfig;

  /// The name of emr cluster. The name length must be less than 64. Supported characters: chinese character, english character, number, "-", "_".
  late final pulumi.Output<String> name;

  /// Optional software list.
  late final pulumi.Output<List<String>?> optionSoftwareLists;

  /// If charge type is PrePaid, this should be specified, unit is month. Supported value: 1、2、3、4、5、6、7、8、9、12、24、36.
  late final pulumi.Output<int?> period;

  /// This specify the related cluster id, if this cluster is a Gateway.
  late final pulumi.Output<String?> relatedClusterId;

  /// The Id of resource group which the emr-cluster belongs.
  late final pulumi.Output<String?> resourceGroupId;

  /// Security Group ID for Cluster, you can also specify this key for each host group.
  late final pulumi.Output<String?> securityGroupId;

  /// If this is set true, we can ssh into cluster. Default value is false.
  late final pulumi.Output<bool?> sshEnable;

  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>> tags;

  /// Use local metadb. Default is false.
  late final pulumi.Output<bool?> useLocalMetadb;

  /// Alicloud EMR uses roles to perform actions on your behalf when provisioning cluster resources, running applications, dynamically scaling resources. EMR uses the following roles when interacting with other Alicloud services. Default value is AliyunEmrEcsDefaultRole.
  late final pulumi.Output<String?> userDefinedEmrEcsRole;

  /// Global vswitch id, you can also specify it in host group.
  late final pulumi.Output<String?> vswitchId;

  /// Zone ID, e.g. cn-huhehaote-a
  late final pulumi.Output<String> zoneId;

  /// Creates a new [Cluster].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Cluster]. {@macro pulumi_emr_cluster_cluster_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Cluster(
    String name, {
    ClusterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:emr/cluster:Cluster',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    bootstrapActions = registerOutput<List<Map<String, dynamic>>?>(
      'bootstrapActions',
    );
    chargeType = registerOutput<String?>('chargeType');
    clusterType = registerOutput<String>('clusterType');
    configs = registerOutput<List<Map<String, dynamic>>?>('configs');
    depositType = registerOutput<String?>('depositType');
    easEnable = registerOutput<bool?>('easEnable');
    emrVer = registerOutput<String>('emrVer');
    highAvailabilityEnable = registerOutput<bool?>('highAvailabilityEnable');
    hostGroups = registerOutput<List<Map<String, dynamic>>?>('hostGroups');
    isOpenPublicIp = registerOutput<bool?>('isOpenPublicIp');
    keyPairName = registerOutput<String?>('keyPairName');
    masterPwd = registerOutput<String?>('masterPwd');
    metaStoreConf = registerOutput<ClusterMetaStoreConf?>('metaStoreConf');
    metaStoreType = registerOutput<String>('metaStoreType');
    modifyClusterServiceConfig =
        registerOutput<ClusterModifyClusterServiceConfig?>(
          'modifyClusterServiceConfig',
        );
    this.name = registerOutput<String>('name');
    optionSoftwareLists = registerOutput<List<String>?>('optionSoftwareLists');
    period = registerOutput<int?>('period');
    relatedClusterId = registerOutput<String?>('relatedClusterId');
    resourceGroupId = registerOutput<String?>('resourceGroupId');
    securityGroupId = registerOutput<String?>('securityGroupId');
    sshEnable = registerOutput<bool?>('sshEnable');
    tags = registerOutput<Map<String, String>>('tags');
    useLocalMetadb = registerOutput<bool?>('useLocalMetadb');
    userDefinedEmrEcsRole = registerOutput<String?>('userDefinedEmrEcsRole');
    vswitchId = registerOutput<String?>('vswitchId');
    zoneId = registerOutput<String>('zoneId');
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
         'alicloud:emr/cluster:Cluster',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    bootstrapActions = registerOutput<List<Map<String, dynamic>>?>(
      'bootstrapActions',
    );
    chargeType = registerOutput<String?>('chargeType');
    clusterType = registerOutput<String>('clusterType');
    configs = registerOutput<List<Map<String, dynamic>>?>('configs');
    depositType = registerOutput<String?>('depositType');
    easEnable = registerOutput<bool?>('easEnable');
    emrVer = registerOutput<String>('emrVer');
    highAvailabilityEnable = registerOutput<bool?>('highAvailabilityEnable');
    hostGroups = registerOutput<List<Map<String, dynamic>>?>('hostGroups');
    isOpenPublicIp = registerOutput<bool?>('isOpenPublicIp');
    keyPairName = registerOutput<String?>('keyPairName');
    masterPwd = registerOutput<String?>('masterPwd');
    metaStoreConf = registerOutput<ClusterMetaStoreConf?>('metaStoreConf');
    metaStoreType = registerOutput<String>('metaStoreType');
    modifyClusterServiceConfig =
        registerOutput<ClusterModifyClusterServiceConfig?>(
          'modifyClusterServiceConfig',
        );
    this.name = registerOutput<String>('name');
    optionSoftwareLists = registerOutput<List<String>?>('optionSoftwareLists');
    period = registerOutput<int?>('period');
    relatedClusterId = registerOutput<String?>('relatedClusterId');
    resourceGroupId = registerOutput<String?>('resourceGroupId');
    securityGroupId = registerOutput<String?>('securityGroupId');
    sshEnable = registerOutput<bool?>('sshEnable');
    tags = registerOutput<Map<String, String>>('tags');
    useLocalMetadb = registerOutput<bool?>('useLocalMetadb');
    userDefinedEmrEcsRole = registerOutput<String?>('userDefinedEmrEcsRole');
    vswitchId = registerOutput<String?>('vswitchId');
    zoneId = registerOutput<String>('zoneId');
  }
}
