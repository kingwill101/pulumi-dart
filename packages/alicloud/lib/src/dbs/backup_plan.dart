import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_plan_args.dart';

/// Provides a DBS Backup Plan resource.
///
/// For information about DBS Backup Plan and how to use it, see [What is Backup Plan](https://www.alibabacloud.com/help/en/dms/developer-reference/api-dbs-2019-03-06-createandstartbackupplan).
///
/// > **NOTE:** Available since v1.185.0.
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
/// const _default = alicloud.resourcemanager.getResourceGroups({
///     status: "OK",
/// });
/// const defaultGetZones = alicloud.rds.getZones({
///     engine: "MySQL",
///     engineVersion: "8.0",
///     instanceChargeType: "PostPaid",
///     category: "HighAvailability",
///     dbInstanceStorageType: "cloud_essd",
/// });
/// const defaultGetInstanceClasses = defaultGetZones.then(defaultGetZones => alicloud.rds.getInstanceClasses({
///     zoneId: defaultGetZones.zones?.[1]?.id,
///     engine: "MySQL",
///     engineVersion: "8.0",
///     category: "HighAvailability",
///     dbInstanceStorageType: "cloud_essd",
///     instanceChargeType: "PostPaid",
/// }));
/// const defaultGetNetworks = alicloud.vpc.getNetworks({
///     nameRegex: "^default-NODELETING",
/// });
/// const defaultGetSwitches = Promise.all([defaultGetNetworks, defaultGetZones]).then(([defaultGetNetworks, defaultGetZones]) => alicloud.vpc.getSwitches({
///     vpcId: defaultGetNetworks.ids?.[0],
///     zoneId: defaultGetZones.zones?.[1]?.id,
/// }));
/// const vswitchId = defaultGetSwitches.then(defaultGetSwitches => defaultGetSwitches.ids?.[0]);
/// const zoneId = defaultGetZones.then(defaultGetZones => defaultGetZones.ids?.[1]);
/// const defaultSecurityGroup = new alicloud.ecs.SecurityGroup("default", {
///     name: name,
///     vpcId: defaultGetNetworks.then(defaultGetNetworks => defaultGetNetworks.ids?.[0]),
/// });
/// const defaultInstance = new alicloud.rds.Instance("default", {
///     engine: "MySQL",
///     engineVersion: "8.0",
///     dbInstanceStorageType: "cloud_essd",
///     instanceType: defaultGetInstanceClasses.then(defaultGetInstanceClasses => defaultGetInstanceClasses.instanceClasses?.[0]?.instanceClass),
///     instanceStorage: defaultGetInstanceClasses.then(defaultGetInstanceClasses => defaultGetInstanceClasses.instanceClasses?.[0]?.storageRange?.min),
///     vswitchId: vswitchId,
///     instanceName: name,
/// });
/// const defaultDatabase = new alicloud.rds.Database("default", {
///     instanceId: defaultInstance.id,
///     name: "tfdatabase",
/// });
/// const defaultRdsAccount = new alicloud.rds.RdsAccount("default", {
///     dbInstanceId: defaultInstance.id,
///     accountName: "tfnormal000",
///     accountPassword: "Test12345",
/// });
/// const defaultAccountPrivilege = new alicloud.rds.AccountPrivilege("default", {
///     instanceId: defaultInstance.id,
///     accountName: defaultRdsAccount.accountName,
///     privilege: "ReadWrite",
///     dbNames: [defaultDatabase.name],
/// });
/// const defaultBackupPlan = new alicloud.dbs.BackupPlan("default", {
///     backupPlanName: name,
///     paymentType: "PayAsYouGo",
///     instanceClass: "xlarge",
///     backupMethod: "logical",
///     databaseType: "MySQL",
///     databaseRegion: "cn-hangzhou",
///     storageRegion: "cn-hangzhou",
///     instanceType: "RDS",
///     sourceEndpointInstanceType: "RDS",
///     resourceGroupId: _default.then(_default => _default.ids?.[0]),
///     sourceEndpointRegion: "cn-hangzhou",
///     sourceEndpointInstanceId: defaultInstance.id,
///     sourceEndpointUserName: defaultAccountPrivilege.accountName,
///     sourceEndpointPassword: defaultRdsAccount.accountPassword,
///     backupObjects: pulumi.interpolate`[{"DBName":"${defaultDatabase.name}"}]`,
///     backupPeriod: "Monday",
///     backupStartTime: "14:22",
///     backupStorageType: "system",
///     backupRetentionPeriod: 740,
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
/// default = alicloud.resourcemanager.get_resource_groups(status="OK")
/// default_get_zones = alicloud.rds.get_zones(engine="MySQL",
///     engine_version="8.0",
///     instance_charge_type="PostPaid",
///     category="HighAvailability",
///     db_instance_storage_type="cloud_essd")
/// default_get_instance_classes = alicloud.rds.get_instance_classes(zone_id=default_get_zones.zones[1].id,
///     engine="MySQL",
///     engine_version="8.0",
///     category="HighAvailability",
///     db_instance_storage_type="cloud_essd",
///     instance_charge_type="PostPaid")
/// default_get_networks = alicloud.vpc.get_networks(name_regex="^default-NODELETING")
/// default_get_switches = alicloud.vpc.get_switches(vpc_id=default_get_networks.ids[0],
///     zone_id=default_get_zones.zones[1].id)
/// vswitch_id = default_get_switches.ids[0]
/// zone_id = default_get_zones.ids[1]
/// default_security_group = alicloud.ecs.SecurityGroup("default",
///     name=name,
///     vpc_id=default_get_networks.ids[0])
/// default_instance = alicloud.rds.Instance("default",
///     engine="MySQL",
///     engine_version="8.0",
///     db_instance_storage_type="cloud_essd",
///     instance_type=default_get_instance_classes.instance_classes[0].instance_class,
///     instance_storage=default_get_instance_classes.instance_classes[0].storage_range.min,
///     vswitch_id=vswitch_id,
///     instance_name=name)
/// default_database = alicloud.rds.Database("default",
///     instance_id=default_instance.id,
///     name="tfdatabase")
/// default_rds_account = alicloud.rds.RdsAccount("default",
///     db_instance_id=default_instance.id,
///     account_name="tfnormal000",
///     account_password="Test12345")
/// default_account_privilege = alicloud.rds.AccountPrivilege("default",
///     instance_id=default_instance.id,
///     account_name=default_rds_account.account_name,
///     privilege="ReadWrite",
///     db_names=[default_database.name])
/// default_backup_plan = alicloud.dbs.BackupPlan("default",
///     backup_plan_name=name,
///     payment_type="PayAsYouGo",
///     instance_class="xlarge",
///     backup_method="logical",
///     database_type="MySQL",
///     database_region="cn-hangzhou",
///     storage_region="cn-hangzhou",
///     instance_type="RDS",
///     source_endpoint_instance_type="RDS",
///     resource_group_id=default.ids[0],
///     source_endpoint_region="cn-hangzhou",
///     source_endpoint_instance_id=default_instance.id,
///     source_endpoint_user_name=default_account_privilege.account_name,
///     source_endpoint_password=default_rds_account.account_password,
///     backup_objects=default_database.name.apply(lambda name: f"[{{\"DBName\":\"{name}\"}}]"),
///     backup_period="Monday",
///     backup_start_time="14:22",
///     backup_storage_type="system",
///     backup_retention_period=740)
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
///     var @default = AliCloud.ResourceManager.GetResourceGroups.Invoke(new()
///     {
///         Status = "OK",
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
///         ZoneId = defaultGetZones.Apply(getZonesResult => getZonesResult.Zones[1]?.Id),
///         Engine = "MySQL",
///         EngineVersion = "8.0",
///         Category = "HighAvailability",
///         DbInstanceStorageType = "cloud_essd",
///         InstanceChargeType = "PostPaid",
///     });
///
///     var defaultGetNetworks = AliCloud.Vpc.GetNetworks.Invoke(new()
///     {
///         NameRegex = "^default-NODELETING",
///     });
///
///     var defaultGetSwitches = AliCloud.Vpc.GetSwitches.Invoke(new()
///     {
///         VpcId = defaultGetNetworks.Apply(getNetworksResult => getNetworksResult.Ids[0]),
///         ZoneId = defaultGetZones.Apply(getZonesResult => getZonesResult.Zones[1]?.Id),
///     });
///
///     var vswitchId = defaultGetSwitches.Apply(getSwitchesResult => getSwitchesResult.Ids[0]);
///
///     var zoneId = defaultGetZones.Apply(getZonesResult => getZonesResult.Ids[1]);
///
///     var defaultSecurityGroup = new AliCloud.Ecs.SecurityGroup("default", new()
///     {
///         Name = name,
///         VpcId = defaultGetNetworks.Apply(getNetworksResult => getNetworksResult.Ids[0]),
///     });
///
///     var defaultInstance = new AliCloud.Rds.Instance("default", new()
///     {
///         Engine = "MySQL",
///         EngineVersion = "8.0",
///         DbInstanceStorageType = "cloud_essd",
///         InstanceType = defaultGetInstanceClasses.Apply(getInstanceClassesResult => getInstanceClassesResult.InstanceClasses[0]?.InstanceClass),
///         InstanceStorage = defaultGetInstanceClasses.Apply(getInstanceClassesResult => getInstanceClassesResult.InstanceClasses[0]?.StorageRange?.Min),
///         VswitchId = vswitchId,
///         InstanceName = name,
///     });
///
///     var defaultDatabase = new AliCloud.Rds.Database("default", new()
///     {
///         InstanceId = defaultInstance.Id,
///         Name = "tfdatabase",
///     });
///
///     var defaultRdsAccount = new AliCloud.Rds.RdsAccount("default", new()
///     {
///         DbInstanceId = defaultInstance.Id,
///         AccountName = "tfnormal000",
///         AccountPassword = "Test12345",
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
///     var defaultBackupPlan = new AliCloud.DBS.BackupPlan("default", new()
///     {
///         BackupPlanName = name,
///         PaymentType = "PayAsYouGo",
///         InstanceClass = "xlarge",
///         BackupMethod = "logical",
///         DatabaseType = "MySQL",
///         DatabaseRegion = "cn-hangzhou",
///         StorageRegion = "cn-hangzhou",
///         InstanceType = "RDS",
///         SourceEndpointInstanceType = "RDS",
///         ResourceGroupId = @default.Apply(@default => @default.Apply(getResourceGroupsResult => getResourceGroupsResult.Ids[0])),
///         SourceEndpointRegion = "cn-hangzhou",
///         SourceEndpointInstanceId = defaultInstance.Id,
///         SourceEndpointUserName = defaultAccountPrivilege.AccountName,
///         SourceEndpointPassword = defaultRdsAccount.AccountPassword,
///         BackupObjects = defaultDatabase.Name.Apply(name => $"[{{\"DBName\":\"{name}\"}}]"),
///         BackupPeriod = "Monday",
///         BackupStartTime = "14:22",
///         BackupStorageType = "system",
///         BackupRetentionPeriod = 740,
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/dbs"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ecs"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/rds"
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
/// 		_default, err := resourcemanager.GetResourceGroups(ctx, &resourcemanager.GetResourceGroupsArgs{
/// 			Status: pulumi.StringRef("OK"),
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
/// 			ZoneId:                pulumi.StringRef(defaultGetZones.Zones[1].Id),
/// 			Engine:                pulumi.StringRef("MySQL"),
/// 			EngineVersion:         pulumi.StringRef("8.0"),
/// 			Category:              pulumi.StringRef("HighAvailability"),
/// 			DbInstanceStorageType: pulumi.StringRef("cloud_essd"),
/// 			InstanceChargeType:    pulumi.StringRef("PostPaid"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetNetworks, err := vpc.GetNetworks(ctx, &vpc.GetNetworksArgs{
/// 			NameRegex: pulumi.StringRef("^default-NODELETING"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetSwitches, err := vpc.GetSwitches(ctx, &vpc.GetSwitchesArgs{
/// 			VpcId:  pulumi.StringRef(defaultGetNetworks.Ids[0]),
/// 			ZoneId: pulumi.StringRef(defaultGetZones.Zones[1].Id),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		vswitchId := defaultGetSwitches.Ids[0]
/// 		_ := defaultGetZones.Ids[1]
/// 		_, err = ecs.NewSecurityGroup(ctx, "default", &ecs.SecurityGroupArgs{
/// 			Name:  pulumi.String(name),
/// 			VpcId: pulumi.String(defaultGetNetworks.Ids[0]),
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
/// 			VswitchId:             pulumi.String(vswitchId),
/// 			InstanceName:          pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultDatabase, err := rds.NewDatabase(ctx, "default", &rds.DatabaseArgs{
/// 			InstanceId: defaultInstance.ID(),
/// 			Name:       pulumi.String("tfdatabase"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultRdsAccount, err := rds.NewRdsAccount(ctx, "default", &rds.RdsAccountArgs{
/// 			DbInstanceId:    defaultInstance.ID(),
/// 			AccountName:     pulumi.String("tfnormal000"),
/// 			AccountPassword: pulumi.String("Test12345"),
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
/// 		_, err = dbs.NewBackupPlan(ctx, "default", &dbs.BackupPlanArgs{
/// 			BackupPlanName:             pulumi.String(name),
/// 			PaymentType:                pulumi.String("PayAsYouGo"),
/// 			InstanceClass:              pulumi.String("xlarge"),
/// 			BackupMethod:               pulumi.String("logical"),
/// 			DatabaseType:               pulumi.String("MySQL"),
/// 			DatabaseRegion:             pulumi.String("cn-hangzhou"),
/// 			StorageRegion:              pulumi.String("cn-hangzhou"),
/// 			InstanceType:               pulumi.String("RDS"),
/// 			SourceEndpointInstanceType: pulumi.String("RDS"),
/// 			ResourceGroupId:            pulumi.String(_default.Ids[0]),
/// 			SourceEndpointRegion:       pulumi.String("cn-hangzhou"),
/// 			SourceEndpointInstanceId:   defaultInstance.ID(),
/// 			SourceEndpointUserName:     defaultAccountPrivilege.AccountName,
/// 			SourceEndpointPassword:     defaultRdsAccount.AccountPassword,
/// 			BackupObjects: defaultDatabase.Name.ApplyT(func(name string) (string, error) {
/// 				return fmt.Sprintf("[{\"DBName\":\"%v\"}]", name), nil
/// 			}).(pulumi.StringOutput),
/// 			BackupPeriod:          pulumi.String("Monday"),
/// 			BackupStartTime:       pulumi.String("14:22"),
/// 			BackupStorageType:     pulumi.String("system"),
/// 			BackupRetentionPeriod: pulumi.Int(740),
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
/// import com.pulumi.alicloud.resourcemanager.ResourcemanagerFunctions;
/// import com.pulumi.alicloud.resourcemanager.inputs.GetResourceGroupsArgs;
/// import com.pulumi.alicloud.rds.RdsFunctions;
/// import com.pulumi.alicloud.rds.inputs.GetZonesArgs;
/// import com.pulumi.alicloud.rds.inputs.GetInstanceClassesArgs;
/// import com.pulumi.alicloud.vpc.VpcFunctions;
/// import com.pulumi.alicloud.vpc.inputs.GetNetworksArgs;
/// import com.pulumi.alicloud.vpc.inputs.GetSwitchesArgs;
/// import com.pulumi.alicloud.ecs.SecurityGroup;
/// import com.pulumi.alicloud.ecs.SecurityGroupArgs;
/// import com.pulumi.alicloud.rds.Instance;
/// import com.pulumi.alicloud.rds.InstanceArgs;
/// import com.pulumi.alicloud.rds.Database;
/// import com.pulumi.alicloud.rds.DatabaseArgs;
/// import com.pulumi.alicloud.rds.RdsAccount;
/// import com.pulumi.alicloud.rds.RdsAccountArgs;
/// import com.pulumi.alicloud.rds.AccountPrivilege;
/// import com.pulumi.alicloud.rds.AccountPrivilegeArgs;
/// import com.pulumi.alicloud.dbs.BackupPlan;
/// import com.pulumi.alicloud.dbs.BackupPlanArgs;
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
///         final var default = ResourcemanagerFunctions.getResourceGroups(GetResourceGroupsArgs.builder()
///             .status("OK")
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
///             .zoneId(defaultGetZones.zones()[1].id())
///             .engine("MySQL")
///             .engineVersion("8.0")
///             .category("HighAvailability")
///             .dbInstanceStorageType("cloud_essd")
///             .instanceChargeType("PostPaid")
///             .build());
///
///         final var defaultGetNetworks = VpcFunctions.getNetworks(GetNetworksArgs.builder()
///             .nameRegex("^default-NODELETING")
///             .build());
///
///         final var defaultGetSwitches = VpcFunctions.getSwitches(GetSwitchesArgs.builder()
///             .vpcId(defaultGetNetworks.ids()[0])
///             .zoneId(defaultGetZones.zones()[1].id())
///             .build());
///
///         final var vswitchId = defaultGetSwitches.ids()[0];
///
///         final var zoneId = defaultGetZones.ids()[1];
///
///         var defaultSecurityGroup = new SecurityGroup("defaultSecurityGroup", SecurityGroupArgs.builder()
///             .name(name)
///             .vpcId(defaultGetNetworks.ids()[0])
///             .build());
///
///         var defaultInstance = new Instance("defaultInstance", InstanceArgs.builder()
///             .engine("MySQL")
///             .engineVersion("8.0")
///             .dbInstanceStorageType("cloud_essd")
///             .instanceType(defaultGetInstanceClasses.instanceClasses()[0].instanceClass())
///             .instanceStorage(defaultGetInstanceClasses.instanceClasses()[0].storageRange().min())
///             .vswitchId(vswitchId)
///             .instanceName(name)
///             .build());
///
///         var defaultDatabase = new Database("defaultDatabase", DatabaseArgs.builder()
///             .instanceId(defaultInstance.id())
///             .name("tfdatabase")
///             .build());
///
///         var defaultRdsAccount = new RdsAccount("defaultRdsAccount", RdsAccountArgs.builder()
///             .dbInstanceId(defaultInstance.id())
///             .accountName("tfnormal000")
///             .accountPassword("Test12345")
///             .build());
///
///         var defaultAccountPrivilege = new AccountPrivilege("defaultAccountPrivilege", AccountPrivilegeArgs.builder()
///             .instanceId(defaultInstance.id())
///             .accountName(defaultRdsAccount.accountName())
///             .privilege("ReadWrite")
///             .dbNames(defaultDatabase.name())
///             .build());
///
///         var defaultBackupPlan = new BackupPlan("defaultBackupPlan", BackupPlanArgs.builder()
///             .backupPlanName(name)
///             .paymentType("PayAsYouGo")
///             .instanceClass("xlarge")
///             .backupMethod("logical")
///             .databaseType("MySQL")
///             .databaseRegion("cn-hangzhou")
///             .storageRegion("cn-hangzhou")
///             .instanceType("RDS")
///             .sourceEndpointInstanceType("RDS")
///             .resourceGroupId(default_.ids()[0])
///             .sourceEndpointRegion("cn-hangzhou")
///             .sourceEndpointInstanceId(defaultInstance.id())
///             .sourceEndpointUserName(defaultAccountPrivilege.accountName())
///             .sourceEndpointPassword(defaultRdsAccount.accountPassword())
///             .backupObjects(defaultDatabase.name().applyValue(_name -> String.format("[{{\"DBName\":\"%s\"}}]", _name)))
///             .backupPeriod("Monday")
///             .backupStartTime("14:22")
///             .backupStorageType("system")
///             .backupRetentionPeriod(740)
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
///   defaultSecurityGroup:
///     type: alicloud:ecs:SecurityGroup
///     name: default
///     properties:
///       name: ${name}
///       vpcId: ${defaultGetNetworks.ids[0]}
///   defaultInstance:
///     type: alicloud:rds:Instance
///     name: default
///     properties:
///       engine: MySQL
///       engineVersion: '8.0'
///       dbInstanceStorageType: cloud_essd
///       instanceType: ${defaultGetInstanceClasses.instanceClasses[0].instanceClass}
///       instanceStorage: ${defaultGetInstanceClasses.instanceClasses[0].storageRange.min}
///       vswitchId: ${vswitchId}
///       instanceName: ${name}
///   defaultDatabase:
///     type: alicloud:rds:Database
///     name: default
///     properties:
///       instanceId: ${defaultInstance.id}
///       name: tfdatabase
///   defaultRdsAccount:
///     type: alicloud:rds:RdsAccount
///     name: default
///     properties:
///       dbInstanceId: ${defaultInstance.id}
///       accountName: tfnormal000
///       accountPassword: Test12345
///   defaultAccountPrivilege:
///     type: alicloud:rds:AccountPrivilege
///     name: default
///     properties:
///       instanceId: ${defaultInstance.id}
///       accountName: ${defaultRdsAccount.accountName}
///       privilege: ReadWrite
///       dbNames:
///         - ${defaultDatabase.name}
///   defaultBackupPlan:
///     type: alicloud:dbs:BackupPlan
///     name: default
///     properties:
///       backupPlanName: ${name}
///       paymentType: PayAsYouGo
///       instanceClass: xlarge
///       backupMethod: logical
///       databaseType: MySQL
///       databaseRegion: cn-hangzhou
///       storageRegion: cn-hangzhou
///       instanceType: RDS
///       sourceEndpointInstanceType: RDS
///       resourceGroupId: ${default.ids[0]}
///       sourceEndpointRegion: cn-hangzhou
///       sourceEndpointInstanceId: ${defaultInstance.id}
///       sourceEndpointUserName: ${defaultAccountPrivilege.accountName}
///       sourceEndpointPassword: ${defaultRdsAccount.accountPassword}
///       backupObjects: '[{"DBName":"${defaultDatabase.name}"}]'
///       backupPeriod: Monday
///       backupStartTime: 14:22
///       backupStorageType: system
///       backupRetentionPeriod: 740
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:resourcemanager:getResourceGroups
///       arguments:
///         status: OK
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
///         zoneId: ${defaultGetZones.zones[1].id}
///         engine: MySQL
///         engineVersion: '8.0'
///         category: HighAvailability
///         dbInstanceStorageType: cloud_essd
///         instanceChargeType: PostPaid
///   defaultGetNetworks:
///     fn::invoke:
///       function: alicloud:vpc:getNetworks
///       arguments:
///         nameRegex: ^default-NODELETING
///   defaultGetSwitches:
///     fn::invoke:
///       function: alicloud:vpc:getSwitches
///       arguments:
///         vpcId: ${defaultGetNetworks.ids[0]}
///         zoneId: ${defaultGetZones.zones[1].id}
///   vswitchId: ${defaultGetSwitches.ids[0]}
///   zoneId: ${defaultGetZones.ids[1]}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// DBS Backup Plan can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:dbs/backupPlan:BackupPlan example <id>
/// ```
class BackupPlan extends pulumi.CustomResource {
  /// The ID of the backup gateway. This parameter is required when the `source_endpoint_instance_type` is `Agent`.
  late final pulumi.Output<String> backupGatewayId;
  /// The backup log interval seconds.
  late final pulumi.Output<int?> backupLogIntervalSeconds;
  /// Backup method. Valid values: `duplication`, `logical`, `physical`.
  late final pulumi.Output<String> backupMethod;
  /// The backup object.
  late final pulumi.Output<String> backupObjects;
  /// Full backup cycle, Valid values: `Monday`, `Tuesday`, `Wednesday`, `Thursday`, `Friday`, `Saturday`, `Sunday`. supports the selection of multiple fetch values, separated by English commas (,).
  late final pulumi.Output<String> backupPeriod;
  /// The name of the resource.
  late final pulumi.Output<String> backupPlanName;
  /// The backup rate limit.
  late final pulumi.Output<String?> backupRateLimit;
  /// The retention time of backup data. Valid values: 0 to 1825. Default value: 730 days.
  late final pulumi.Output<int> backupRetentionPeriod;
  /// The backup speed limit.
  late final pulumi.Output<String?> backupSpeedLimit;
  /// The start time of full Backup. The format is `<I> HH:mm</I>` Z(UTC time).
  late final pulumi.Output<String> backupStartTime;
  /// Built-in storage type, Valid values: `system`.
  late final pulumi.Output<String> backupStorageType;
  /// The backup strategy type. Valid values: `simple`, `manual`.
  late final pulumi.Output<String?> backupStrategyType;
  /// The UID that is backed up across Alibaba cloud accounts.
  late final pulumi.Output<String> crossAliyunId;
  /// The name of the RAM role that is backed up across Alibaba cloud accounts.
  late final pulumi.Output<String> crossRoleName;
  /// The database region.
  late final pulumi.Output<String?> databaseRegion;
  /// Database type. Valid values: `DRDS`, `FIle`, `MSSQL`, `MariaDB`, `MongoDB`, `MySQL`, `Oracle`, `PPAS`, `PostgreSQL`, `Redis`.
  late final pulumi.Output<String> databaseType;
  /// The storage time for conversion to archive cold standby is 365 days by default.
  late final pulumi.Output<int> duplicationArchivePeriod;
  /// The storage time is converted to low-frequency access. The default time is 180 days.
  late final pulumi.Output<int> duplicationInfrequentAccessPeriod;
  /// Whether to enable incremental log Backup.
  late final pulumi.Output<bool> enableBackupLog;
  /// The instance class. Valid values: `large`, `medium`, `micro`, `small`, `xlarge`.
  late final pulumi.Output<String> instanceClass;
  /// The instance type. Valid values: `RDS`, `PolarDB`, `DDS`, `Kvstore`, `Other`.
  late final pulumi.Output<String?> instanceType;
  /// The OSS Bucket name. The system automatically generates a new name by default.
  late final pulumi.Output<String> ossBucketName;
  /// The payment type of the resource. Valid values: `PayAsYouGo`, `Subscription`.
  late final pulumi.Output<String> paymentType;
  /// Specify that the prepaid instance is of the package year or monthly type. Valid values: `Month`, `Year`.
  late final pulumi.Output<String?> period;
  /// The ID of the resource group.
  late final pulumi.Output<String> resourceGroupId;
  /// The name of the database. This parameter is required when the `database_type` is `PostgreSQL` or `MongoDB`.
  late final pulumi.Output<String> sourceEndpointDatabaseName;
  /// The ID of the database instance. This parameter is required when the `source_endpoint_instance_type` is `RDS`, `ECS`, `DDS`, or `Express`.
  late final pulumi.Output<String> sourceEndpointInstanceId;
  /// The location of the database. Valid values: `RDS`, `ECS`, `Express`, `Agent`, `DDS`, `Other`.
  late final pulumi.Output<String> sourceEndpointInstanceType;
  /// The source endpoint ip.
  late final pulumi.Output<String?> sourceEndpointIp;
  /// Oracle SID name. This parameter is required when the `database_type` is `Oracle`.
  late final pulumi.Output<String?> sourceEndpointOracleSid;
  /// The source endpoint password.  This parameter is not required when the `database_type` is `Redis`, or when the `source_endpoint_instance_type` is `Agent` and the `database_type` is `MSSQL`. This parameter is required in other scenarios.
  late final pulumi.Output<String?> sourceEndpointPassword;
  /// The source endpoint port.
  late final pulumi.Output<int?> sourceEndpointPort;
  /// The region of the database. This parameter is required when the `source_endpoint_instance_type` is `RDS`, `ECS`, `DDS`, `Express`, or `Agent`.
  late final pulumi.Output<String> sourceEndpointRegion;
  /// Oracle SID name. This parameter is required when the `database_type` is `Oracle`.
  late final pulumi.Output<String> sourceEndpointSid;
  /// The source endpoint username. This parameter is not required when the `database_type` is `Redis`, or when the `source_endpoint_instance_type` is `Agent` and the `database_type` is `MSSQL`. This parameter is required in other scenarios.
  late final pulumi.Output<String> sourceEndpointUserName;
  /// The status of the resource. Valid values: `pause`, `running`.
  late final pulumi.Output<String> status;
  /// The storage region.
  late final pulumi.Output<String?> storageRegion;
  /// Specify purchase duration. When the parameter `period` is `Year`, the `used_time` value is 1 to 9. When the parameter `period` is `Month`, the `used_time` value is 1 to 11.
  late final pulumi.Output<int?> usedTime;

