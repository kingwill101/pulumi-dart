import 'package:pulumi/pulumi.dart' as pulumi;
import 'enterprise_instance_args.dart';
import 'enterprise_instance_state.dart';

/// Provides a DMS Enterprise Instance resource.
///
/// &gt; **NOTE:** API users must first register in DMS.
///
/// &gt; **NOTE:** Available since v1.81.0.
///
/// ## Example Usage
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "tf-example";
/// const current = alicloud.getAccount({});
/// const _default = alicloud.getRegions({
///     current: true,
/// });
/// const defaultGetUserTenants = alicloud.dms.getUserTenants({
///     status: "ACTIVE",
/// });
/// const defaultGetZones = alicloud.rds.getZones({
///     engine: "MySQL",
///     engineVersion: "8.0",
///     instanceChargeType: "PostPaid",
///     category: "HighAvailability",
///     dbInstanceStorageType: "cloud_essd",
/// });
/// const defaultGetInstanceClasses = defaultGetZones.then(defaultGetZones => alicloud.rds.getInstanceClasses({
///     zoneId: defaultGetZones.zones?.[0]?.id,
///     engine: "MySQL",
///     engineVersion: "8.0",
///     category: "HighAvailability",
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
///     dbInstanceStorageType: "cloud_essd",
///     instanceType: defaultGetInstanceClasses.then(defaultGetInstanceClasses => defaultGetInstanceClasses.instanceClasses?.[0]?.instanceClass),
///     instanceStorage: defaultGetInstanceClasses.then(defaultGetInstanceClasses => defaultGetInstanceClasses.instanceClasses?.[0]?.storageRange?.min),
///     vswitchId: defaultSwitch.id,
///     instanceName: name,
///     securityIps: [
///         "100.104.5.0/24",
///         "192.168.0.6",
///     ],
///     tags: {
///         Created: "TF",
///         For: "example",
///     },
/// });
/// const defaultAccount = new alicloud.rds.Account("default", {
///     dbInstanceId: defaultInstance.id,
///     accountName: "tfexamplename",
///     accountPassword: "Example12345",
///     accountType: "Normal",
/// });
/// const defaultEnterpriseInstance = new alicloud.dms.EnterpriseInstance("default", {
///     tid: defaultGetUserTenants.then(defaultGetUserTenants => defaultGetUserTenants.ids?.[0]),
///     instanceType: "mysql",
///     instanceSource: "RDS",
///     networkType: "VPC",
///     envType: "dev",
///     host: defaultInstance.connectionString,
///     port: 3306,
///     databaseUser: defaultAccount.accountName,
///     databasePassword: defaultAccount.accountPassword,
///     instanceName: name,
///     dbaUid: current.then(current => current.id),
///     safeRule: "904496",
///     useDsql: 1,
///     queryTimeout: 60,
///     exportTimeout: 600,
///     ecsRegion: _default.then(_default => _default.regions?.[0]?.id),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "tf-example"
/// current = alicloud.get_account()
/// default = alicloud.get_regions(current=True)
/// default_get_user_tenants = alicloud.dms.get_user_tenants(status="ACTIVE")
/// default_get_zones = alicloud.rds.get_zones(engine="MySQL",
///     engine_version="8.0",
///     instance_charge_type="PostPaid",
///     category="HighAvailability",
///     db_instance_storage_type="cloud_essd")
/// default_get_instance_classes = alicloud.rds.get_instance_classes(zone_id=default_get_zones.zones[0].id,
///     engine="MySQL",
///     engine_version="8.0",
///     category="HighAvailability",
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
///     db_instance_storage_type="cloud_essd",
///     instance_type=default_get_instance_classes.instance_classes[0].instance_class,
///     instance_storage=default_get_instance_classes.instance_classes[0].storage_range.min,
///     vswitch_id=default_switch.id,
///     instance_name=name,
///     security_ips=[
///         "100.104.5.0/24",
///         "192.168.0.6",
///     ],
///     tags={
///         "Created": "TF",
///         "For": "example",
///     })
/// default_account = alicloud.rds.Account("default",
///     db_instance_id=default_instance.id,
///     account_name="tfexamplename",
///     account_password="Example12345",
///     account_type="Normal")
/// default_enterprise_instance = alicloud.dms.EnterpriseInstance("default",
///     tid=default_get_user_tenants.ids[0],
///     instance_type="mysql",
///     instance_source="RDS",
///     network_type="VPC",
///     env_type="dev",
///     host=default_instance.connection_string,
///     port=3306,
///     database_user=default_account.account_name,
///     database_password=default_account.account_password,
///     instance_name=name,
///     dba_uid=current.id,
///     safe_rule="904496",
///     use_dsql=1,
///     query_timeout=60,
///     export_timeout=600,
///     ecs_region=default.regions[0].id)
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
///     var name = config.Get("name") ?? "tf-example";
///     var current = AliCloud.GetAccount.Invoke();
///
///     var @default = AliCloud.GetRegions.Invoke(new()
///     {
///         Current = true,
///     });
///
///     var defaultGetUserTenants = AliCloud.Dms.GetUserTenants.Invoke(new()
///     {
///         Status = "ACTIVE",
///     });
///
///     var defaultGetZones = AliCloud.Rds.GetZones.Invoke(new()
///     {
///         Engine = "MySQL",
///         EngineVersion = "8.0",
///         InstanceChargeType = "PostPaid",
///         Category = "HighAvailability",
///         DbInstanceStorageType = "cloud_essd",
///     });
///
///     var defaultGetInstanceClasses = AliCloud.Rds.GetInstanceClasses.Invoke(new()
///     {
///         ZoneId = defaultGetZones.Apply(getZonesResult => getZonesResult.Zones[0]?.Id),
///         Engine = "MySQL",
///         EngineVersion = "8.0",
///         Category = "HighAvailability",
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
///         DbInstanceStorageType = "cloud_essd",
///         InstanceType = defaultGetInstanceClasses.Apply(getInstanceClassesResult => getInstanceClassesResult.InstanceClasses[0]?.InstanceClass),
///         InstanceStorage = defaultGetInstanceClasses.Apply(getInstanceClassesResult => getInstanceClassesResult.InstanceClasses[0]?.StorageRange?.Min),
///         VswitchId = defaultSwitch.Id,
///         InstanceName = name,
///         SecurityIps = new[]
///         {
///             "100.104.5.0/24",
///             "192.168.0.6",
///         },
///         Tags =
///         {
///             { "Created", "TF" },
///             { "For", "example" },
///         },
///     });
///
///     var defaultAccount = new AliCloud.Rds.Account("default", new()
///     {
///         DbInstanceId = defaultInstance.Id,
///         AccountName = "tfexamplename",
///         AccountPassword = "Example12345",
///         AccountType = "Normal",
///     });
///
///     var defaultEnterpriseInstance = new AliCloud.Dms.EnterpriseInstance("default", new()
///     {
///         Tid = defaultGetUserTenants.Apply(getUserTenantsResult => getUserTenantsResult.Ids[0]),
///         InstanceType = "mysql",
///         InstanceSource = "RDS",
///         NetworkType = "VPC",
///         EnvType = "dev",
///         Host = defaultInstance.ConnectionString,
///         Port = 3306,
///         DatabaseUser = defaultAccount.AccountName,
///         DatabasePassword = defaultAccount.AccountPassword,
///         InstanceName = name,
///         DbaUid = current.Apply(getAccountResult => getAccountResult.Id),
///         SafeRule = "904496",
///         UseDsql = 1,
///         QueryTimeout = 60,
///         ExportTimeout = 600,
///         EcsRegion = @default.Apply(@default => @default.Apply(getRegionsResult => getRegionsResult.Regions[0]?.Id)),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/dms"
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
/// 		name := "tf-example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		current, err := alicloud.GetAccount(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_default, err := alicloud.GetRegions(ctx, &alicloud.GetRegionsArgs{
/// 			Current: pulumi.BoolRef(true),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetUserTenants, err := dms.GetUserTenants(ctx, &dms.GetUserTenantsArgs{
/// 			Status: pulumi.StringRef("ACTIVE"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetZones, err := rds.GetZones(ctx, &rds.GetZonesArgs{
/// 			Engine:                pulumi.StringRef("MySQL"),
/// 			EngineVersion:         pulumi.StringRef("8.0"),
/// 			InstanceChargeType:    pulumi.StringRef("PostPaid"),
/// 			Category:              pulumi.StringRef("HighAvailability"),
/// 			DbInstanceStorageType: pulumi.StringRef("cloud_essd"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetInstanceClasses, err := rds.GetInstanceClasses(ctx, &rds.GetInstanceClassesArgs{
/// 			ZoneId:                pulumi.StringRef(defaultGetZones.Zones[0].Id),
/// 			Engine:                pulumi.StringRef("MySQL"),
/// 			EngineVersion:         pulumi.StringRef("8.0"),
/// 			Category:              pulumi.StringRef("HighAvailability"),
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
/// 		_, err = ecs.NewSecurityGroup(ctx, "default", &ecs.SecurityGroupArgs{
/// 			Name:  pulumi.String(name),
/// 			VpcId: defaultNetwork.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultInstance, err := rds.NewInstance(ctx, "default", &rds.InstanceArgs{
/// 			Engine:                pulumi.String("MySQL"),
/// 			EngineVersion:         pulumi.String("8.0"),
/// 			DbInstanceStorageType: pulumi.String("cloud_essd"),
/// 			InstanceType:          pulumi.String(defaultGetInstanceClasses.InstanceClasses[0].InstanceClass),
/// 			InstanceStorage:       pulumi.String(defaultGetInstanceClasses.InstanceClasses[0].StorageRange.Min),
/// 			VswitchId:             defaultSwitch.ID(),
/// 			InstanceName:          pulumi.String(name),
/// 			SecurityIps: pulumi.StringArray{
/// 				pulumi.String("100.104.5.0/24"),
/// 				pulumi.String("192.168.0.6"),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"Created": pulumi.String("TF"),
/// 				"For":     pulumi.String("example"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultAccount, err := rds.NewAccount(ctx, "default", &rds.AccountArgs{
/// 			DbInstanceId:    defaultInstance.ID(),
/// 			AccountName:     pulumi.String("tfexamplename"),
/// 			AccountPassword: pulumi.String("Example12345"),
/// 			AccountType:     pulumi.String("Normal"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = dms.NewEnterpriseInstance(ctx, "default", &dms.EnterpriseInstanceArgs{
/// 			Tid:              pulumi.String(defaultGetUserTenants.Ids[0]),
/// 			InstanceType:     pulumi.String("mysql"),
/// 			InstanceSource:   pulumi.String("RDS"),
/// 			NetworkType:      pulumi.String("VPC"),
/// 			EnvType:          pulumi.String("dev"),
/// 			Host:             defaultInstance.ConnectionString,
/// 			Port:             pulumi.Int(3306),
/// 			DatabaseUser:     defaultAccount.AccountName,
/// 			DatabasePassword: defaultAccount.AccountPassword,
/// 			InstanceName:     pulumi.String(name),
/// 			DbaUid:           pulumi.String(current.Id),
/// 			SafeRule:         pulumi.String("904496"),
/// 			UseDsql:          pulumi.Int(1),
/// 			QueryTimeout:     pulumi.Int(60),
/// 			ExportTimeout:    pulumi.Int(600),
/// 			EcsRegion:        pulumi.String(_default.Regions[0].Id),
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
/// import com.pulumi.alicloud.dms.DmsFunctions;
/// import com.pulumi.alicloud.dms.inputs.GetUserTenantsArgs;
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
/// import com.pulumi.alicloud.rds.Account;
/// import com.pulumi.alicloud.rds.AccountArgs;
/// import com.pulumi.alicloud.dms.EnterpriseInstance;
/// import com.pulumi.alicloud.dms.EnterpriseInstanceArgs;
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
///         final var name = config.get("name").orElse("tf-example");
///         final var current = AlicloudFunctions.getAccount(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         final var default = AlicloudFunctions.getRegions(GetRegionsArgs.builder()
///             .current(true)
///             .build());
///
///         final var defaultGetUserTenants = DmsFunctions.getUserTenants(GetUserTenantsArgs.builder()
///             .status("ACTIVE")
///             .build());
///
///         final var defaultGetZones = RdsFunctions.getZones(GetZonesArgs.builder()
///             .engine("MySQL")
///             .engineVersion("8.0")
///             .instanceChargeType("PostPaid")
///             .category("HighAvailability")
///             .dbInstanceStorageType("cloud_essd")
///             .build());
///
///         final var defaultGetInstanceClasses = RdsFunctions.getInstanceClasses(GetInstanceClassesArgs.builder()
///             .zoneId(defaultGetZones.zones()[0].id())
///             .engine("MySQL")
///             .engineVersion("8.0")
///             .category("HighAvailability")
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
///             .dbInstanceStorageType("cloud_essd")
///             .instanceType(defaultGetInstanceClasses.instanceClasses()[0].instanceClass())
///             .instanceStorage(defaultGetInstanceClasses.instanceClasses()[0].storageRange().min())
///             .vswitchId(defaultSwitch.id())
///             .instanceName(name)
///             .securityIps(
///                 "100.104.5.0/24",
///                 "192.168.0.6")
///             .tags(Map.ofEntries(
///                 Map.entry("Created", "TF"),
///                 Map.entry("For", "example")
///             ))
///             .build());
///
///         var defaultAccount = new Account("defaultAccount", AccountArgs.builder()
///             .dbInstanceId(defaultInstance.id())
///             .accountName("tfexamplename")
///             .accountPassword("Example12345")
///             .accountType("Normal")
///             .build());
///
///         var defaultEnterpriseInstance = new EnterpriseInstance("defaultEnterpriseInstance", EnterpriseInstanceArgs.builder()
///             .tid(defaultGetUserTenants.ids()[0])
///             .instanceType("mysql")
///             .instanceSource("RDS")
///             .networkType("VPC")
///             .envType("dev")
///             .host(defaultInstance.connectionString())
///             .port(3306)
///             .databaseUser(defaultAccount.accountName())
///             .databasePassword(defaultAccount.accountPassword())
///             .instanceName(name)
///             .dbaUid(current.id())
///             .safeRule("904496")
///             .useDsql(1)
///             .queryTimeout(60)
///             .exportTimeout(600)
///             .ecsRegion(default_.regions()[0].id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: tf-example
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
///       dbInstanceStorageType: cloud_essd
///       instanceType: ${defaultGetInstanceClasses.instanceClasses[0].instanceClass}
///       instanceStorage: ${defaultGetInstanceClasses.instanceClasses[0].storageRange.min}
///       vswitchId: ${defaultSwitch.id}
///       instanceName: ${name}
///       securityIps:
///         - 100.104.5.0/24
///         - 192.168.0.6
///       tags:
///         Created: TF
///         For: example
///   defaultAccount:
///     type: alicloud:rds:Account
///     name: default
///     properties:
///       dbInstanceId: ${defaultInstance.id}
///       accountName: tfexamplename
///       accountPassword: Example12345
///       accountType: Normal
///   defaultEnterpriseInstance:
///     type: alicloud:dms:EnterpriseInstance
///     name: default
///     properties:
///       tid: ${defaultGetUserTenants.ids[0]}
///       instanceType: mysql
///       instanceSource: RDS
///       networkType: VPC
///       envType: dev
///       host: ${defaultInstance.connectionString}
///       port: 3306
///       databaseUser: ${defaultAccount.accountName}
///       databasePassword: ${defaultAccount.accountPassword}
///       instanceName: ${name}
///       dbaUid: ${current.id}
///       safeRule: '904496'
///       useDsql: 1
///       queryTimeout: 60
///       exportTimeout: 600
///       ecsRegion: ${default.regions[0].id}
/// variables:
///   current:
///     fn::invoke:
///       function: alicloud:getAccount
///       arguments: {}
///   default:
///     fn::invoke:
///       function: alicloud:getRegions
///       arguments:
///         current: true
///   defaultGetUserTenants:
///     fn::invoke:
///       function: alicloud:dms:getUserTenants
///       arguments:
///         status: ACTIVE
///   defaultGetZones:
///     fn::invoke:
///       function: alicloud:rds:getZones
///       arguments:
///         engine: MySQL
///         engineVersion: '8.0'
///         instanceChargeType: PostPaid
///         category: HighAvailability
///         dbInstanceStorageType: cloud_essd
///   defaultGetInstanceClasses:
///     fn::invoke:
///       function: alicloud:rds:getInstanceClasses
///       arguments:
///         zoneId: ${defaultGetZones.zones[0].id}
///         engine: MySQL
///         engineVersion: '8.0'
///         category: HighAvailability
///         dbInstanceStorageType: cloud_essd
///         instanceChargeType: PostPaid
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// DMS Enterprise can be imported using host and port, e.g.
///
/// ```sh
/// $ pulumi import alicloud:dms/enterpriseInstance:EnterpriseInstance example rm-uf648hgs7874xxxx.mysql.rds.aliyuncs.com:3306
/// ```
class EnterpriseInstance extends pulumi.CustomResource {
  /// Cross-database query datalink name.
  late final pulumi.Output<String> dataLinkName;
  /// Database access password.
  late final pulumi.Output<String> databasePassword;
  /// Database access account.
  late final pulumi.Output<String> databaseUser;
  /// The dba id of the database instance.
  late final pulumi.Output<String> dbaId;
  /// The instance dba nickname.
  late final pulumi.Output<String> dbaNickName;
  /// The DBA of the instance is passed into the Alibaba Cloud uid of the DBA.
  late final pulumi.Output<int> dbaUid;
  /// Whether to use online services, currently only supports MySQL and PolarDB. Valid values: `0` Not used, `1` Native online DDL priority, `2` DMS lock-free table structure change priority.
  late final pulumi.Output<int?> ddlOnline;
  /// ECS instance ID. The value of InstanceSource is the ECS self-built library. This value must be passed.
  late final pulumi.Output<String> ecsInstanceId;
  /// The region where the instance is located. This value must be passed when the value of InstanceSource is RDS, ECS self-built library, and VPC dedicated line IDC.
  late final pulumi.Output<String?> ecsRegion;
  /// Environment type. Valid values: `product` production environment, `dev` development environment, `pre` pre-release environment, `test` test environment, `sit` SIT environment, `uat` UAT environment, `pet` pressure test environment, `stag` STAG environment.
  late final pulumi.Output<String> envType;
  /// Export timeout, unit: s (seconds).
  late final pulumi.Output<int> exportTimeout;
  /// Host address of the target database.
  late final pulumi.Output<String> host;
  /// Field `instance_alias` has been deprecated from version 1.100.0. Use `instance_name` instead.
  late final pulumi.Output<String> instanceAlias;
  /// The instance id of the database instance.
  late final pulumi.Output<String> instanceId;
  /// Instance name, to help users quickly distinguish positioning.
  late final pulumi.Output<String> instanceName;
  /// The source of the database instance. Valid values: `PUBLIC_OWN`, `RDS`, `ECS_OWN`, `VPC_IDC`.
  late final pulumi.Output<String> instanceSource;
  /// Database type. Valid values: `MySQL`, `SQLServer`, `PostgreSQL`, `Oracle,` `DRDS`, `OceanBase`, `Mongo`, `Redis`.
  late final pulumi.Output<String> instanceType;
  /// Network type. Valid values: `CLASSIC`, `VPC`.
  late final pulumi.Output<String> networkType;
  /// Access port of the target database.
  late final pulumi.Output<int> port;
  /// Query timeout time, unit: s (seconds).
  late final pulumi.Output<int> queryTimeout;
  /// The security rule of the instance is passed into the name of the security rule in the enterprise.
  late final pulumi.Output<String> safeRule;
  /// The safe rule id of the database instance.
  late final pulumi.Output<String> safeRuleId;
  /// The SID. This value must be passed when InstanceType is PostgreSQL or Oracle.
  late final pulumi.Output<String?> sid;
  /// Whether the instance ignores test connectivity. Valid values: `true`, `false`.
  late final pulumi.Output<bool?> skipTest;
  /// It has been deprecated from provider version 1.100.0 and 'status' instead.
  late final pulumi.Output<String> state;
  /// The instance status.
  late final pulumi.Output<String> status;
  /// The tenant ID.
  late final pulumi.Output<int?> tid;
  /// Whether to enable cross-instance query. Valid values: `0` not open, `1` open.
  late final pulumi.Output<int> useDsql;
  /// VPC ID. This value must be passed when the value of InstanceSource is VPC dedicated line IDC.
  late final pulumi.Output<String?> vpcId;

