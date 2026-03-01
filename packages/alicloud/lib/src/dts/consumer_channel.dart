import 'package:pulumi/pulumi.dart' as pulumi;
import 'consumer_channel_args.dart';

/// Provides a DTS Consumer Channel resource.
///
/// For information about DTS Consumer Channel and how to use it, see [What is Consumer Channel](https://www.alibabacloud.com/help/en/doc-detail/264593.htm).
///
/// > **NOTE:** Available since v1.146.0.
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
///     accountName: "example_name",
///     accountPassword: "example_1234",
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
///     dbList: pulumi.interpolate`{"${exampleDatabase.name}":{"name":"${exampleDatabase.name}","all":true}}`,
///     subscriptionInstanceNetworkType: "vpc",
///     subscriptionInstanceVpcId: exampleNetwork.id,
///     subscriptionInstanceVswitchId: exampleSwitch.id,
///     status: "Normal",
/// });
/// const exampleConsumerChannel = new alicloud.dts.ConsumerChannel("example", {
///     dtsInstanceId: exampleSubscriptionJob.dtsInstanceId,
///     consumerGroupName: name,
///     consumerGroupUserName: "example",
///     consumerGroupPassword: "example1234",
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
///     account_name="example_name",
///     account_password="example_1234")
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
///     db_list=pulumi.Output.all(
///         exampleDatabaseName=example_database.name,
///         exampleDatabaseName1=example_database.name
/// ).apply(lambda resolved_outputs: f"{{\"{resolved_outputs['exampleDatabaseName']}\":{{\"name\":\"{resolved_outputs['exampleDatabaseName1']}\",\"all\":true}}}}")
/// ,
///     subscription_instance_network_type="vpc",
///     subscription_instance_vpc_id=example_network.id,
///     subscription_instance_vswitch_id=example_switch.id,
///     status="Normal")
/// example_consumer_channel = alicloud.dts.ConsumerChannel("example",
///     dts_instance_id=example_subscription_job.dts_instance_id,
///     consumer_group_name=name,
///     consumer_group_user_name="example",
///     consumer_group_password="example1234")
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
///         AccountName = "example_name",
///         AccountPassword = "example_1234",
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
///         DbList = Output.Tuple(exampleDatabase.Name, exampleDatabase.Name).Apply(values =>
///         {
///             var exampleDatabaseName = values.Item1;
///             var exampleDatabaseName1 = values.Item2;
///             return $"{{\"{exampleDatabaseName}\":{{\"name\":\"{exampleDatabaseName1}\",\"all\":true}}}}";
///         }),
///         SubscriptionInstanceNetworkType = "vpc",
///         SubscriptionInstanceVpcId = exampleNetwork.Id,
///         SubscriptionInstanceVswitchId = exampleSwitch.Id,
///         Status = "Normal",
///     });
///
///     var exampleConsumerChannel = new AliCloud.Dts.ConsumerChannel("example", new()
///     {
///         DtsInstanceId = exampleSubscriptionJob.DtsInstanceId,
///         ConsumerGroupName = name,
///         ConsumerGroupUserName = "example",
///         ConsumerGroupPassword = "example1234",
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
/// 			AccountName:     pulumi.String("example_name"),
/// 			AccountPassword: pulumi.String("example_1234"),
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
/// 		exampleSubscriptionJob, err := dts.NewSubscriptionJob(ctx, "example", &dts.SubscriptionJobArgs{
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
/// 				return fmt.Sprintf("{\"%v\":{\"name\":\"%v\",\"all\":true}}", exampleDatabaseName, exampleDatabaseName1), nil
/// 			}).(pulumi.StringOutput),
/// 			SubscriptionInstanceNetworkType: pulumi.String("vpc"),
/// 			SubscriptionInstanceVpcId:       exampleNetwork.ID(),
/// 			SubscriptionInstanceVswitchId:   exampleSwitch.ID(),
/// 			Status:                          pulumi.String("Normal"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = dts.NewConsumerChannel(ctx, "example", &dts.ConsumerChannelArgs{
/// 			DtsInstanceId:         exampleSubscriptionJob.DtsInstanceId,
/// 			ConsumerGroupName:     pulumi.String(name),
/// 			ConsumerGroupUserName: pulumi.String("example"),
/// 			ConsumerGroupPassword: pulumi.String("example1234"),
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
/// import com.pulumi.alicloud.dts.ConsumerChannel;
/// import com.pulumi.alicloud.dts.ConsumerChannelArgs;
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
///             .accountName("example_name")
///             .accountPassword("example_1234")
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
///                 return String.format("{{\"%s\":{{\"name\":\"%s\",\"all\":true}}}}", exampleDatabaseName,exampleDatabaseName1);
///             }))
///             .subscriptionInstanceNetworkType("vpc")
///             .subscriptionInstanceVpcId(exampleNetwork.id())
///             .subscriptionInstanceVswitchId(exampleSwitch.id())
///             .status("Normal")
///             .build());
///
///         var exampleConsumerChannel = new ConsumerChannel("exampleConsumerChannel", ConsumerChannelArgs.builder()
///             .dtsInstanceId(exampleSubscriptionJob.dtsInstanceId())
///             .consumerGroupName(name)
///             .consumerGroupUserName("example")
///             .consumerGroupPassword("example1234")
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
///       accountName: example_name
///       accountPassword: example_1234
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
///       dbList: '{"${exampleDatabase.name}":{"name":"${exampleDatabase.name}","all":true}}'
///       subscriptionInstanceNetworkType: vpc
///       subscriptionInstanceVpcId: ${exampleNetwork.id}
///       subscriptionInstanceVswitchId: ${exampleSwitch.id}
///       status: Normal
///   exampleConsumerChannel:
///     type: alicloud:dts:ConsumerChannel
///     name: example
///     properties:
///       dtsInstanceId: ${exampleSubscriptionJob.dtsInstanceId}
///       consumerGroupName: ${name}
///       consumerGroupUserName: example
///       consumerGroupPassword: example1234
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
/// DTS Consumer Channel can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:dts/consumerChannel:ConsumerChannel example <dts_instance_id>:<consumer_group_id>
/// ```
class ConsumerChannel extends pulumi.CustomResource {
  /// The ID of the consumer group.
  late final pulumi.Output<String> consumerGroupId;
  /// The name of the consumer group.
  late final pulumi.Output<String> consumerGroupName;
  /// The password of the consumer group account. The length of the `consumer_group_password` is limited to `8` to `32` characters. It can contain two or more of the following characters: uppercase letters, lowercase letters, digits, and special characters.
  late final pulumi.Output<String> consumerGroupPassword;
  /// The username of the consumer group. The length of the `consumer_group_user_name` is limited to `1` to `16` characters. It can contain one or more of the following characters: uppercase letters, lowercase letters, digits, and underscores (_).
  late final pulumi.Output<String> consumerGroupUserName;
  /// The ID of the subscription instance.
  late final pulumi.Output<String> dtsInstanceId;

  /// Creates a new [ConsumerChannel].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ConsumerChannel]. {@macro pulumi_dts_consumer_channel_consumer_channel_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ConsumerChannel(
    String name, {
    ConsumerChannelArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:dts/consumerChannel:ConsumerChannel',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.consumerGroupId = registerOutput<String>('consumerGroupId');
    this.consumerGroupName = registerOutput<String>('consumerGroupName');
    this.consumerGroupPassword = registerOutput<String>('consumerGroupPassword');
    this.consumerGroupUserName = registerOutput<String>('consumerGroupUserName');
    this.dtsInstanceId = registerOutput<String>('dtsInstanceId');
  }
}
