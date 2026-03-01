import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_policy_args.dart';

/// Provides a Click House Backup Policy resource.
///
/// For information about Click House Backup Policy and how to use it, see [What is Backup Policy](https://www.alibabacloud.com/help/zh/clickhouse/latest/api-clickhouse-2019-11-11-createbackuppolicy).
///
/// > **NOTE:** Available since v1.147.0.
///
/// > **NOTE:** Only the cloud database ClickHouse cluster version `20.3` supports data backup.
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
/// const name = config.get("name") || "tf-example";
/// const _default = alicloud.clickhouse.getRegions({
///     current: true,
/// });
/// const defaultNetwork = new alicloud.vpc.Network("default", {
///     vpcName: name,
///     cidrBlock: "10.4.0.0/16",
/// });
/// const defaultSwitch = new alicloud.vpc.Switch("default", {
///     vswitchName: name,
///     cidrBlock: "10.4.0.0/24",
///     vpcId: defaultNetwork.id,
///     zoneId: _default.then(_default => _default.regions?.[0]?.zoneIds?.[1]?.zoneId),
/// });
/// const defaultDbCluster = new alicloud.clickhouse.DbCluster("default", {
///     dbClusterVersion: "22.8.5.29",
///     status: "Running",
///     category: "Basic",
///     dbClusterClass: "S8",
///     dbClusterNetworkType: "vpc",
///     dbNodeGroupCount: 1,
///     paymentType: "PayAsYouGo",
///     dbNodeStorage: "500",
///     storageType: "cloud_essd",
///     vswitchId: defaultSwitch.id,
///     vpcId: defaultNetwork.id,
/// });
/// const defaultBackupPolicy = new alicloud.clickhouse.BackupPolicy("default", {
///     dbClusterId: defaultDbCluster.id,
///     preferredBackupPeriods: [
///         "Monday",
///         "Friday",
///     ],
///     preferredBackupTime: "00:00Z-01:00Z",
///     backupRetentionPeriod: 7,
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
/// default = alicloud.clickhouse.get_regions(current=True)
/// default_network = alicloud.vpc.Network("default",
///     vpc_name=name,
///     cidr_block="10.4.0.0/16")
/// default_switch = alicloud.vpc.Switch("default",
///     vswitch_name=name,
///     cidr_block="10.4.0.0/24",
///     vpc_id=default_network.id,
///     zone_id=default.regions[0].zone_ids[1].zone_id)
/// default_db_cluster = alicloud.clickhouse.DbCluster("default",
///     db_cluster_version="22.8.5.29",
///     status="Running",
///     category="Basic",
///     db_cluster_class="S8",
///     db_cluster_network_type="vpc",
///     db_node_group_count=1,
///     payment_type="PayAsYouGo",
///     db_node_storage="500",
///     storage_type="cloud_essd",
///     vswitch_id=default_switch.id,
///     vpc_id=default_network.id)
/// default_backup_policy = alicloud.clickhouse.BackupPolicy("default",
///     db_cluster_id=default_db_cluster.id,
///     preferred_backup_periods=[
///         "Monday",
///         "Friday",
///     ],
///     preferred_backup_time="00:00Z-01:00Z",
///     backup_retention_period=7)
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
///     var @default = AliCloud.ClickHouse.GetRegions.Invoke(new()
///     {
///         Current = true,
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
///         ZoneId = @default.Apply(@default => @default.Apply(getRegionsResult => getRegionsResult.Regions[0]?.ZoneIds[1]?.ZoneId)),
///     });
///
///     var defaultDbCluster = new AliCloud.ClickHouse.DbCluster("default", new()
///     {
///         DbClusterVersion = "22.8.5.29",
///         Status = "Running",
///         Category = "Basic",
///         DbClusterClass = "S8",
///         DbClusterNetworkType = "vpc",
///         DbNodeGroupCount = 1,
///         PaymentType = "PayAsYouGo",
///         DbNodeStorage = "500",
///         StorageType = "cloud_essd",
///         VswitchId = defaultSwitch.Id,
///         VpcId = defaultNetwork.Id,
///     });
///
///     var defaultBackupPolicy = new AliCloud.ClickHouse.BackupPolicy("default", new()
///     {
///         DbClusterId = defaultDbCluster.Id,
///         PreferredBackupPeriods = new[]
///         {
///             "Monday",
///             "Friday",
///         },
///         PreferredBackupTime = "00:00Z-01:00Z",
///         BackupRetentionPeriod = 7,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/clickhouse"
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
/// 		_default, err := clickhouse.GetRegions(ctx, &clickhouse.GetRegionsArgs{
/// 			Current: pulumi.BoolRef(true),
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
/// 			ZoneId:      pulumi.String(_default.Regions[0].ZoneIds[1].ZoneId),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultDbCluster, err := clickhouse.NewDbCluster(ctx, "default", &clickhouse.DbClusterArgs{
/// 			DbClusterVersion:     pulumi.String("22.8.5.29"),
/// 			Status:               pulumi.String("Running"),
/// 			Category:             pulumi.String("Basic"),
/// 			DbClusterClass:       pulumi.String("S8"),
/// 			DbClusterNetworkType: pulumi.String("vpc"),
/// 			DbNodeGroupCount:     pulumi.Int(1),
/// 			PaymentType:          pulumi.String("PayAsYouGo"),
/// 			DbNodeStorage:        pulumi.String("500"),
/// 			StorageType:          pulumi.String("cloud_essd"),
/// 			VswitchId:            defaultSwitch.ID(),
/// 			VpcId:                defaultNetwork.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = clickhouse.NewBackupPolicy(ctx, "default", &clickhouse.BackupPolicyArgs{
/// 			DbClusterId: defaultDbCluster.ID(),
/// 			PreferredBackupPeriods: pulumi.StringArray{
/// 				pulumi.String("Monday"),
/// 				pulumi.String("Friday"),
/// 			},
/// 			PreferredBackupTime:   pulumi.String("00:00Z-01:00Z"),
/// 			BackupRetentionPeriod: pulumi.Int(7),
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
/// import com.pulumi.alicloud.clickhouse.ClickhouseFunctions;
/// import com.pulumi.alicloud.clickhouse.inputs.GetRegionsArgs;
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.clickhouse.DbCluster;
/// import com.pulumi.alicloud.clickhouse.DbClusterArgs;
/// import com.pulumi.alicloud.clickhouse.BackupPolicy;
/// import com.pulumi.alicloud.clickhouse.BackupPolicyArgs;
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
///         final var default = ClickhouseFunctions.getRegions(GetRegionsArgs.builder()
///             .current(true)
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
///             .zoneId(default_.regions()[0].zoneIds()[1].zoneId())
///             .build());
///
///         var defaultDbCluster = new DbCluster("defaultDbCluster", DbClusterArgs.builder()
///             .dbClusterVersion("22.8.5.29")
///             .status("Running")
///             .category("Basic")
///             .dbClusterClass("S8")
///             .dbClusterNetworkType("vpc")
///             .dbNodeGroupCount(1)
///             .paymentType("PayAsYouGo")
///             .dbNodeStorage("500")
///             .storageType("cloud_essd")
///             .vswitchId(defaultSwitch.id())
///             .vpcId(defaultNetwork.id())
///             .build());
///
///         var defaultBackupPolicy = new BackupPolicy("defaultBackupPolicy", BackupPolicyArgs.builder()
///             .dbClusterId(defaultDbCluster.id())
///             .preferredBackupPeriods(
///                 "Monday",
///                 "Friday")
///             .preferredBackupTime("00:00Z-01:00Z")
///             .backupRetentionPeriod(7)
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
///       zoneId: ${default.regions[0].zoneIds[1].zoneId}
///   defaultDbCluster:
///     type: alicloud:clickhouse:DbCluster
///     name: default
///     properties:
///       dbClusterVersion: 22.8.5.29
///       status: Running
///       category: Basic
///       dbClusterClass: S8
///       dbClusterNetworkType: vpc
///       dbNodeGroupCount: '1'
///       paymentType: PayAsYouGo
///       dbNodeStorage: '500'
///       storageType: cloud_essd
///       vswitchId: ${defaultSwitch.id}
///       vpcId: ${defaultNetwork.id}
///   defaultBackupPolicy:
///     type: alicloud:clickhouse:BackupPolicy
///     name: default
///     properties:
///       dbClusterId: ${defaultDbCluster.id}
///       preferredBackupPeriods:
///         - Monday
///         - Friday
///       preferredBackupTime: 00:00Z-01:00Z
///       backupRetentionPeriod: 7
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:clickhouse:getRegions
///       arguments:
///         current: true
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Click House Backup Policy can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:clickhouse/backupPolicy:BackupPolicy example <db_cluster_id>
/// ```
class BackupPolicy extends pulumi.CustomResource {
  /// Data backup days. Valid values: `7` to `730`.
  late final pulumi.Output<int?> backupRetentionPeriod;
  /// The id of the DBCluster.
  late final pulumi.Output<String> dbClusterId;
  /// DBCluster Backup period. A list of DBCluster Backup period. Valid values: ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"].
  late final pulumi.Output<List<String>> preferredBackupPeriods;
  /// DBCluster backup time, in the format of `HH:mmZ-HH:mmZ`. Time setting interval is one hour. China time is 8 hours behind it.
  late final pulumi.Output<String> preferredBackupTime;
  /// The status of the resource.
  late final pulumi.Output<String> status;

  /// Creates a new [BackupPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BackupPolicy]. {@macro pulumi_clickhouse_backup_policy_backup_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BackupPolicy(
    String name, {
    BackupPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:clickhouse/backupPolicy:BackupPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.backupRetentionPeriod = registerOutput<int?>('backupRetentionPeriod');
    this.dbClusterId = registerOutput<String>('dbClusterId');
    this.preferredBackupPeriods = registerOutput<List<String>>('preferredBackupPeriods');
    this.preferredBackupTime = registerOutput<String>('preferredBackupTime');
    this.status = registerOutput<String>('status');
  }
}