  /// Creates a new [EnterpriseInstance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EnterpriseInstance]. {@macro pulumi_dms_enterprise_instance_enterprise_instance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EnterpriseInstance(
    String name, {
    EnterpriseInstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:dms/enterpriseInstance:EnterpriseInstance',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    dataLinkName = registerOutput<String>('dataLinkName');
    databasePassword = registerOutput<String>('databasePassword');
    databaseUser = registerOutput<String>('databaseUser');
    dbaId = registerOutput<String>('dbaId');
    dbaNickName = registerOutput<String>('dbaNickName');
    dbaUid = registerOutput<int>('dbaUid');
    ddlOnline = registerOutput<int?>('ddlOnline');
    ecsInstanceId = registerOutput<String>('ecsInstanceId');
    ecsRegion = registerOutput<String?>('ecsRegion');
    envType = registerOutput<String>('envType');
    exportTimeout = registerOutput<int>('exportTimeout');
    host = registerOutput<String>('host');
    instanceAlias = registerOutput<String>('instanceAlias');
    instanceId = registerOutput<String>('instanceId');
    instanceName = registerOutput<String>('instanceName');
    instanceSource = registerOutput<String>('instanceSource');
    instanceType = registerOutput<String>('instanceType');
    networkType = registerOutput<String>('networkType');
    port = registerOutput<int>('port');
    queryTimeout = registerOutput<int>('queryTimeout');
    safeRule = registerOutput<String>('safeRule');
    safeRuleId = registerOutput<String>('safeRuleId');
    sid = registerOutput<String?>('sid');
    skipTest = registerOutput<bool?>('skipTest');
    state = registerOutput<String>('state');
    status = registerOutput<String>('status');
    tid = registerOutput<int?>('tid');
    useDsql = registerOutput<int>('useDsql');
    vpcId = registerOutput<String?>('vpcId');
  }