  /// Creates a new [BackupPlan].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BackupPlan]. {@macro pulumi_dbs_backup_plan_backup_plan_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BackupPlan(
    String name, {
    BackupPlanArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:dbs/backupPlan:BackupPlan',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.backupGatewayId = registerOutput<String>('backupGatewayId');
    this.backupLogIntervalSeconds = registerOutput<int?>('backupLogIntervalSeconds');
    this.backupMethod = registerOutput<String>('backupMethod');
    this.backupObjects = registerOutput<String>('backupObjects');
    this.backupPeriod = registerOutput<String>('backupPeriod');
    this.backupPlanName = registerOutput<String>('backupPlanName');
    this.backupRateLimit = registerOutput<String?>('backupRateLimit');
    this.backupRetentionPeriod = registerOutput<int>('backupRetentionPeriod');
    this.backupSpeedLimit = registerOutput<String?>('backupSpeedLimit');
    this.backupStartTime = registerOutput<String>('backupStartTime');
    this.backupStorageType = registerOutput<String>('backupStorageType');
    this.backupStrategyType = registerOutput<String?>('backupStrategyType');
    this.crossAliyunId = registerOutput<String>('crossAliyunId');
    this.crossRoleName = registerOutput<String>('crossRoleName');
    this.databaseRegion = registerOutput<String?>('databaseRegion');
    this.databaseType = registerOutput<String>('databaseType');
    this.duplicationArchivePeriod = registerOutput<int>('duplicationArchivePeriod');
    this.duplicationInfrequentAccessPeriod = registerOutput<int>('duplicationInfrequentAccessPeriod');
    this.enableBackupLog = registerOutput<bool>('enableBackupLog');
    this.instanceClass = registerOutput<String>('instanceClass');
    this.instanceType = registerOutput<String?>('instanceType');
    this.ossBucketName = registerOutput<String>('ossBucketName');
    this.paymentType = registerOutput<String>('paymentType');
    this.period = registerOutput<String?>('period');
    this.resourceGroupId = registerOutput<String>('resourceGroupId');
    this.sourceEndpointDatabaseName = registerOutput<String>('sourceEndpointDatabaseName');
    this.sourceEndpointInstanceId = registerOutput<String>('sourceEndpointInstanceId');
    this.sourceEndpointInstanceType = registerOutput<String>('sourceEndpointInstanceType');
    this.sourceEndpointIp = registerOutput<String?>('sourceEndpointIp');
    this.sourceEndpointOracleSid = registerOutput<String?>('sourceEndpointOracleSid');
    this.sourceEndpointPassword = registerOutput<String?>('sourceEndpointPassword');
    this.sourceEndpointPort = registerOutput<int?>('sourceEndpointPort');
    this.sourceEndpointRegion = registerOutput<String>('sourceEndpointRegion');
    this.sourceEndpointSid = registerOutput<String>('sourceEndpointSid');
    this.sourceEndpointUserName = registerOutput<String>('sourceEndpointUserName');
    this.status = registerOutput<String>('status');
    this.storageRegion = registerOutput<String?>('storageRegion');
    this.usedTime = registerOutput<int?>('usedTime');
  }
}
