import 'package:pulumi/pulumi.dart' as pulumi;
import 'migration_job_args.dart';

/// Provides a DTS Migration Job resource.
///
/// For information about DTS Migration Job and how to use it, see [What is Migration Job](https://www.alibabacloud.com/help/en/doc-detail/208399.html).
///
/// > **NOTE:** Available since v1.157.0.
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
/// import * as std from "@pulumi/std";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform-example";
/// const example = alicloud.getRegions({
///     current: true,
/// });
/// const exampleGetZones = alicloud.rds.getZones({
///     engine: "MySQL",
///     engineVersion: "8.0",
///     instanceChargeType: "PostPaid",
///     category: "Basic",
///     dbInstanceStorageType: "cloud_essd",
/// });
/// const exampleGetInstanceClasses = exampleGetZones.then(exampleGetZones => alicloud.rds.getInstanceClasses({
///     zoneId: exampleGetZones.zones?.[0]?.id,
///     engine: "MySQL",
///     engineVersion: "8.0",
///     instanceChargeType: "PostPaid",
///     category: "Basic",
///     dbInstanceStorageType: "cloud_essd",
/// }));
/// const exampleNetwork = new alicloud.vpc.Network("example", {
///     vpcName: name,
///     cidrBlock: "172.16.0.0/16",
/// });
/// const exampleSwitch = new alicloud.vpc.Switch("example", {
///     vpcId: exampleNetwork.id,
///     cidrBlock: "172.16.0.0/24",
///     zoneId: exampleGetZones.then(exampleGetZones => exampleGetZones.zones?.[0]?.id),
///     vswitchName: name,
/// });
/// const exampleSecurityGroup = new alicloud.ecs.SecurityGroup("example", {
///     name: name,
///     vpcId: exampleNetwork.id,
/// });
/// const exampleInstance: alicloud.rds.Instance[] = [];
/// for (const range = {value: 0}; range.value < 2; range.value++) {
///     exampleInstance.push(new alicloud.rds.Instance(`example-${range.value}`, {
///         engine: "MySQL",
///         engineVersion: "8.0",
///         instanceType: exampleGetInstanceClasses.then(exampleGetInstanceClasses => exampleGetInstanceClasses.instanceClasses?.[0]?.instanceClass),
///         instanceStorage: exampleGetInstanceClasses.then(exampleGetInstanceClasses => exampleGetInstanceClasses.instanceClasses?.[0]?.storageRange?.min),
///         instanceChargeType: "Postpaid",
///         instanceName: std.format({
///             input: `${name}_%d`,
///             args: [range.value + 1],
///         }).then(invoke => invoke.result),
///         vswitchId: exampleSwitch.id,
///         monitoringPeriod: 60,
///         dbInstanceStorageType: "cloud_essd",
///         securityGroupIds: [exampleSecurityGroup.id],
///     }));
/// }
/// const exampleRdsAccount: alicloud.rds.RdsAccount[] = [];
/// for (const range = {value: 0}; range.value < 2; range.value++) {
///     exampleRdsAccount.push(new alicloud.rds.RdsAccount(`example-${range.value}`, {
///         dbInstanceId: exampleInstance[range.value].id,
///         accountName: std.format({
///             input: "example_name_%d",
///             args: [range.value + 1],
///         }).then(invoke => invoke.result),
///         accountPassword: std.format({
///             input: "example_password_%d",
///             args: [range.value + 1],
///         }).then(invoke => invoke.result),
///     }));
/// }
/// const exampleDatabase: alicloud.rds.Database[] = [];
/// for (const range = {value: 0}; range.value < 2; range.value++) {
///     exampleDatabase.push(new alicloud.rds.Database(`example-${range.value}`, {
///         instanceId: exampleInstance[range.value].id,
///         name: std.format({
///             input: `${name}_%d`,
///             args: [range.value + 1],
///         }).then(invoke => invoke.result),
///     }));
/// }
/// const exampleAccountPrivilege: alicloud.rds.AccountPrivilege[] = [];
/// for (const range = {value: 0}; range.value < 2; range.value++) {
///     exampleAccountPrivilege.push(new alicloud.rds.AccountPrivilege(`example-${range.value}`, {
///         instanceId: exampleInstance[range.value].id,
///         accountName: exampleRdsAccount[range.value].name,
///         privilege: "ReadWrite",
///         dbNames: [exampleDatabase[range.value].name],
///     }));
/// }
/// const exampleMigrationInstance = new alicloud.dts.MigrationInstance("example", {
///     paymentType: "PayAsYouGo",
///     sourceEndpointEngineName: "MySQL",
///     sourceEndpointRegion: example.then(example => example.regions?.[0]?.id),
///     destinationEndpointEngineName: "MySQL",
///     destinationEndpointRegion: example.then(example => example.regions?.[0]?.id),
///     instanceClass: "small",
///     syncArchitecture: "oneway",
/// });
/// const exampleMigrationJob = new alicloud.dts.MigrationJob("example", {
///     dtsInstanceId: exampleMigrationInstance.id,
///     dtsJobName: name,
///     sourceEndpointInstanceType: "RDS",
///     sourceEndpointInstanceId: exampleAccountPrivilege[0].instanceId,
///     sourceEndpointEngineName: "MySQL",
///     sourceEndpointRegion: example.then(example => example.regions?.[0]?.id),
///     sourceEndpointUserName: exampleRdsAccount[0].accountName,
///     sourceEndpointPassword: exampleRdsAccount[0].accountPassword,
///     destinationEndpointInstanceType: "RDS",
///     destinationEndpointInstanceId: exampleAccountPrivilege[1].instanceId,
///     destinationEndpointEngineName: "MySQL",
///     destinationEndpointRegion: example.then(example => example.regions?.[0]?.id),
///     destinationEndpointUserName: exampleRdsAccount[1].accountName,
///     destinationEndpointPassword: exampleRdsAccount[1].accountPassword,
///     dbList: pulumi.jsonStringify(pulumi.all([exampleDatabase[0].name, exampleDatabase[1].name]).apply(([exampleDatabaseName, exampleDatabaseName1]) => {
///         [exampleDatabaseName]: {
///             name: exampleDatabaseName1,
///             all: true,
///         },
///     })),
///     structureInitialization: true,
///     dataInitialization: true,
///     dataSynchronization: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_alicloud as alicloud
/// import pulumi_std as std
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// example = alicloud.get_regions(current=True)
/// example_get_zones = alicloud.rds.get_zones(engine="MySQL",
///     engine_version="8.0",
///     instance_charge_type="PostPaid",
///     category="Basic",
///     db_instance_storage_type="cloud_essd")
/// example_get_instance_classes = alicloud.rds.get_instance_classes(zone_id=example_get_zones.zones[0].id,
///     engine="MySQL",
///     engine_version="8.0",
///     instance_charge_type="PostPaid",
///     category="Basic",
///     db_instance_storage_type="cloud_essd")
/// example_network = alicloud.vpc.Network("example",
///     vpc_name=name,
///     cidr_block="172.16.0.0/16")
/// example_switch = alicloud.vpc.Switch("example",
///     vpc_id=example_network.id,
///     cidr_block="172.16.0.0/24",
///     zone_id=example_get_zones.zones[0].id,
///     vswitch_name=name)
/// example_security_group = alicloud.ecs.SecurityGroup("example",
///     name=name,
///     vpc_id=example_network.id)
/// example_instance = []
/// for range in [{"value": i} for i in range(0, 2)]:
///     example_instance.append(alicloud.rds.Instance(f"example-{range['value']}",
///         engine="MySQL",
///         engine_version="8.0",
///         instance_type=example_get_instance_classes.instance_classes[0].instance_class,
///         instance_storage=example_get_instance_classes.instance_classes[0].storage_range.min,
///         instance_charge_type="Postpaid",
///         instance_name=std.format(input=f"{name}_%d",
///             args=[range["value"] + 1]).result,
///         vswitch_id=example_switch.id,
///         monitoring_period=60,
///         db_instance_storage_type="cloud_essd",
///         security_group_ids=[example_security_group.id]))
/// example_rds_account = []
/// for range in [{"value": i} for i in range(0, 2)]:
///     example_rds_account.append(alicloud.rds.RdsAccount(f"example-{range['value']}",
///         db_instance_id=example_instance[range["value"]].id,
///         account_name=std.format(input="example_name_%d",
///             args=[range["value"] + 1]).result,
///         account_password=std.format(input="example_password_%d",
///             args=[range["value"] + 1]).result))
/// example_database = []
/// for range in [{"value": i} for i in range(0, 2)]:
///     example_database.append(alicloud.rds.Database(f"example-{range['value']}",
///         instance_id=example_instance[range["value"]].id,
///         name=std.format(input=f"{name}_%d",
///             args=[range["value"] + 1]).result))
/// example_account_privilege = []
/// for range in [{"value": i} for i in range(0, 2)]:
///     example_account_privilege.append(alicloud.rds.AccountPrivilege(f"example-{range['value']}",
///         instance_id=example_instance[range["value"]].id,
///         account_name=example_rds_account[range["value"]].name,
///         privilege="ReadWrite",
///         db_names=[example_database[range["value"]].name]))
/// example_migration_instance = alicloud.dts.MigrationInstance("example",
///     payment_type="PayAsYouGo",
///     source_endpoint_engine_name="MySQL",
///     source_endpoint_region=example.regions[0].id,
///     destination_endpoint_engine_name="MySQL",
///     destination_endpoint_region=example.regions[0].id,
///     instance_class="small",
///     sync_architecture="oneway")
/// example_migration_job = alicloud.dts.MigrationJob("example",
///     dts_instance_id=example_migration_instance.id,
///     dts_job_name=name,
///     source_endpoint_instance_type="RDS",
///     source_endpoint_instance_id=example_account_privilege[0].instance_id,
///     source_endpoint_engine_name="MySQL",
///     source_endpoint_region=example.regions[0].id,
///     source_endpoint_user_name=example_rds_account[0].account_name,
///     source_endpoint_password=example_rds_account[0].account_password,
///     destination_endpoint_instance_type="RDS",
///     destination_endpoint_instance_id=example_account_privilege[1].instance_id,
///     destination_endpoint_engine_name="MySQL",
///     destination_endpoint_region=example.regions[0].id,
///     destination_endpoint_user_name=example_rds_account[1].account_name,
///     destination_endpoint_password=example_rds_account[1].account_password,
///     db_list=pulumi.Output.json_dumps(pulumi.Output.all(
///         exampleDatabaseName=example_database[0].name,
///         exampleDatabaseName1=example_database[1].name
/// ).apply(lambda resolved_outputs: {
///         resolved_outputs['exampleDatabaseName']: {
///             "name": resolved_outputs['exampleDatabaseName1'],
///             "all": True,
///         },
///     })
/// ),
///     structure_initialization=True,
///     data_initialization=True,
///     data_synchronization=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "terraform-example";
///     var example = AliCloud.GetRegions.Invoke(new()
///     {
///         Current = true,
///     });
///
///     var exampleGetZones = AliCloud.Rds.GetZones.Invoke(new()
///     {
///         Engine = "MySQL",
///         EngineVersion = "8.0",
///         InstanceChargeType = "PostPaid",
///         Category = "Basic",
///         DbInstanceStorageType = "cloud_essd",
///     });
///
///     var exampleGetInstanceClasses = AliCloud.Rds.GetInstanceClasses.Invoke(new()
///     {
///         ZoneId = exampleGetZones.Apply(getZonesResult => getZonesResult.Zones[0]?.Id),
///         Engine = "MySQL",
///         EngineVersion = "8.0",
///         InstanceChargeType = "PostPaid",
///         Category = "Basic",
///         DbInstanceStorageType = "cloud_essd",
///     });
///
///     var exampleNetwork = new AliCloud.Vpc.Network("example", new()
///     {
///         VpcName = name,
///         CidrBlock = "172.16.0.0/16",
///     });
///
///     var exampleSwitch = new AliCloud.Vpc.Switch("example", new()
///     {
///         VpcId = exampleNetwork.Id,
///         CidrBlock = "172.16.0.0/24",
///         ZoneId = exampleGetZones.Apply(getZonesResult => getZonesResult.Zones[0]?.Id),
///         VswitchName = name,
///     });
///
///     var exampleSecurityGroup = new AliCloud.Ecs.SecurityGroup("example", new()
///     {
///         Name = name,
///         VpcId = exampleNetwork.Id,
///     });
///
///     var exampleInstance = new List<AliCloud.Rds.Instance>();
///     for (var rangeIndex = 0; rangeIndex < 2; rangeIndex++)
///     {
///         var range = new { Value = rangeIndex };
///         exampleInstance.Add(new AliCloud.Rds.Instance($"example-{range.Value}", new()
///         {
///             Engine = "MySQL",
///             EngineVersion = "8.0",
///             InstanceType = exampleGetInstanceClasses.Apply(getInstanceClassesResult => getInstanceClassesResult.InstanceClasses[0]?.InstanceClass),
///             InstanceStorage = exampleGetInstanceClasses.Apply(getInstanceClassesResult => getInstanceClassesResult.InstanceClasses[0]?.StorageRange?.Min),
///             InstanceChargeType = "Postpaid",
///             InstanceName = Std.Format.Invoke(new()
///             {
///                 Input = $"{name}_%d",
///                 Args = new[]
///                 {
///                     range.Value + 1,
///                 },
///             }).Apply(invoke => invoke.Result),
///             VswitchId = exampleSwitch.Id,
///             MonitoringPeriod = 60,
///             DbInstanceStorageType = "cloud_essd",
///             SecurityGroupIds = new[]
///             {
///                 exampleSecurityGroup.Id,
///             },
///         }));
///     }
///     var exampleRdsAccount = new List<AliCloud.Rds.RdsAccount>();
///     for (var rangeIndex = 0; rangeIndex < 2; rangeIndex++)
///     {
///         var range = new { Value = rangeIndex };
///         exampleRdsAccount.Add(new AliCloud.Rds.RdsAccount($"example-{range.Value}", new()
///         {
///             DbInstanceId = exampleInstance[range.Value].Id,
///             AccountName = Std.Format.Invoke(new()
///             {
///                 Input = "example_name_%d",
///                 Args = new[]
///                 {
///                     range.Value + 1,
///                 },
///             }).Apply(invoke => invoke.Result),
///             AccountPassword = Std.Format.Invoke(new()
///             {
///                 Input = "example_password_%d",
///                 Args = new[]
///                 {
///                     range.Value + 1,
///                 },
///             }).Apply(invoke => invoke.Result),
///         }));
///     }
///     var exampleDatabase = new List<AliCloud.Rds.Database>();
///     for (var rangeIndex = 0; rangeIndex < 2; rangeIndex++)
///     {
///         var range = new { Value = rangeIndex };
///         exampleDatabase.Add(new AliCloud.Rds.Database($"example-{range.Value}", new()
///         {
///             InstanceId = exampleInstance[range.Value].Id,
///             Name = Std.Format.Invoke(new()
///             {
///                 Input = $"{name}_%d",
///                 Args = new[]
///                 {
///                     range.Value + 1,
///                 },
///             }).Apply(invoke => invoke.Result),
///         }));
///     }
///     var exampleAccountPrivilege = new List<AliCloud.Rds.AccountPrivilege>();
///     for (var rangeIndex = 0; rangeIndex < 2; rangeIndex++)
///     {
///         var range = new { Value = rangeIndex };
///         exampleAccountPrivilege.Add(new AliCloud.Rds.AccountPrivilege($"example-{range.Value}", new()
///         {
///             InstanceId = exampleInstance[range.Value].Id,
///             AccountName = exampleRdsAccount[range.Value].Name,
///             Privilege = "ReadWrite",
///             DbNames = new[]
///             {
///                 exampleDatabase[range.Value].Name,
///             },
///         }));
///     }
///     var exampleMigrationInstance = new AliCloud.Dts.MigrationInstance("example", new()
///     {
///         PaymentType = "PayAsYouGo",
///         SourceEndpointEngineName = "MySQL",
///         SourceEndpointRegion = example.Apply(getRegionsResult => getRegionsResult.Regions[0]?.Id),
///         DestinationEndpointEngineName = "MySQL",
///         DestinationEndpointRegion = example.Apply(getRegionsResult => getRegionsResult.Regions[0]?.Id),
///         InstanceClass = "small",
///         SyncArchitecture = "oneway",
///     });
///
///     var exampleMigrationJob = new AliCloud.Dts.MigrationJob("example", new()
///     {
///         DtsInstanceId = exampleMigrationInstance.Id,
///         DtsJobName = name,
///         SourceEndpointInstanceType = "RDS",
///         SourceEndpointInstanceId = exampleAccountPrivilege[0].InstanceId,
///         SourceEndpointEngineName = "MySQL",
///         SourceEndpointRegion = example.Apply(getRegionsResult => getRegionsResult.Regions[0]?.Id),
///         SourceEndpointUserName = exampleRdsAccount[0].AccountName,
///         SourceEndpointPassword = exampleRdsAccount[0].AccountPassword,
///         DestinationEndpointInstanceType = "RDS",
///         DestinationEndpointInstanceId = exampleAccountPrivilege[1].InstanceId,
///         DestinationEndpointEngineName = "MySQL",
///         DestinationEndpointRegion = example.Apply(getRegionsResult => getRegionsResult.Regions[0]?.Id),
///         DestinationEndpointUserName = exampleRdsAccount[1].AccountName,
///         DestinationEndpointPassword = exampleRdsAccount[1].AccountPassword,
///         DbList = Output.JsonSerialize(Output.Create(Output.Tuple(exampleDatabase[0].Name, exampleDatabase[1].Name).Apply(values =>
///         {
///             var exampleDatabaseName = values.Item1;
///             var exampleDatabaseName1 = values.Item2;
///             return
///             {
///                 { exampleDatabaseName,
///                 {
///                     { "name", exampleDatabaseName1 },
///                     { "all", true },
///                 } },
///             };
///         }))),
///         StructureInitialization = true,
///         DataInitialization = true,
///         DataSynchronization = true,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"encoding/json"
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/dts"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ecs"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/rds"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
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
/// 		example, err := alicloud.GetRegions(ctx, &alicloud.GetRegionsArgs{
/// 			Current: pulumi.BoolRef(true),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleGetZones, err := rds.GetZones(ctx, &rds.GetZonesArgs{
/// 			Engine:                pulumi.StringRef("MySQL"),
/// 			EngineVersion:         pulumi.StringRef("8.0"),
/// 			InstanceChargeType:    pulumi.StringRef("PostPaid"),
/// 			Category:              pulumi.StringRef("Basic"),
/// 			DbInstanceStorageType: pulumi.StringRef("cloud_essd"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleGetInstanceClasses, err := rds.GetInstanceClasses(ctx, &rds.GetInstanceClassesArgs{
/// 			ZoneId:                pulumi.StringRef(exampleGetZones.Zones[0].Id),
/// 			Engine:                pulumi.StringRef("MySQL"),
/// 			EngineVersion:         pulumi.StringRef("8.0"),
/// 			InstanceChargeType:    pulumi.StringRef("PostPaid"),
/// 			Category:              pulumi.StringRef("Basic"),
/// 			DbInstanceStorageType: pulumi.StringRef("cloud_essd"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleNetwork, err := vpc.NewNetwork(ctx, "example", &vpc.NetworkArgs{
/// 			VpcName:   pulumi.String(name),
/// 			CidrBlock: pulumi.String("172.16.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSwitch, err := vpc.NewSwitch(ctx, "example", &vpc.SwitchArgs{
/// 			VpcId:       exampleNetwork.ID(),
/// 			CidrBlock:   pulumi.String("172.16.0.0/24"),
/// 			ZoneId:      pulumi.String(exampleGetZones.Zones[0].Id),
/// 			VswitchName: pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSecurityGroup, err := ecs.NewSecurityGroup(ctx, "example", &ecs.SecurityGroupArgs{
/// 			Name:  pulumi.String(name),
/// 			VpcId: exampleNetwork.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFormat, err := std.Format(ctx, &std.FormatArgs{
/// 			Input: fmt.Sprintf("%v%v", name, "_%d"),
/// 			Args: []float64{
/// 				val0 + 1,
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		var exampleInstance []*rds.Instance
/// 		for index := 0; index < 2; index++ {
/// 			key0 := index
/// 			_ := index
/// 			__res, err := rds.NewInstance(ctx, fmt.Sprintf("example-%v", key0), &rds.InstanceArgs{
/// 				Engine:                pulumi.String("MySQL"),
/// 				EngineVersion:         pulumi.String("8.0"),
/// 				InstanceType:          pulumi.String(exampleGetInstanceClasses.InstanceClasses[0].InstanceClass),
/// 				InstanceStorage:       pulumi.String(exampleGetInstanceClasses.InstanceClasses[0].StorageRange.Min),
/// 				InstanceChargeType:    pulumi.String("Postpaid"),
/// 				InstanceName:          pulumi.String(invokeFormat.Result),
/// 				VswitchId:             exampleSwitch.ID(),
/// 				MonitoringPeriod:      pulumi.Int(60),
/// 				DbInstanceStorageType: pulumi.String("cloud_essd"),
/// 				SecurityGroupIds: pulumi.StringArray{
/// 					exampleSecurityGroup.ID(),
/// 				},
/// 			})
/// 			if err != nil {
/// 				return err
/// 			}
/// 			exampleInstance = append(exampleInstance, __res)
/// 		}
/// 		invokeFormat1, err := std.Format(ctx, &std.FormatArgs{
/// 			Input: "example_name_%d",
/// 			Args: []float64{
/// 				val0 + 1,
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFormat2, err := std.Format(ctx, &std.FormatArgs{
/// 			Input: "example_password_%d",
/// 			Args: []float64{
/// 				val0 + 1,
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		var exampleRdsAccount []*rds.RdsAccount
/// 		for index := 0; index < 2; index++ {
/// 			key0 := index
/// 			val0 := index
/// 			__res, err := rds.NewRdsAccount(ctx, fmt.Sprintf("example-%v", key0), &rds.RdsAccountArgs{
/// 				DbInstanceId:    exampleInstance[val0].ID(),
/// 				AccountName:     pulumi.String(invokeFormat1.Result),
/// 				AccountPassword: pulumi.String(invokeFormat2.Result),
/// 			})
/// 			if err != nil {
/// 				return err
/// 			}
/// 			exampleRdsAccount = append(exampleRdsAccount, __res)
/// 		}
/// 		invokeFormat3, err := std.Format(ctx, &std.FormatArgs{
/// 			Input: fmt.Sprintf("%v%v", name, "_%d"),
/// 			Args: []float64{
/// 				val0 + 1,
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		var exampleDatabase []*rds.Database
/// 		for index := 0; index < 2; index++ {
/// 			key0 := index
/// 			val0 := index
/// 			__res, err := rds.NewDatabase(ctx, fmt.Sprintf("example-%v", key0), &rds.DatabaseArgs{
/// 				InstanceId: exampleInstance[val0].ID(),
/// 				Name:       pulumi.String(invokeFormat3.Result),
/// 			})
/// 			if err != nil {
/// 				return err
/// 			}
/// 			exampleDatabase = append(exampleDatabase, __res)
/// 		}
/// 		var exampleAccountPrivilege []*rds.AccountPrivilege
/// 		for index := 0; index < 2; index++ {
/// 			key0 := index
/// 			val0 := index
/// 			__res, err := rds.NewAccountPrivilege(ctx, fmt.Sprintf("example-%v", key0), &rds.AccountPrivilegeArgs{
/// 				InstanceId:  exampleInstance[val0].ID(),
/// 				AccountName: exampleRdsAccount[val0].Name,
/// 				Privilege:   pulumi.String("ReadWrite"),
/// 				DbNames: pulumi.StringArray{
/// 					exampleDatabase[val0].Name,
/// 				},
/// 			})
/// 			if err != nil {
/// 				return err
/// 			}
/// 			exampleAccountPrivilege = append(exampleAccountPrivilege, __res)
/// 		}
/// 		exampleMigrationInstance, err := dts.NewMigrationInstance(ctx, "example", &dts.MigrationInstanceArgs{
/// 			PaymentType:                   pulumi.String("PayAsYouGo"),
/// 			SourceEndpointEngineName:      pulumi.String("MySQL"),
/// 			SourceEndpointRegion:          pulumi.String(example.Regions[0].Id),
/// 			DestinationEndpointEngineName: pulumi.String("MySQL"),
/// 			DestinationEndpointRegion:     pulumi.String(example.Regions[0].Id),
/// 			InstanceClass:                 pulumi.String("small"),
/// 			SyncArchitecture:              pulumi.String("oneway"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = dts.NewMigrationJob(ctx, "example", &dts.MigrationJobArgs{
/// 			DtsInstanceId:                   exampleMigrationInstance.ID(),
/// 			DtsJobName:                      pulumi.String(name),
/// 			SourceEndpointInstanceType:      pulumi.String("RDS"),
/// 			SourceEndpointInstanceId:        exampleAccountPrivilege[0].InstanceId,
/// 			SourceEndpointEngineName:        pulumi.String("MySQL"),
/// 			SourceEndpointRegion:            pulumi.String(example.Regions[0].Id),
/// 			SourceEndpointUserName:          exampleRdsAccount[0].AccountName,
/// 			SourceEndpointPassword:          exampleRdsAccount[0].AccountPassword,
/// 			DestinationEndpointInstanceType: pulumi.String("RDS"),
/// 			DestinationEndpointInstanceId:   exampleAccountPrivilege[1].InstanceId,
/// 			DestinationEndpointEngineName:   pulumi.String("MySQL"),
/// 			DestinationEndpointRegion:       pulumi.String(example.Regions[0].Id),
/// 			DestinationEndpointUserName:     exampleRdsAccount[1].AccountName,
/// 			DestinationEndpointPassword:     exampleRdsAccount[1].AccountPassword,
/// 			DbList: pulumi.All(exampleDatabase[0].Name, exampleDatabase[1].Name).ApplyT(func(_args []interface{}) (string, error) {
/// 				exampleDatabaseName := _args[0].(string)
/// 				exampleDatabaseName1 := _args[1].(string)
/// 				var _zero string
/// 				tmpJSON0, err := json.Marshal(map[string]map[string]interface{}{
/// 					exampleDatabaseName: map[string]interface{}{
/// 						"name": exampleDatabaseName1,
/// 						"all":  true,
/// 					},
/// 				})
/// 				if err != nil {
/// 					return _zero, err
/// 				}
/// 				json0 := string(tmpJSON0)
/// 				return json0, nil
/// 			}).(pulumi.StringOutput),
/// 			StructureInitialization: pulumi.Bool(true),
/// 			DataInitialization:      pulumi.Bool(true),
/// 			DataSynchronization:     pulumi.Bool(true),
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
/// import com.pulumi.alicloud.inputs.GetRegionsArgs;
/// import com.pulumi.alicloud.rds.RdsFunctions;
/// import com.pulumi.alicloud.rds.inputs.GetZonesArgs;
/// import com.pulumi.alicloud.rds.inputs.GetInstanceClassesArgs;
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.ecs.SecurityGroup;
/// import com.pulumi.alicloud.ecs.SecurityGroupArgs;
/// import com.pulumi.alicloud.rds.Instance;
/// import com.pulumi.alicloud.rds.InstanceArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FormatArgs;
/// import com.pulumi.alicloud.rds.RdsAccount;
/// import com.pulumi.alicloud.rds.RdsAccountArgs;
/// import com.pulumi.alicloud.rds.Database;
/// import com.pulumi.alicloud.rds.DatabaseArgs;
/// import com.pulumi.alicloud.rds.AccountPrivilege;
/// import com.pulumi.alicloud.rds.AccountPrivilegeArgs;
/// import com.pulumi.alicloud.dts.MigrationInstance;
/// import com.pulumi.alicloud.dts.MigrationInstanceArgs;
/// import com.pulumi.alicloud.dts.MigrationJob;
/// import com.pulumi.alicloud.dts.MigrationJobArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
///         final var config = ctx.config();
///         final var name = config.get("name").orElse("terraform-example");
///         final var example = AlicloudFunctions.getRegions(GetRegionsArgs.builder()
///             .current(true)
///             .build());
///
///         final var exampleGetZones = RdsFunctions.getZones(GetZonesArgs.builder()
///             .engine("MySQL")
///             .engineVersion("8.0")
///             .instanceChargeType("PostPaid")
///             .category("Basic")
///             .dbInstanceStorageType("cloud_essd")
///             .build());
///
///         final var exampleGetInstanceClasses = RdsFunctions.getInstanceClasses(GetInstanceClassesArgs.builder()
///             .zoneId(exampleGetZones.zones()[0].id())
///             .engine("MySQL")
///             .engineVersion("8.0")
///             .instanceChargeType("PostPaid")
///             .category("Basic")
///             .dbInstanceStorageType("cloud_essd")
///             .build());
///
///         var exampleNetwork = new Network("exampleNetwork", NetworkArgs.builder()
///             .vpcName(name)
///             .cidrBlock("172.16.0.0/16")
///             .build());
///
///         var exampleSwitch = new Switch("exampleSwitch", SwitchArgs.builder()
///             .vpcId(exampleNetwork.id())
///             .cidrBlock("172.16.0.0/24")
///             .zoneId(exampleGetZones.zones()[0].id())
///             .vswitchName(name)
///             .build());
///
///         var exampleSecurityGroup = new SecurityGroup("exampleSecurityGroup", SecurityGroupArgs.builder()
///             .name(name)
///             .vpcId(exampleNetwork.id())
///             .build());
///
///         for (var i = 0; i < 2; i++) {
///             new Instance("exampleInstance-" + i, InstanceArgs.builder()
///                 .engine("MySQL")
///                 .engineVersion("8.0")
///                 .instanceType(exampleGetInstanceClasses.instanceClasses()[0].instanceClass())
///                 .instanceStorage(exampleGetInstanceClasses.instanceClasses()[0].storageRange().min())
///                 .instanceChargeType("Postpaid")
///                 .instanceName(StdFunctions.format(FormatArgs.builder()
///                     .input(String.format("%s_%d", name))
///                     .args(range.value() + 1)
///                     .build()).result())
///                 .vswitchId(exampleSwitch.id())
///                 .monitoringPeriod(60)
///                 .dbInstanceStorageType("cloud_essd")
///                 .securityGroupIds(exampleSecurityGroup.id())
///                 .build());
///
///
/// }
///         for (var i = 0; i < 2; i++) {
///             new RdsAccount("exampleRdsAccount-" + i, RdsAccountArgs.builder()
///                 .dbInstanceId(exampleInstance[range.value()].id())
///                 .accountName(StdFunctions.format(FormatArgs.builder()
///                     .input("example_name_%d")
///                     .args(range.value() + 1)
///                     .build()).result())
///                 .accountPassword(StdFunctions.format(FormatArgs.builder()
///                     .input("example_password_%d")
///                     .args(range.value() + 1)
///                     .build()).result())
///                 .build());
///
///
/// }
///         for (var i = 0; i < 2; i++) {
///             new Database("exampleDatabase-" + i, DatabaseArgs.builder()
///                 .instanceId(exampleInstance[range.value()].id())
///                 .name(StdFunctions.format(FormatArgs.builder()
///                     .input(String.format("%s_%d", name))
///                     .args(range.value() + 1)
///                     .build()).result())
///                 .build());
///
///
/// }
///         for (var i = 0; i < 2; i++) {
///             new AccountPrivilege("exampleAccountPrivilege-" + i, AccountPrivilegeArgs.builder()
///                 .instanceId(exampleInstance[range.value()].id())
///                 .accountName(exampleRdsAccount[range.value()].name())
///                 .privilege("ReadWrite")
///                 .dbNames(exampleDatabase[range.value()].name())
///                 .build());
///
///
/// }
///         var exampleMigrationInstance = new MigrationInstance("exampleMigrationInstance", MigrationInstanceArgs.builder()
///             .paymentType("PayAsYouGo")
///             .sourceEndpointEngineName("MySQL")
///             .sourceEndpointRegion(example.regions()[0].id())
///             .destinationEndpointEngineName("MySQL")
///             .destinationEndpointRegion(example.regions()[0].id())
///             .instanceClass("small")
///             .syncArchitecture("oneway")
///             .build());
///
///         var exampleMigrationJob = new MigrationJob("exampleMigrationJob", MigrationJobArgs.builder()
///             .dtsInstanceId(exampleMigrationInstance.id())
///             .dtsJobName(name)
///             .sourceEndpointInstanceType("RDS")
///             .sourceEndpointInstanceId(exampleAccountPrivilege[0].instanceId())
///             .sourceEndpointEngineName("MySQL")
///             .sourceEndpointRegion(example.regions()[0].id())
///             .sourceEndpointUserName(exampleRdsAccount[0].accountName())
///             .sourceEndpointPassword(exampleRdsAccount[0].accountPassword())
///             .destinationEndpointInstanceType("RDS")
///             .destinationEndpointInstanceId(exampleAccountPrivilege[1].instanceId())
///             .destinationEndpointEngineName("MySQL")
///             .destinationEndpointRegion(example.regions()[0].id())
///             .destinationEndpointUserName(exampleRdsAccount[1].accountName())
///             .destinationEndpointPassword(exampleRdsAccount[1].accountPassword())
///             .dbList(Output.tuple(exampleDatabase[0].name(), exampleDatabase[1].name()).applyValue(values -> {
///                 var exampleDatabaseName = values.t1;
///                 var exampleDatabaseName1 = values.t2;
///                 return serializeJson(
///                     jsonObject(
///                         jsonProperty(exampleDatabaseName, jsonObject(
///                             jsonProperty("name", exampleDatabaseName1),
///                             jsonProperty("all", true)
///                         ))
///                     ));
///             }))
///             .structureInitialization(true)
///             .dataInitialization(true)
///             .dataSynchronization(true)
///             .build());
///
///     }
/// }
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Notice
///
/// 1. The expiration time cannot be changed after the work of the annual and monthly subscription suspended;
/// 2. After the pay-as-you-go type job suspended, your job configuration fee will still be charged;
/// 3. If the task suspended for more than 6 hours, the task will not start successfully.
/// 4. Suspending the task will only stop writing to the target library, but will still continue to obtain the incremental log of the source, so that the task can be quickly resumed after the suspension is canceled. Therefore, some resources of the source library, such as bandwidth resources, will continue to be occupied during the period.
/// 5. Charges will continue during the task suspension period. If you need to stop charging, please release the instance
/// 6. When a DTS instance suspended for more than 7 days, the instance cannot be resumed, and the status will change from suspended to failed.
///
/// ## Import
///
/// DTS Migration Job can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:dts/migrationJob:MigrationJob example <id>
/// ```
class MigrationJob extends pulumi.CustomResource {
  /// Start time in Unix timestamp format.
  late final pulumi.Output<String> checkpoint;
  /// Whether to execute DTS supports schema migration.
  late final pulumi.Output<bool> dataInitialization;
  /// Whether to perform incremental data migration.
  late final pulumi.Output<bool> dataSynchronization;
  /// Migration object, in the format of JSON strings. For detailed definition instructions, please refer to [the description of migration, migration or subscription objects](https://help.aliyun.com/document_detail/209545.html).
  late final pulumi.Output<String> dbList;
  /// The name of migrate the database.
  late final pulumi.Output<String?> destinationEndpointDatabaseName;
  /// The type of destination database. Valid values: `ADS`, `ADB30`, `AS400`, `DATAHUB`, `DB2`, `GREENPLUM`, `KAFKA`, `MONGODB`, `MSSQL`, `MySQL`, `ORACLE`, `PolarDB`, `POLARDBX20`, `POLARDB_O`, `PostgreSQL`.
  late final pulumi.Output<String> destinationEndpointEngineName;
  /// The ID of destination instance.
  late final pulumi.Output<String?> destinationEndpointInstanceId;
  /// The type of destination instance. Valid values: `ADS`, `CEN`, `DATAHUB`, `DG`, `ECS`, `EXPRESS`, `GREENPLUM`, `MONGODB`, `OTHER`, `PolarDB`, `POLARDBX20`, `RDS`.
  late final pulumi.Output<String> destinationEndpointInstanceType;
  /// The ip of source endpoint.
  late final pulumi.Output<String?> destinationEndpointIp;
  /// The SID of Oracle database.
  late final pulumi.Output<String?> destinationEndpointOracleSid;
  /// The password of database account.
  late final pulumi.Output<String?> destinationEndpointPassword;
  /// The port of source endpoint.
  late final pulumi.Output<String?> destinationEndpointPort;
  /// The region of destination instance.
  late final pulumi.Output<String?> destinationEndpointRegion;
  /// The username of database account.
  late final pulumi.Output<String?> destinationEndpointUserName;
  /// The Migration instance ID. The ID of `alicloud.dts.MigrationInstance`.
  late final pulumi.Output<String> dtsInstanceId;
  /// The name of migration job.
  late final pulumi.Output<String> dtsJobName;
  /// The instance class. Valid values: `large`, `medium`, `micro`, `small`, `xlarge`, `xxlarge`.
  late final pulumi.Output<String> instanceClass;
  /// The name of migrate the database.
  late final pulumi.Output<String?> sourceEndpointDatabaseName;
  /// The type of source database. Valid values: `AS400`, `DB2`, `DMSPOLARDB`, `HBASE`, `MONGODB`, `MSSQL`, `MySQL`, `ORACLE`, `PolarDB`, `POLARDBX20`, `POLARDB_O`, `POSTGRESQL`, `TERADATA`.
  late final pulumi.Output<String> sourceEndpointEngineName;
  /// The ID of source instance.
  late final pulumi.Output<String?> sourceEndpointInstanceId;
  /// The type of source instance. Valid values: `CEN`, `DG`, `DISTRIBUTED_DMSLOGICDB`, `ECS`, `EXPRESS`, `MONGODB`, `OTHER`, `PolarDB`, `POLARDBX20`, `RDS`.
  late final pulumi.Output<String> sourceEndpointInstanceType;
  /// The ip of source endpoint.
  late final pulumi.Output<String?> sourceEndpointIp;
  /// The SID of Oracle database.
  late final pulumi.Output<String?> sourceEndpointOracleSid;
  /// The Alibaba Cloud account ID to which the source instance belongs.
  late final pulumi.Output<String?> sourceEndpointOwnerId;
  /// The password of database account.
  late final pulumi.Output<String?> sourceEndpointPassword;
  /// The port of source endpoint.
  late final pulumi.Output<String?> sourceEndpointPort;
  /// The region of source instance.
  late final pulumi.Output<String?> sourceEndpointRegion;
  /// The name of the role configured for the cloud account to which the source instance belongs.
  late final pulumi.Output<String?> sourceEndpointRole;
  /// The username of database account.
  late final pulumi.Output<String?> sourceEndpointUserName;
  /// The status of the resource. Valid values: `Migrating`, `Suspending`. You can suspend the task by specifying `Suspending` and start the task by specifying `Migrating`.
  late final pulumi.Output<String> status;
  /// Whether to perform a database table structure to migrate.
  late final pulumi.Output<bool> structureInitialization;

  /// Creates a new [MigrationJob].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MigrationJob]. {@macro pulumi_dts_migration_job_migration_job_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MigrationJob(
    String name, {
    MigrationJobArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:dts/migrationJob:MigrationJob',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.checkpoint = registerOutput<String>('checkpoint');
    this.dataInitialization = registerOutput<bool>('dataInitialization');
    this.dataSynchronization = registerOutput<bool>('dataSynchronization');
    this.dbList = registerOutput<String>('dbList');
    this.destinationEndpointDatabaseName = registerOutput<String?>('destinationEndpointDatabaseName');
    this.destinationEndpointEngineName = registerOutput<String>('destinationEndpointEngineName');
    this.destinationEndpointInstanceId = registerOutput<String?>('destinationEndpointInstanceId');
    this.destinationEndpointInstanceType = registerOutput<String>('destinationEndpointInstanceType');
    this.destinationEndpointIp = registerOutput<String?>('destinationEndpointIp');
    this.destinationEndpointOracleSid = registerOutput<String?>('destinationEndpointOracleSid');
    this.destinationEndpointPassword = registerOutput<String?>('destinationEndpointPassword');
    this.destinationEndpointPort = registerOutput<String?>('destinationEndpointPort');
    this.destinationEndpointRegion = registerOutput<String?>('destinationEndpointRegion');
    this.destinationEndpointUserName = registerOutput<String?>('destinationEndpointUserName');
    this.dtsInstanceId = registerOutput<String>('dtsInstanceId');
    this.dtsJobName = registerOutput<String>('dtsJobName');
    this.instanceClass = registerOutput<String>('instanceClass');
    this.sourceEndpointDatabaseName = registerOutput<String?>('sourceEndpointDatabaseName');
    this.sourceEndpointEngineName = registerOutput<String>('sourceEndpointEngineName');
    this.sourceEndpointInstanceId = registerOutput<String?>('sourceEndpointInstanceId');
    this.sourceEndpointInstanceType = registerOutput<String>('sourceEndpointInstanceType');
    this.sourceEndpointIp = registerOutput<String?>('sourceEndpointIp');
    this.sourceEndpointOracleSid = registerOutput<String?>('sourceEndpointOracleSid');
    this.sourceEndpointOwnerId = registerOutput<String?>('sourceEndpointOwnerId');
    this.sourceEndpointPassword = registerOutput<String?>('sourceEndpointPassword');
    this.sourceEndpointPort = registerOutput<String?>('sourceEndpointPort');
    this.sourceEndpointRegion = registerOutput<String?>('sourceEndpointRegion');
    this.sourceEndpointRole = registerOutput<String?>('sourceEndpointRole');
    this.sourceEndpointUserName = registerOutput<String?>('sourceEndpointUserName');
    this.status = registerOutput<String>('status');
    this.structureInitialization = registerOutput<bool>('structureInitialization');
  }
}
