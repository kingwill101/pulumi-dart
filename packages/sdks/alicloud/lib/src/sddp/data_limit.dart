import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_limit_args.dart';
import 'data_limit_state.dart';

/// Provides a Data Security Center Data Limit resource.
///
/// For information about Data Security Center Data Limit and how to use it, see [What is Data Limit](https://www.alibabacloud.com/help/en/doc-detail/158987.html).
///
/// &gt; **NOTE:** Available since v1.159.0.
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
/// const name = config.get("name") || "tf_example";
/// const _default = alicloud.getRegions({
///     current: true,
/// });
/// const defaultGetZones = alicloud.rds.getZones({
///     engine: "MySQL",
///     engineVersion: "8.0",
///     instanceChargeType: "PostPaid",
///     category: "Basic",
///     dbInstanceStorageType: "cloud_essd",
/// });
/// const defaultGetInstanceClasses = defaultGetZones.then(defaultGetZones => alicloud.rds.getInstanceClasses({
///     zoneId: defaultGetZones.zones?.[0]?.id,
///     engine: "MySQL",
///     engineVersion: "8.0",
///     category: "Basic",
///     dbInstanceStorageType: "cloud_essd",
///     instanceChargeType: "PostPaid",
/// }));
/// const defaultNetwork = new alicloud.vpc.Network("default", {
///     vpcName: name,
///     cidrBlock: "10.4.0.0/16",
/// });
/// const defaultSwitch = new alicloud.vpc.Switch("default", {
///     vswitchName: name,
///     cidrBlock: "10.4.0.0/24",
///     vpcId: defaultNetwork.id,
///     zoneId: defaultGetZones.then(defaultGetZones => defaultGetZones.zones?.[0]?.id),
/// });
/// const defaultSecurityGroup = new alicloud.ecs.SecurityGroup("default", {
///     name: name,
///     vpcId: defaultNetwork.id,
/// });
/// const defaultInstance = new alicloud.rds.Instance("default", {
///     engine: "MySQL",
///     engineVersion: "8.0",
///     instanceType: defaultGetInstanceClasses.then(defaultGetInstanceClasses => defaultGetInstanceClasses.instanceClasses?.[0]?.instanceClass),
///     instanceStorage: defaultGetInstanceClasses.then(defaultGetInstanceClasses => defaultGetInstanceClasses.instanceClasses?.[0]?.storageRange?.min),
///     instanceChargeType: "Postpaid",
///     instanceName: name,
///     vswitchId: defaultSwitch.id,
///     monitoringPeriod: 60,
///     dbInstanceStorageType: "cloud_essd",
///     securityGroupIds: [defaultSecurityGroup.id],
/// });
/// const defaultRdsAccount = new alicloud.rds.RdsAccount("default", {
///     dbInstanceId: defaultInstance.id,
///     accountName: name,
///     accountPassword: "Example1234",
/// });
/// const defaultDatabase = new alicloud.rds.Database("default", {
///     instanceId: defaultInstance.id,
///     name: name,
/// });
/// const defaultAccountPrivilege = new alicloud.rds.AccountPrivilege("default", {
///     instanceId: defaultInstance.id,
///     accountName: defaultRdsAccount.accountName,
///     privilege: "ReadWrite",
///     dbNames: [defaultDatabase.name],
/// });
/// const defaultDataLimit = new alicloud.sddp.DataLimit("default", {
///     auditStatus: 0,
///     engineType: "MySQL",
///     parentId: std.joinOutput({
///         separator: ".",
///         input: [
///             defaultAccountPrivilege.instanceId,
///             defaultDatabase.name,
///         ],
///     }).apply(invoke => invoke.result),
///     resourceType: "RDS",
///     userName: defaultDatabase.name,
///     password: defaultRdsAccount.accountPassword,
///     port: 3306,
///     serviceRegionId: _default.then(_default => _default.regions?.[0]?.id),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_std as std
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "tf_example"
/// default = alicloud.get_regions(current=True)
/// default_get_zones = alicloud.rds.get_zones(engine="MySQL",
///     engine_version="8.0",
///     instance_charge_type="PostPaid",
///     category="Basic",
///     db_instance_storage_type="cloud_essd")
/// default_get_instance_classes = alicloud.rds.get_instance_classes(zone_id=default_get_zones.zones[0].id,
///     engine="MySQL",
///     engine_version="8.0",
///     category="Basic",
///     db_instance_storage_type="cloud_essd",
///     instance_charge_type="PostPaid")
/// default_network = alicloud.vpc.Network("default",
///     vpc_name=name,
///     cidr_block="10.4.0.0/16")
/// default_switch = alicloud.vpc.Switch("default",
///     vswitch_name=name,
///     cidr_block="10.4.0.0/24",
///     vpc_id=default_network.id,
///     zone_id=default_get_zones.zones[0].id)
/// default_security_group = alicloud.ecs.SecurityGroup("default",
///     name=name,
///     vpc_id=default_network.id)
/// default_instance = alicloud.rds.Instance("default",
///     engine="MySQL",
///     engine_version="8.0",
///     instance_type=default_get_instance_classes.instance_classes[0].instance_class,
///     instance_storage=default_get_instance_classes.instance_classes[0].storage_range.min,
///     instance_charge_type="Postpaid",
///     instance_name=name,
///     vswitch_id=default_switch.id,
///     monitoring_period=60,
///     db_instance_storage_type="cloud_essd",
///     security_group_ids=[default_security_group.id])
/// default_rds_account = alicloud.rds.RdsAccount("default",
///     db_instance_id=default_instance.id,
///     account_name=name,
///     account_password="Example1234")
/// default_database = alicloud.rds.Database("default",
///     instance_id=default_instance.id,
///     name=name)
/// default_account_privilege = alicloud.rds.AccountPrivilege("default",
///     instance_id=default_instance.id,
///     account_name=default_rds_account.account_name,
///     privilege="ReadWrite",
///     db_names=[default_database.name])
/// default_data_limit = alicloud.sddp.DataLimit("default",
///     audit_status=0,
///     engine_type="MySQL",
///     parent_id=std.join_output(separator=".",
///         input=[
///             default_account_privilege.instance_id,
///             default_database.name,
///         ]).apply(lambda invoke: invoke.result),
///     resource_type="RDS",
///     user_name=default_database.name,
///     password=default_rds_account.account_password,
///     port=3306,
///     service_region_id=default.regions[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "tf_example";
///     var @default = AliCloud.GetRegions.Invoke(new()
///     {
///         Current = true,
///     });
///
///     var defaultGetZones = AliCloud.Rds.GetZones.Invoke(new()
///     {
///         Engine = "MySQL",
///         EngineVersion = "8.0",
///         InstanceChargeType = "PostPaid",
///         Category = "Basic",
///         DbInstanceStorageType = "cloud_essd",
///     });
///
///     var defaultGetInstanceClasses = AliCloud.Rds.GetInstanceClasses.Invoke(new()
///     {
///         ZoneId = defaultGetZones.Apply(getZonesResult => getZonesResult.Zones[0]?.Id),
///         Engine = "MySQL",
///         EngineVersion = "8.0",
///         Category = "Basic",
///         DbInstanceStorageType = "cloud_essd",
///         InstanceChargeType = "PostPaid",
///     });
///
///     var defaultNetwork = new AliCloud.Vpc.Network("default", new()
///     {
///         VpcName = name,
///         CidrBlock = "10.4.0.0/16",
///     });
///
///     var defaultSwitch = new AliCloud.Vpc.Switch("default", new()
///     {
///         VswitchName = name,
///         CidrBlock = "10.4.0.0/24",
///         VpcId = defaultNetwork.Id,
///         ZoneId = defaultGetZones.Apply(getZonesResult => getZonesResult.Zones[0]?.Id),
///     });
///
///     var defaultSecurityGroup = new AliCloud.Ecs.SecurityGroup("default", new()
///     {
///         Name = name,
///         VpcId = defaultNetwork.Id,
///     });
///
///     var defaultInstance = new AliCloud.Rds.Instance("default", new()
///     {
///         Engine = "MySQL",
///         EngineVersion = "8.0",
///         InstanceType = defaultGetInstanceClasses.Apply(getInstanceClassesResult => getInstanceClassesResult.InstanceClasses[0]?.InstanceClass),
///         InstanceStorage = defaultGetInstanceClasses.Apply(getInstanceClassesResult => getInstanceClassesResult.InstanceClasses[0]?.StorageRange?.Min),
///         InstanceChargeType = "Postpaid",
///         InstanceName = name,
///         VswitchId = defaultSwitch.Id,
///         MonitoringPeriod = 60,
///         DbInstanceStorageType = "cloud_essd",
///         SecurityGroupIds = new[]
///         {
///             defaultSecurityGroup.Id,
///         },
///     });
///
///     var defaultRdsAccount = new AliCloud.Rds.RdsAccount("default", new()
///     {
///         DbInstanceId = defaultInstance.Id,
///         AccountName = name,
///         AccountPassword = "Example1234",
///     });
///
///     var defaultDatabase = new AliCloud.Rds.Database("default", new()
///     {
///         InstanceId = defaultInstance.Id,
///         Name = name,
///     });
///
///     var defaultAccountPrivilege = new AliCloud.Rds.AccountPrivilege("default", new()
///     {
///         InstanceId = defaultInstance.Id,
///         AccountName = defaultRdsAccount.AccountName,
///         Privilege = "ReadWrite",
///         DbNames = new[]
///         {
///             defaultDatabase.Name,
///         },
///     });
///
///     var defaultDataLimit = new AliCloud.Sddp.DataLimit("default", new()
///     {
///         AuditStatus = 0,
///         EngineType = "MySQL",
///         ParentId = Std.Join.Invoke(new()
///         {
///             Separator = ".",
///             Input = new[]
///             {
///                 defaultAccountPrivilege.InstanceId,
///                 defaultDatabase.Name,
///             },
///         }).Apply(invoke => invoke.Result),
///         ResourceType = "RDS",
///         UserName = defaultDatabase.Name,
///         Password = defaultRdsAccount.AccountPassword,
///         Port = 3306,
///         ServiceRegionId = @default.Apply(@default => @default.Apply(getRegionsResult => getRegionsResult.Regions[0]?.Id)),
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/rds"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/sddp"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "tf_example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_default, err := alicloud.GetRegions(ctx, &alicloud.GetRegionsArgs{
/// 			Current: pulumi.BoolRef(true),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetZones, err := rds.GetZones(ctx, &rds.GetZonesArgs{
/// 			Engine:                pulumi.StringRef("MySQL"),
/// 			EngineVersion:         pulumi.StringRef("8.0"),
/// 			InstanceChargeType:    pulumi.StringRef("PostPaid"),
/// 			Category:              pulumi.StringRef("Basic"),
/// 			DbInstanceStorageType: pulumi.StringRef("cloud_essd"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetInstanceClasses, err := rds.GetInstanceClasses(ctx, &rds.GetInstanceClassesArgs{
/// 			ZoneId:                pulumi.StringRef(defaultGetZones.Zones[0].Id),
/// 			Engine:                pulumi.StringRef("MySQL"),
/// 			EngineVersion:         pulumi.StringRef("8.0"),
/// 			Category:              pulumi.StringRef("Basic"),
/// 			DbInstanceStorageType: pulumi.StringRef("cloud_essd"),
/// 			InstanceChargeType:    pulumi.StringRef("PostPaid"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultNetwork, err := vpc.NewNetwork(ctx, "default", &vpc.NetworkArgs{
/// 			VpcName:   pulumi.String(name),
/// 			CidrBlock: pulumi.String("10.4.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSwitch, err := vpc.NewSwitch(ctx, "default", &vpc.SwitchArgs{
/// 			VswitchName: pulumi.String(name),
/// 			CidrBlock:   pulumi.String("10.4.0.0/24"),
/// 			VpcId:       defaultNetwork.ID(),
/// 			ZoneId:      pulumi.String(defaultGetZones.Zones[0].Id),
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
/// 		defaultInstance, err := rds.NewInstance(ctx, "default", &rds.InstanceArgs{
/// 			Engine:                pulumi.String("MySQL"),
/// 			EngineVersion:         pulumi.String("8.0"),
/// 			InstanceType:          pulumi.String(defaultGetInstanceClasses.InstanceClasses[0].InstanceClass),
/// 			InstanceStorage:       pulumi.String(defaultGetInstanceClasses.InstanceClasses[0].StorageRange.Min),
/// 			InstanceChargeType:    pulumi.String("Postpaid"),
/// 			InstanceName:          pulumi.String(name),
/// 			VswitchId:             defaultSwitch.ID(),
/// 			MonitoringPeriod:      pulumi.Int(60),
/// 			DbInstanceStorageType: pulumi.String("cloud_essd"),
/// 			SecurityGroupIds: pulumi.StringArray{
/// 				defaultSecurityGroup.ID(),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultRdsAccount, err := rds.NewRdsAccount(ctx, "default", &rds.RdsAccountArgs{
/// 			DbInstanceId:    defaultInstance.ID(),
/// 			AccountName:     pulumi.String(name),
/// 			AccountPassword: pulumi.String("Example1234"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultDatabase, err := rds.NewDatabase(ctx, "default", &rds.DatabaseArgs{
/// 			InstanceId: defaultInstance.ID(),
/// 			Name:       pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultAccountPrivilege, err := rds.NewAccountPrivilege(ctx, "default", &rds.AccountPrivilegeArgs{
/// 			InstanceId:  defaultInstance.ID(),
/// 			AccountName: defaultRdsAccount.AccountName,
/// 			Privilege:   pulumi.String("ReadWrite"),
/// 			DbNames: pulumi.StringArray{
/// 				defaultDatabase.Name,
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = sddp.NewDataLimit(ctx, "default", &sddp.DataLimitArgs{
/// 			AuditStatus: pulumi.Int(0),
/// 			EngineType:  pulumi.String("MySQL"),
/// 			ParentId: pulumi.String(std.JoinOutput(ctx, std.JoinOutputArgs{
/// 				Separator: pulumi.String("."),
/// 				Input: pulumi.StringArray{
/// 					defaultAccountPrivilege.InstanceId,
/// 					defaultDatabase.Name,
/// 				},
/// 			}, nil).ApplyT(func(invoke std.JoinResult) (*string, error) {
/// 				return invoke.Result, nil
/// 			}).(pulumi.StringPtrOutput)),
/// 			ResourceType:    pulumi.String("RDS"),
/// 			UserName:        defaultDatabase.Name,
/// 			Password:        defaultRdsAccount.AccountPassword,
/// 			Port:            pulumi.Int(3306),
/// 			ServiceRegionId: pulumi.String(_default.Regions[0].Id),
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
/// import com.pulumi.alicloud.sddp.DataLimit;
/// import com.pulumi.alicloud.sddp.DataLimitArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.JoinArgs;
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
///         final var name = config.get("name").orElse("tf_example");
///         final var default = AlicloudFunctions.getRegions(GetRegionsArgs.builder()
///             .current(true)
///             .build());
///
///         final var defaultGetZones = RdsFunctions.getZones(GetZonesArgs.builder()
///             .engine("MySQL")
///             .engineVersion("8.0")
///             .instanceChargeType("PostPaid")
///             .category("Basic")
///             .dbInstanceStorageType("cloud_essd")
///             .build());
///
///         final var defaultGetInstanceClasses = RdsFunctions.getInstanceClasses(GetInstanceClassesArgs.builder()
///             .zoneId(defaultGetZones.zones()[0].id())
///             .engine("MySQL")
///             .engineVersion("8.0")
///             .category("Basic")
///             .dbInstanceStorageType("cloud_essd")
///             .instanceChargeType("PostPaid")
///             .build());
///
///         var defaultNetwork = new Network("defaultNetwork", NetworkArgs.builder()
///             .vpcName(name)
///             .cidrBlock("10.4.0.0/16")
///             .build());
///
///         var defaultSwitch = new Switch("defaultSwitch", SwitchArgs.builder()
///             .vswitchName(name)
///             .cidrBlock("10.4.0.0/24")
///             .vpcId(defaultNetwork.id())
///             .zoneId(defaultGetZones.zones()[0].id())
///             .build());
///
///         var defaultSecurityGroup = new SecurityGroup("defaultSecurityGroup", SecurityGroupArgs.builder()
///             .name(name)
///             .vpcId(defaultNetwork.id())
///             .build());
///
///         var defaultInstance = new Instance("defaultInstance", InstanceArgs.builder()
///             .engine("MySQL")
///             .engineVersion("8.0")
///             .instanceType(defaultGetInstanceClasses.instanceClasses()[0].instanceClass())
///             .instanceStorage(defaultGetInstanceClasses.instanceClasses()[0].storageRange().min())
///             .instanceChargeType("Postpaid")
///             .instanceName(name)
///             .vswitchId(defaultSwitch.id())
///             .monitoringPeriod(60)
///             .dbInstanceStorageType("cloud_essd")
///             .securityGroupIds(defaultSecurityGroup.id())
///             .build());
///
///         var defaultRdsAccount = new RdsAccount("defaultRdsAccount", RdsAccountArgs.builder()
///             .dbInstanceId(defaultInstance.id())
///             .accountName(name)
///             .accountPassword("Example1234")
///             .build());
///
///         var defaultDatabase = new Database("defaultDatabase", DatabaseArgs.builder()
///             .instanceId(defaultInstance.id())
///             .name(name)
///             .build());
///
///         var defaultAccountPrivilege = new AccountPrivilege("defaultAccountPrivilege", AccountPrivilegeArgs.builder()
///             .instanceId(defaultInstance.id())
///             .accountName(defaultRdsAccount.accountName())
///             .privilege("ReadWrite")
///             .dbNames(defaultDatabase.name())
///             .build());
///
///         var defaultDataLimit = new DataLimit("defaultDataLimit", DataLimitArgs.builder()
///             .auditStatus(0)
///             .engineType("MySQL")
///             .parentId(StdFunctions.join(JoinArgs.builder()
///                 .separator(".")
///                 .input(
///                     defaultAccountPrivilege.instanceId(),
///                     defaultDatabase.name())
///                 .build()).applyValue(_invoke -> _invoke.result()))
///             .resourceType("RDS")
///             .userName(defaultDatabase.name())
///             .password(defaultRdsAccount.accountPassword())
///             .port(3306)
///             .serviceRegionId(default_.regions()[0].id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: tf_example
/// resources:
///   defaultNetwork:
///     type: alicloud:vpc:Network
///     name: default
///     properties:
///       vpcName: ${name}
///       cidrBlock: 10.4.0.0/16
///   defaultSwitch:
///     type: alicloud:vpc:Switch
///     name: default
///     properties:
///       vswitchName: ${name}
///       cidrBlock: 10.4.0.0/24
///       vpcId: ${defaultNetwork.id}
///       zoneId: ${defaultGetZones.zones[0].id}
///   defaultSecurityGroup:
///     type: alicloud:ecs:SecurityGroup
///     name: default
///     properties:
///       name: ${name}
///       vpcId: ${defaultNetwork.id}
///   defaultInstance:
///     type: alicloud:rds:Instance
///     name: default
///     properties:
///       engine: MySQL
///       engineVersion: '8.0'
///       instanceType: ${defaultGetInstanceClasses.instanceClasses[0].instanceClass}
///       instanceStorage: ${defaultGetInstanceClasses.instanceClasses[0].storageRange.min}
///       instanceChargeType: Postpaid
///       instanceName: ${name}
///       vswitchId: ${defaultSwitch.id}
///       monitoringPeriod: '60'
///       dbInstanceStorageType: cloud_essd
///       securityGroupIds:
///         - ${defaultSecurityGroup.id}
///   defaultRdsAccount:
///     type: alicloud:rds:RdsAccount
///     name: default
///     properties:
///       dbInstanceId: ${defaultInstance.id}
///       accountName: ${name}
///       accountPassword: Example1234
///   defaultDatabase:
///     type: alicloud:rds:Database
///     name: default
///     properties:
///       instanceId: ${defaultInstance.id}
///       name: ${name}
///   defaultAccountPrivilege:
///     type: alicloud:rds:AccountPrivilege
///     name: default
///     properties:
///       instanceId: ${defaultInstance.id}
///       accountName: ${defaultRdsAccount.accountName}
///       privilege: ReadWrite
///       dbNames:
///         - ${defaultDatabase.name}
///   defaultDataLimit:
///     type: alicloud:sddp:DataLimit
///     name: default
///     properties:
///       auditStatus: 0
///       engineType: MySQL
///       parentId:
///         fn::invoke:
///           function: std:join
///           arguments:
///             separator: .
///             input:
///               - ${defaultAccountPrivilege.instanceId}
///               - ${defaultDatabase.name}
///           return: result
///       resourceType: RDS
///       userName: ${defaultDatabase.name}
///       password: ${defaultRdsAccount.accountPassword}
///       port: 3306
///       serviceRegionId: ${default.regions[0].id}
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:getRegions
///       arguments:
///         current: true
///   defaultGetZones:
///     fn::invoke:
///       function: alicloud:rds:getZones
///       arguments:
///         engine: MySQL
///         engineVersion: '8.0'
///         instanceChargeType: PostPaid
///         category: Basic
///         dbInstanceStorageType: cloud_essd
///   defaultGetInstanceClasses:
///     fn::invoke:
///       function: alicloud:rds:getInstanceClasses
///       arguments:
///         zoneId: ${defaultGetZones.zones[0].id}
///         engine: MySQL
///         engineVersion: '8.0'
///         category: Basic
///         dbInstanceStorageType: cloud_essd
///         instanceChargeType: PostPaid
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Data Security Center Data Limit can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:sddp/dataLimit:DataLimit example <id>
/// ```
class DataLimit extends pulumi.CustomResource {
  /// Whether to enable the log auditing feature. Valid values: `0`, `1`.
  late final pulumi.Output<int> auditStatus;
  /// The type of the database. Valid values: `MySQL`, `SQLServer`.
  late final pulumi.Output<String?> engineType;
  /// The lang.
  late final pulumi.Output<String?> lang;
  /// The retention period of raw logs after you enable the log auditing feature. Unit: day. Valid values: `180`, `30`, `365`, `90`. **NOTE:** The`log_store_day` is valid when the `audit_status` is `1`.
  late final pulumi.Output<int?> logStoreDay;
  /// The ID of the data asset.
  late final pulumi.Output<String?> parentId;
  /// The password that is used to connect to the database.
  late final pulumi.Output<String?> password;
  /// The port that is used to connect to the database.
  late final pulumi.Output<int?> port;
  /// The type of the service to which the data asset belongs. Valid values: `MaxCompute`, `OSS`, `RDS`.
  late final pulumi.Output<String> resourceType;
  /// The region ID of the data asset.
  late final pulumi.Output<String?> serviceRegionId;
  /// The name of the service to which the data asset belongs.
  late final pulumi.Output<String?> userName;

  /// Creates a new [DataLimit].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DataLimit]. {@macro pulumi_sddp_data_limit_data_limit_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DataLimit(
    String name, {
    DataLimitArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:sddp/dataLimit:DataLimit',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    auditStatus = registerOutput<int>('auditStatus');
    engineType = registerOutput<String?>('engineType');
    lang = registerOutput<String?>('lang');
    logStoreDay = registerOutput<int?>('logStoreDay');
    parentId = registerOutput<String?>('parentId');
    password = registerOutput<String?>('password');
    port = registerOutput<int?>('port');
    resourceType = registerOutput<String>('resourceType');
    serviceRegionId = registerOutput<String?>('serviceRegionId');
    userName = registerOutput<String?>('userName');
  }

  /// Gets an existing [DataLimit] resource's state with the given [name] and [id].
  static DataLimit get(
    String name,
    pulumi.Input<String> id, {
    DataLimitState? state,
  }) {
    return DataLimit._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  DataLimit._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:sddp/dataLimit:DataLimit',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    auditStatus = registerOutput<int>('auditStatus');
    engineType = registerOutput<String?>('engineType');
    lang = registerOutput<String?>('lang');
    logStoreDay = registerOutput<int?>('logStoreDay');
    parentId = registerOutput<String?>('parentId');
    password = registerOutput<String?>('password');
    port = registerOutput<int?>('port');
    resourceType = registerOutput<String>('resourceType');
    serviceRegionId = registerOutput<String?>('serviceRegionId');
    userName = registerOutput<String?>('userName');
  }
}
