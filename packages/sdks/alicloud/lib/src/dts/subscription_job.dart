import 'package:pulumi/pulumi.dart' as pulumi;
import 'subscription_job_args.dart';
import 'subscription_job_state.dart';

/// Provides a DTS Subscription Job resource.
///
/// For information about DTS Subscription Job and how to use it, see [What is Subscription Job](https://www.alibabacloud.com/help/en/data-transmission-service/latest/configuresubscription).
///
/// &gt; **NOTE:** Available since v1.138.0.
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
/// const exampleInstance = new alicloud.rds.Instance("example", {
///     engine: "MySQL",
///     engineVersion: "8.0",
///     instanceType: exampleGetInstanceClasses.then(exampleGetInstanceClasses => exampleGetInstanceClasses.instanceClasses?.[0]?.instanceClass),
///     instanceStorage: exampleGetInstanceClasses.then(exampleGetInstanceClasses => exampleGetInstanceClasses.instanceClasses?.[0]?.storageRange?.min),
///     instanceChargeType: "Postpaid",
///     instanceName: name,
///     vswitchId: exampleSwitch.id,
///     monitoringPeriod: 60,
///     dbInstanceStorageType: "cloud_essd",
///     securityGroupIds: [exampleSecurityGroup.id],
/// });
/// const exampleRdsAccount = new alicloud.rds.RdsAccount("example", {
///     dbInstanceId: exampleInstance.id,
///     accountName: "test_mysql",
///     accountPassword: "N1cetest",
/// });
/// const exampleDatabase = new alicloud.rds.Database("example", {
///     instanceId: exampleInstance.id,
///     name: name,
/// });
/// const exampleAccountPrivilege = new alicloud.rds.AccountPrivilege("example", {
///     instanceId: exampleInstance.id,
///     accountName: exampleRdsAccount.accountName,
///     privilege: "ReadWrite",
///     dbNames: [exampleDatabase.name],
/// });
/// const exampleSubscriptionJob = new alicloud.dts.SubscriptionJob("example", {
///     dtsJobName: name,
///     paymentType: "PayAsYouGo",
///     sourceEndpointEngineName: "MySQL",
///     sourceEndpointRegion: example.then(example => example.regions?.[0]?.id),
///     sourceEndpointInstanceType: "RDS",
///     sourceEndpointInstanceId: exampleInstance.id,
///     sourceEndpointDatabaseName: exampleDatabase.name,
///     sourceEndpointUserName: exampleRdsAccount.accountName,
///     sourceEndpointPassword: exampleRdsAccount.accountPassword,
///     dbList: pulumi.jsonStringify(pulumi.all([exampleDatabase.name, exampleDatabase.name]).apply(([exampleDatabaseName, exampleDatabaseName1]) => {
///         [exampleDatabaseName]: {
///             name: exampleDatabaseName1,
///             all: true,
///         },
///     })),
///     subscriptionInstanceNetworkType: "vpc",
///     subscriptionInstanceVpcId: exampleNetwork.id,
///     subscriptionInstanceVswitchId: exampleSwitch.id,
///     status: "Normal",
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_alicloud as alicloud
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
/// example_instance = alicloud.rds.Instance("example",
///     engine="MySQL",
///     engine_version="8.0",
///     instance_type=example_get_instance_classes.instance_classes[0].instance_class,
///     instance_storage=example_get_instance_classes.instance_classes[0].storage_range.min,
///     instance_charge_type="Postpaid",
///     instance_name=name,
///     vswitch_id=example_switch.id,
///     monitoring_period=60,
///     db_instance_storage_type="cloud_essd",
///     security_group_ids=[example_security_group.id])
/// example_rds_account = alicloud.rds.RdsAccount("example",
///     db_instance_id=example_instance.id,
///     account_name="test_mysql",
///     account_password="N1cetest")
/// example_database = alicloud.rds.Database("example",
///     instance_id=example_instance.id,
///     name=name)
/// example_account_privilege = alicloud.rds.AccountPrivilege("example",
///     instance_id=example_instance.id,
///     account_name=example_rds_account.account_name,
///     privilege="ReadWrite",
///     db_names=[example_database.name])
/// example_subscription_job = alicloud.dts.SubscriptionJob("example",
///     dts_job_name=name,
///     payment_type="PayAsYouGo",
///     source_endpoint_engine_name="MySQL",
///     source_endpoint_region=example.regions[0].id,
///     source_endpoint_instance_type="RDS",
///     source_endpoint_instance_id=example_instance.id,
///     source_endpoint_database_name=example_database.name,
///     source_endpoint_user_name=example_rds_account.account_name,
///     source_endpoint_password=example_rds_account.account_password,
///     db_list=pulumi.Output.json_dumps(pulumi.Output.all(
///         exampleDatabaseName=example_database.name,
///         exampleDatabaseName1=example_database.name
/// ).apply(lambda resolved_outputs: {
///         resolved_outputs['exampleDatabaseName']: {
///             "name": resolved_outputs['exampleDatabaseName1'],
///             "all": True,
///         },
///     })
/// ),
///     subscription_instance_network_type="vpc",
///     subscription_instance_vpc_id=example_network.id,
///     subscription_instance_vswitch_id=example_switch.id,
///     status="Normal")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
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
///     var exampleInstance = new AliCloud.Rds.Instance("example", new()
///     {
///         Engine = "MySQL",
///         EngineVersion = "8.0",
///         InstanceType = exampleGetInstanceClasses.Apply(getInstanceClassesResult => getInstanceClassesResult.InstanceClasses[0]?.InstanceClass),
///         InstanceStorage = exampleGetInstanceClasses.Apply(getInstanceClassesResult => getInstanceClassesResult.InstanceClasses[0]?.StorageRange?.Min),
///         InstanceChargeType = "Postpaid",
///         InstanceName = name,
///         VswitchId = exampleSwitch.Id,
///         MonitoringPeriod = 60,
///         DbInstanceStorageType = "cloud_essd",
///         SecurityGroupIds = new[]
///         {
///             exampleSecurityGroup.Id,
///         },
///     });
///
///     var exampleRdsAccount = new AliCloud.Rds.RdsAccount("example", new()
///     {
///         DbInstanceId = exampleInstance.Id,
///         AccountName = "test_mysql",
///         AccountPassword = "N1cetest",
///     });
///
///     var exampleDatabase = new AliCloud.Rds.Database("example", new()
///     {
///         InstanceId = exampleInstance.Id,
///         Name = name,
///     });
///
///     var exampleAccountPrivilege = new AliCloud.Rds.AccountPrivilege("example", new()
///     {
///         InstanceId = exampleInstance.Id,
///         AccountName = exampleRdsAccount.AccountName,
///         Privilege = "ReadWrite",
///         DbNames = new[]
///         {
///             exampleDatabase.Name,
///         },
///     });
///
///     var exampleSubscriptionJob = new AliCloud.Dts.SubscriptionJob("example", new()
///     {
///         DtsJobName = name,
///         PaymentType = "PayAsYouGo",
///         SourceEndpointEngineName = "MySQL",
///         SourceEndpointRegion = example.Apply(getRegionsResult => getRegionsResult.Regions[0]?.Id),
///         SourceEndpointInstanceType = "RDS",
///         SourceEndpointInstanceId = exampleInstance.Id,
///         SourceEndpointDatabaseName = exampleDatabase.Name,
///         SourceEndpointUserName = exampleRdsAccount.AccountName,
///         SourceEndpointPassword = exampleRdsAccount.AccountPassword,
///         DbList = Output.JsonSerialize(Output.Create(Output.Tuple(exampleDatabase.Name, exampleDatabase.Name).Apply(values =>
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
///         SubscriptionInstanceNetworkType = "vpc",
///         SubscriptionInstanceVpcId = exampleNetwork.Id,
///         SubscriptionInstanceVswitchId = exampleSwitch.Id,
///         Status = "Normal",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"encoding/json"
///
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/dts"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ecs"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/rds"
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
/// 		exampleInstance, err := rds.NewInstance(ctx, "example", &rds.InstanceArgs{
/// 			Engine:                pulumi.String("MySQL"),
/// 			EngineVersion:         pulumi.String("8.0"),
/// 			InstanceType:          pulumi.String(exampleGetInstanceClasses.InstanceClasses[0].InstanceClass),
/// 			InstanceStorage:       pulumi.String(exampleGetInstanceClasses.InstanceClasses[0].StorageRange.Min),
/// 			InstanceChargeType:    pulumi.String("Postpaid"),
/// 			InstanceName:          pulumi.String(name),
/// 			VswitchId:             exampleSwitch.ID(),
/// 			MonitoringPeriod:      pulumi.Int(60),
/// 			DbInstanceStorageType: pulumi.String("cloud_essd"),
/// 			SecurityGroupIds: pulumi.StringArray{
/// 				exampleSecurityGroup.ID(),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleRdsAccount, err := rds.NewRdsAccount(ctx, "example", &rds.RdsAccountArgs{
/// 			DbInstanceId:    exampleInstance.ID(),
/// 			AccountName:     pulumi.String("test_mysql"),
/// 			AccountPassword: pulumi.String("N1cetest"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleDatabase, err := rds.NewDatabase(ctx, "example", &rds.DatabaseArgs{
/// 			InstanceId: exampleInstance.ID(),
/// 			Name:       pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = rds.NewAccountPrivilege(ctx, "example", &rds.AccountPrivilegeArgs{
/// 			InstanceId:  exampleInstance.ID(),
/// 			AccountName: exampleRdsAccount.AccountName,
/// 			Privilege:   pulumi.String("ReadWrite"),
/// 			DbNames: pulumi.StringArray{
/// 				exampleDatabase.Name,
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = dts.NewSubscriptionJob(ctx, "example", &dts.SubscriptionJobArgs{
/// 			DtsJobName:                 pulumi.String(name),
/// 			PaymentType:                pulumi.String("PayAsYouGo"),
/// 			SourceEndpointEngineName:   pulumi.String("MySQL"),
/// 			SourceEndpointRegion:       pulumi.String(example.Regions[0].Id),
/// 			SourceEndpointInstanceType: pulumi.String("RDS"),
/// 			SourceEndpointInstanceId:   exampleInstance.ID(),
/// 			SourceEndpointDatabaseName: exampleDatabase.Name,
/// 			SourceEndpointUserName:     exampleRdsAccount.AccountName,
/// 			SourceEndpointPassword:     exampleRdsAccount.AccountPassword,
/// 			DbList: pulumi.All(exampleDatabase.Name, exampleDatabase.Name).ApplyT(func(_args []interface{}) (string, error) {
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
/// 			SubscriptionInstanceNetworkType: pulumi.String("vpc"),
/// 			SubscriptionInstanceVpcId:       exampleNetwork.ID(),
/// 			SubscriptionInstanceVswitchId:   exampleSwitch.ID(),
/// 			Status:                          pulumi.String("Normal"),
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
/// import com.pulumi.alicloud.rds.RdsAccount;
/// import com.pulumi.alicloud.rds.RdsAccountArgs;
/// import com.pulumi.alicloud.rds.Database;
/// import com.pulumi.alicloud.rds.DatabaseArgs;
/// import com.pulumi.alicloud.rds.AccountPrivilege;
/// import com.pulumi.alicloud.rds.AccountPrivilegeArgs;
/// import com.pulumi.alicloud.dts.SubscriptionJob;
/// import com.pulumi.alicloud.dts.SubscriptionJobArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
///         var exampleInstance = new Instance("exampleInstance", InstanceArgs.builder()
///             .engine("MySQL")
///             .engineVersion("8.0")
///             .instanceType(exampleGetInstanceClasses.instanceClasses()[0].instanceClass())
///             .instanceStorage(exampleGetInstanceClasses.instanceClasses()[0].storageRange().min())
///             .instanceChargeType("Postpaid")
///             .instanceName(name)
///             .vswitchId(exampleSwitch.id())
///             .monitoringPeriod(60)
///             .dbInstanceStorageType("cloud_essd")
///             .securityGroupIds(exampleSecurityGroup.id())
///             .build());
///
///         var exampleRdsAccount = new RdsAccount("exampleRdsAccount", RdsAccountArgs.builder()
///             .dbInstanceId(exampleInstance.id())
///             .accountName("test_mysql")
///             .accountPassword("N1cetest")
///             .build());
///
///         var exampleDatabase = new Database("exampleDatabase", DatabaseArgs.builder()
///             .instanceId(exampleInstance.id())
///             .name(name)
///             .build());
///
///         var exampleAccountPrivilege = new AccountPrivilege("exampleAccountPrivilege", AccountPrivilegeArgs.builder()
///             .instanceId(exampleInstance.id())
///             .accountName(exampleRdsAccount.accountName())
///             .privilege("ReadWrite")
///             .dbNames(exampleDatabase.name())
///             .build());
///
///         var exampleSubscriptionJob = new SubscriptionJob("exampleSubscriptionJob", SubscriptionJobArgs.builder()
///             .dtsJobName(name)
///             .paymentType("PayAsYouGo")
///             .sourceEndpointEngineName("MySQL")
///             .sourceEndpointRegion(example.regions()[0].id())
///             .sourceEndpointInstanceType("RDS")
///             .sourceEndpointInstanceId(exampleInstance.id())
///             .sourceEndpointDatabaseName(exampleDatabase.name())
///             .sourceEndpointUserName(exampleRdsAccount.accountName())
///             .sourceEndpointPassword(exampleRdsAccount.accountPassword())
///             .dbList(Output.tuple(exampleDatabase.name(), exampleDatabase.name()).applyValue(values -> {
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
///             .subscriptionInstanceNetworkType("vpc")
///             .subscriptionInstanceVpcId(exampleNetwork.id())
///             .subscriptionInstanceVswitchId(exampleSwitch.id())
///             .status("Normal")
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
///   exampleNetwork:
///     type: alicloud:vpc:Network
///     name: example
///     properties:
///       vpcName: ${name}
///       cidrBlock: 172.16.0.0/16
///   exampleSwitch:
///     type: alicloud:vpc:Switch
///     name: example
///     properties:
///       vpcId: ${exampleNetwork.id}
///       cidrBlock: 172.16.0.0/24
///       zoneId: ${exampleGetZones.zones[0].id}
///       vswitchName: ${name}
///   exampleSecurityGroup:
///     type: alicloud:ecs:SecurityGroup
///     name: example
///     properties:
///       name: ${name}
///       vpcId: ${exampleNetwork.id}
///   exampleInstance:
///     type: alicloud:rds:Instance
///     name: example
///     properties:
///       engine: MySQL
///       engineVersion: '8.0'
///       instanceType: ${exampleGetInstanceClasses.instanceClasses[0].instanceClass}
///       instanceStorage: ${exampleGetInstanceClasses.instanceClasses[0].storageRange.min}
///       instanceChargeType: Postpaid
///       instanceName: ${name}
///       vswitchId: ${exampleSwitch.id}
///       monitoringPeriod: '60'
///       dbInstanceStorageType: cloud_essd
///       securityGroupIds:
///         - ${exampleSecurityGroup.id}
///   exampleRdsAccount:
///     type: alicloud:rds:RdsAccount
///     name: example
///     properties:
///       dbInstanceId: ${exampleInstance.id}
///       accountName: test_mysql
///       accountPassword: N1cetest
///   exampleDatabase:
///     type: alicloud:rds:Database
///     name: example
///     properties:
///       instanceId: ${exampleInstance.id}
///       name: ${name}
///   exampleAccountPrivilege:
///     type: alicloud:rds:AccountPrivilege
///     name: example
///     properties:
///       instanceId: ${exampleInstance.id}
///       accountName: ${exampleRdsAccount.accountName}
///       privilege: ReadWrite
///       dbNames:
///         - ${exampleDatabase.name}
///   exampleSubscriptionJob:
///     type: alicloud:dts:SubscriptionJob
///     name: example
///     properties:
///       dtsJobName: ${name}
///       paymentType: PayAsYouGo
///       sourceEndpointEngineName: MySQL
///       sourceEndpointRegion: ${example.regions[0].id}
///       sourceEndpointInstanceType: RDS
///       sourceEndpointInstanceId: ${exampleInstance.id}
///       sourceEndpointDatabaseName: ${exampleDatabase.name}
///       sourceEndpointUserName: ${exampleRdsAccount.accountName}
///       sourceEndpointPassword: ${exampleRdsAccount.accountPassword}
///       dbList:
///         fn::toJSON:
///           ${exampleDatabase.name}:
///             name: ${exampleDatabase.name}
///             all: true
///       subscriptionInstanceNetworkType: vpc
///       subscriptionInstanceVpcId: ${exampleNetwork.id}
///       subscriptionInstanceVswitchId: ${exampleSwitch.id}
///       status: Normal
/// variables:
///   example:
///     fn::invoke:
///       function: alicloud:getRegions
///       arguments:
///         current: true
///   exampleGetZones:
///     fn::invoke:
///       function: alicloud:rds:getZones
///       arguments:
///         engine: MySQL
///         engineVersion: '8.0'
///         instanceChargeType: PostPaid
///         category: Basic
///         dbInstanceStorageType: cloud_essd
///   exampleGetInstanceClasses:
///     fn::invoke:
///       function: alicloud:rds:getInstanceClasses
///       arguments:
///         zoneId: ${exampleGetZones.zones[0].id}
///         engine: MySQL
///         engineVersion: '8.0'
///         instanceChargeType: PostPaid
///         category: Basic
///         dbInstanceStorageType: cloud_essd
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// DTS Subscription Job can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:dts/subscriptionJob:SubscriptionJob example <id>
/// ```
class SubscriptionJob extends pulumi.CustomResource {
  /// Subscription start time in Unix timestamp format.
  late final pulumi.Output<String> checkpoint;
  /// [ETL specifications](https://help.aliyun.com/document_detail/212324.html). The unit is the computing unit ComputeUnit (CU), 1CU=1vCPU+4 GB memory. The value range is an integer greater than or equal to 2.
  late final pulumi.Output<int?> computeUnit;
  /// The number of private customized RDS instances under PolarDB-X. The default value is 1. This parameter needs to be passed only when `source_endpoint_engine_name` equals `drds`.
  late final pulumi.Output<int?> databaseCount;
  /// Subscription object, in the format of JSON strings. For detailed definitions, please refer to the description of migration, synchronization or subscription objects [document](https://help.aliyun.com/document_detail/209545.html).
  late final pulumi.Output<String?> dbList;
  /// This parameter decides whether to monitor the delay status. Valid values: `true`, `false`.
  late final pulumi.Output<bool?> delayNotice;
  /// The mobile phone number of the contact who delayed the alarm. Multiple mobile phone numbers separated by English commas `,`. This parameter currently only supports China stations, and only supports mainland mobile phone numbers, and up to 10 mobile phone numbers can be passed in.
  late final pulumi.Output<String?> delayPhone;
  /// When `delay_notice` is set to `true`, this parameter must be passed in. The threshold for triggering the delay alarm. The unit is second and needs to be an integer. The threshold can be set according to business needs. It is recommended to set it above 10 seconds to avoid delay fluctuations caused by network and database load.
  late final pulumi.Output<String?> delayRuleTime;
  /// The destination endpoint engine name. Valid values: `ADS`, `DB2`, `DRDS`, `DataHub`, `Greenplum`, `MSSQL`, `MySQL`, `PolarDB`, `PostgreSQL`, `Redis`, `Tablestore`, `as400`, `clickhouse`, `kafka`, `mongodb`, `odps`, `oracle`, `polardb_o`, `polardb_pg`, `tidb`.
  late final pulumi.Output<String?> destinationEndpointEngineName;
  /// The destination region. List of [supported regions](https://help.aliyun.com/document_detail/141033.html).
  late final pulumi.Output<String?> destinationRegion;
  /// The ID of subscription instance.
  late final pulumi.Output<String> dtsInstanceId;
  /// The name of subscription task.
  late final pulumi.Output<String?> dtsJobName;
  /// This parameter decides whether to monitor abnormal status. Valid values: `true`, `false`.
  late final pulumi.Output<bool?> errorNotice;
  /// The mobile phone number of the contact for abnormal alarm. Multiple mobile phone numbers separated by English commas `,`. This parameter currently only supports China stations, and only supports mainland mobile phone numbers, and up to 10 mobile phone numbers can be passed in.
  late final pulumi.Output<String?> errorPhone;
  /// The instance class. Valid values: `large`, `medium`, `micro`, `small`, `xlarge`, `xxlarge`.
  late final pulumi.Output<String?> instanceClass;
  /// The duration of prepaid instance purchase. When `payment_type` is `Subscription`, this parameter is valid and must be passed in.
  late final pulumi.Output<int?> paymentDuration;
  /// The payment duration unit. Valid values: `Month`, `Year`. When `payment_type` is `Subscription`, this parameter is valid and must be passed in.
  late final pulumi.Output<String?> paymentDurationUnit;
  /// The payment type of the resource. Valid values: `Subscription`, `PayAsYouGo`.
  late final pulumi.Output<String> paymentType;
  /// DTS reserves parameters, the format is a JSON string, you can pass in this parameter to complete the source and target database information (such as the data storage format of the target Kafka database, the instance ID of the cloud enterprise network CEN). For more information, please refer to the parameter description of the [Reserve parameter](https://help.aliyun.com/document_detail/176470.html).
  late final pulumi.Output<String?> reserve;
  /// To subscribe to the name of the database.
  late final pulumi.Output<String?> sourceEndpointDatabaseName;
  /// The source database type value is MySQL or Oracle. Valid values: `MySQL`, `Oracle`.
  late final pulumi.Output<String> sourceEndpointEngineName;
  /// The ID of source instance. Only when the type of source database instance was RDS MySQL, PolarDB-X 1.0, PolarDB MySQL, this parameter can be available and must be set.
  late final pulumi.Output<String?> sourceEndpointInstanceId;
  /// The type of source instance. Valid values: `RDS`, `PolarDB`, `DRDS`, `LocalInstance`, `ECS`, `Express`, `CEN`, `dg`.
  late final pulumi.Output<String> sourceEndpointInstanceType;
  /// The IP of source endpoint.
  late final pulumi.Output<String?> sourceEndpointIp;
  /// The SID of Oracle Database. When the source database is self-built Oracle and the Oracle database is a non-RAC instance, this parameter is available and must be passed in.
  late final pulumi.Output<String?> sourceEndpointOracleSid;
  /// The Alibaba Cloud account ID to which the source instance belongs. This parameter is only available when configuring data subscriptions across Alibaba Cloud accounts and must be passed in.
  late final pulumi.Output<String?> sourceEndpointOwnerId;
  /// The password of source database instance account.
  late final pulumi.Output<String?> sourceEndpointPassword;
  /// The port of source database.
  late final pulumi.Output<String?> sourceEndpointPort;
  /// The region of source database.
  late final pulumi.Output<String> sourceEndpointRegion;
  /// Both the authorization roles. When the source instance and configure subscriptions task of the Alibaba Cloud account is not the same as the need to pass the parameter, to specify the source of the authorization roles, to allow configuration subscription task of the Alibaba Cloud account to access the source of the source instance information.
  late final pulumi.Output<String?> sourceEndpointRole;
  /// The username of source database instance account.
  late final pulumi.Output<String?> sourceEndpointUserName;
  /// The status of the task. Valid values: `Normal`, `Abnormal`. When a task created, it is in this state of `NotStarted`. You can specify this state to `Normal` to start the job, and specify this state of `Abnormal` to stop the job. **Note: We treat the state `Starting` as the state of `Normal`, and consider the two states to be consistent on the user side.**
  late final pulumi.Output<String> status;
  /// Whether to subscribe the DDL type of data. Valid values: `true`, `false`.
  late final pulumi.Output<bool> subscriptionDataTypeDdl;
  /// Whether to subscribe the DML type of data. Valid values: `true`, `false`.
  late final pulumi.Output<bool> subscriptionDataTypeDml;
  /// Subscription task type of network value: classic: classic Network. Virtual Private Cloud (vpc): a vpc. Valid values: `classic`, `vpc`.
  late final pulumi.Output<String?> subscriptionInstanceNetworkType;
  /// The ID of subscription vpc instance. When the value of `subscription_instance_network_type` is vpc, this parameter is available and must be passed in.
  late final pulumi.Output<String?> subscriptionInstanceVpcId;
  /// The ID of subscription VSwitch instance. When the value of `subscription_instance_network_type` is vpc, this parameter is available and must be passed in.
  late final pulumi.Output<String?> subscriptionInstanceVswitchId;
  /// The sync architecture. Valid values: `bidirectional`, `oneway`.
  late final pulumi.Output<String?> syncArchitecture;
  /// The synchronization direction. Valid values: `Forward`, `Reverse`. When the topology type of the data synchronization instance is bidirectional, it can be passed in to reverse to start the reverse synchronization link.
  late final pulumi.Output<String?> synchronizationDirection;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [SubscriptionJob].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SubscriptionJob]. {@macro pulumi_dts_subscription_job_subscription_job_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SubscriptionJob(
    String name, {
    SubscriptionJobArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:dts/subscriptionJob:SubscriptionJob',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    checkpoint = registerOutput<String>('checkpoint');
    computeUnit = registerOutput<int?>('computeUnit');
    databaseCount = registerOutput<int?>('databaseCount');
    dbList = registerOutput<String?>('dbList');
    delayNotice = registerOutput<bool?>('delayNotice');
    delayPhone = registerOutput<String?>('delayPhone');
    delayRuleTime = registerOutput<String?>('delayRuleTime');
    destinationEndpointEngineName = registerOutput<String?>('destinationEndpointEngineName');
    destinationRegion = registerOutput<String?>('destinationRegion');
    dtsInstanceId = registerOutput<String>('dtsInstanceId');
    dtsJobName = registerOutput<String?>('dtsJobName');
    errorNotice = registerOutput<bool?>('errorNotice');
    errorPhone = registerOutput<String?>('errorPhone');
    instanceClass = registerOutput<String?>('instanceClass');
    paymentDuration = registerOutput<int?>('paymentDuration');
    paymentDurationUnit = registerOutput<String?>('paymentDurationUnit');
    paymentType = registerOutput<String>('paymentType');
    reserve = registerOutput<String?>('reserve');
    sourceEndpointDatabaseName = registerOutput<String?>('sourceEndpointDatabaseName');
    sourceEndpointEngineName = registerOutput<String>('sourceEndpointEngineName');
    sourceEndpointInstanceId = registerOutput<String?>('sourceEndpointInstanceId');
    sourceEndpointInstanceType = registerOutput<String>('sourceEndpointInstanceType');
    sourceEndpointIp = registerOutput<String?>('sourceEndpointIp');
    sourceEndpointOracleSid = registerOutput<String?>('sourceEndpointOracleSid');
    sourceEndpointOwnerId = registerOutput<String?>('sourceEndpointOwnerId');
    sourceEndpointPassword = registerOutput<String?>('sourceEndpointPassword');
    sourceEndpointPort = registerOutput<String?>('sourceEndpointPort');
    sourceEndpointRegion = registerOutput<String>('sourceEndpointRegion');
    sourceEndpointRole = registerOutput<String?>('sourceEndpointRole');
    sourceEndpointUserName = registerOutput<String?>('sourceEndpointUserName');
    status = registerOutput<String>('status');
    subscriptionDataTypeDdl = registerOutput<bool>('subscriptionDataTypeDdl');
    subscriptionDataTypeDml = registerOutput<bool>('subscriptionDataTypeDml');
    subscriptionInstanceNetworkType = registerOutput<String?>('subscriptionInstanceNetworkType');
    subscriptionInstanceVpcId = registerOutput<String?>('subscriptionInstanceVpcId');
    subscriptionInstanceVswitchId = registerOutput<String?>('subscriptionInstanceVswitchId');
    syncArchitecture = registerOutput<String?>('syncArchitecture');
    synchronizationDirection = registerOutput<String?>('synchronizationDirection');
    tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [SubscriptionJob] resource's state with the given [name] and [id].
  static SubscriptionJob get(
    String name,
    pulumi.Input<String> id, {
    SubscriptionJobState? state,
  }) {
    return SubscriptionJob._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  SubscriptionJob._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:dts/subscriptionJob:SubscriptionJob',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    checkpoint = registerOutput<String>('checkpoint');
    computeUnit = registerOutput<int?>('computeUnit');
    databaseCount = registerOutput<int?>('databaseCount');
    dbList = registerOutput<String?>('dbList');
    delayNotice = registerOutput<bool?>('delayNotice');
    delayPhone = registerOutput<String?>('delayPhone');
    delayRuleTime = registerOutput<String?>('delayRuleTime');
    destinationEndpointEngineName = registerOutput<String?>('destinationEndpointEngineName');
    destinationRegion = registerOutput<String?>('destinationRegion');
    dtsInstanceId = registerOutput<String>('dtsInstanceId');
    dtsJobName = registerOutput<String?>('dtsJobName');
    errorNotice = registerOutput<bool?>('errorNotice');
    errorPhone = registerOutput<String?>('errorPhone');
    instanceClass = registerOutput<String?>('instanceClass');
    paymentDuration = registerOutput<int?>('paymentDuration');
    paymentDurationUnit = registerOutput<String?>('paymentDurationUnit');
    paymentType = registerOutput<String>('paymentType');
    reserve = registerOutput<String?>('reserve');
    sourceEndpointDatabaseName = registerOutput<String?>('sourceEndpointDatabaseName');
    sourceEndpointEngineName = registerOutput<String>('sourceEndpointEngineName');
    sourceEndpointInstanceId = registerOutput<String?>('sourceEndpointInstanceId');
    sourceEndpointInstanceType = registerOutput<String>('sourceEndpointInstanceType');
    sourceEndpointIp = registerOutput<String?>('sourceEndpointIp');
    sourceEndpointOracleSid = registerOutput<String?>('sourceEndpointOracleSid');
    sourceEndpointOwnerId = registerOutput<String?>('sourceEndpointOwnerId');
    sourceEndpointPassword = registerOutput<String?>('sourceEndpointPassword');
    sourceEndpointPort = registerOutput<String?>('sourceEndpointPort');
    sourceEndpointRegion = registerOutput<String>('sourceEndpointRegion');
    sourceEndpointRole = registerOutput<String?>('sourceEndpointRole');
    sourceEndpointUserName = registerOutput<String?>('sourceEndpointUserName');
    status = registerOutput<String>('status');
    subscriptionDataTypeDdl = registerOutput<bool>('subscriptionDataTypeDdl');
    subscriptionDataTypeDml = registerOutput<bool>('subscriptionDataTypeDml');
    subscriptionInstanceNetworkType = registerOutput<String?>('subscriptionInstanceNetworkType');
    subscriptionInstanceVpcId = registerOutput<String?>('subscriptionInstanceVpcId');
    subscriptionInstanceVswitchId = registerOutput<String?>('subscriptionInstanceVswitchId');
    syncArchitecture = registerOutput<String?>('syncArchitecture');
    synchronizationDirection = registerOutput<String?>('synchronizationDirection');
    tags = registerOutput<Map<String, String>?>('tags');
  }
}