  /// Gets an existing [EnterpriseInstance] resource's state with the given [name] and [id].
  static EnterpriseInstance get(
    String name,
    pulumi.Input<String> id, {
    EnterpriseInstanceState? state,
  }) {
    return EnterpriseInstance._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  EnterpriseInstance._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:dms/enterpriseInstance:EnterpriseInstance',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    dataLinkName = registerOutput<String>('dataLinkName');
    databasePassword = registerOutput<String>('databasePassword');
    databaseUser = registerOutput<String>('databaseUser');
    dbaId = registerOutput<String>('dbaId');
    dbaNickName = registerOutput<String>('dbaNickName');
    dbaUid = registerOutput<int>('dbaUid');
    ddlOnline = registerOutput<int?>('ddlOnline');
    ecsInstanceId = registerOutput<String>('ecsInstanceId');
    ecsRegion = registerOutput<String?>('ecsRegion');
    envType = registerOutput<String>('envType');
    exportTimeout = registerOutput<int>('exportTimeout');
    host = registerOutput<String>('host');
    instanceAlias = registerOutput<String>('instanceAlias');
    instanceId = registerOutput<String>('instanceId');
    instanceName = registerOutput<String>('instanceName');
    instanceSource = registerOutput<String>('instanceSource');
    instanceType = registerOutput<String>('instanceType');
    networkType = registerOutput<String>('networkType');
    port = registerOutput<int>('port');
    queryTimeout = registerOutput<int>('queryTimeout');
    safeRule = registerOutput<String>('safeRule');
    safeRuleId = registerOutput<String>('safeRuleId');
    sid = registerOutput<String?>('sid');
    skipTest = registerOutput<bool?>('skipTest');
    this.state = registerOutput<String>('state');
    status = registerOutput<String>('status');
    tid = registerOutput<int?>('tid');
    useDsql = registerOutput<int>('useDsql');
    vpcId = registerOutput<String?>('vpcId');
  }
}
