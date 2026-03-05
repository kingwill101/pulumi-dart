import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_policy_args.dart';
import 'backup_policy_state.dart';

/// Provides an RDS instance backup policy resource and used to configure instance backup policy, see [What is DB Backup Policy](https://www.alibabacloud.com/help/en/apsaradb-for-rds/latest/api-rds-2014-08-15-modifybackuppolicy).
///
///
/// &gt; **NOTE:** Each DB instance has a backup policy and it will be set default values when destroying the resource.
///
/// &gt; **NOTE:** Available since v1.5.0.
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
/// const _default = alicloud.rds.getZones({
///     engine: "MySQL",
///     engineVersion: "5.6",
/// });
/// const defaultNetwork = new alicloud.vpc.Network("default", {
///     vpcName: name,
///     cidrBlock: "172.16.0.0/16",
/// });
/// const defaultSwitch = new alicloud.vpc.Switch("default", {
///     vpcId: defaultNetwork.id,
///     cidrBlock: "172.16.0.0/24",
///     zoneId: _default.then(_default => _default.zones?.[0]?.id),
///     vswitchName: name,
/// });
/// const instance = new alicloud.rds.Instance("instance", {
///     engine: "MySQL",
///     engineVersion: "5.6",
///     instanceType: "rds.mysql.s1.small",
///     instanceStorage: 10,
///     vswitchId: defaultSwitch.id,
///     instanceName: name,
/// });
/// const policy = new alicloud.rds.BackupPolicy("policy", {instanceId: instance.id});
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "tf-example"
/// default = alicloud.rds.get_zones(engine="MySQL",
///     engine_version="5.6")
/// default_network = alicloud.vpc.Network("default",
///     vpc_name=name,
///     cidr_block="172.16.0.0/16")
/// default_switch = alicloud.vpc.Switch("default",
///     vpc_id=default_network.id,
///     cidr_block="172.16.0.0/24",
///     zone_id=default.zones[0].id,
///     vswitch_name=name)
/// instance = alicloud.rds.Instance("instance",
///     engine="MySQL",
///     engine_version="5.6",
///     instance_type="rds.mysql.s1.small",
///     instance_storage=10,
///     vswitch_id=default_switch.id,
///     instance_name=name)
/// policy = alicloud.rds.BackupPolicy("policy", instance_id=instance.id)
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
///     var @default = AliCloud.Rds.GetZones.Invoke(new()
///     {
///         Engine = "MySQL",
///         EngineVersion = "5.6",
///     });
///
///     var defaultNetwork = new AliCloud.Vpc.Network("default", new()
///     {
///         VpcName = name,
///         CidrBlock = "172.16.0.0/16",
///     });
///
///     var defaultSwitch = new AliCloud.Vpc.Switch("default", new()
///     {
///         VpcId = defaultNetwork.Id,
///         CidrBlock = "172.16.0.0/24",
///         ZoneId = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id)),
///         VswitchName = name,
///     });
///
///     var instance = new AliCloud.Rds.Instance("instance", new()
///     {
///         Engine = "MySQL",
///         EngineVersion = "5.6",
///         InstanceType = "rds.mysql.s1.small",
///         InstanceStorage = 10,
///         VswitchId = defaultSwitch.Id,
///         InstanceName = name,
///     });
///
///     var policy = new AliCloud.Rds.BackupPolicy("policy", new()
///     {
///         InstanceId = instance.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
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
/// 		_default, err := rds.GetZones(ctx, &rds.GetZonesArgs{
/// 			Engine:        pulumi.StringRef("MySQL"),
/// 			EngineVersion: pulumi.StringRef("5.6"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultNetwork, err := vpc.NewNetwork(ctx, "default", &vpc.NetworkArgs{
/// 			VpcName:   pulumi.String(name),
/// 			CidrBlock: pulumi.String("172.16.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSwitch, err := vpc.NewSwitch(ctx, "default", &vpc.SwitchArgs{
/// 			VpcId:       defaultNetwork.ID(),
/// 			CidrBlock:   pulumi.String("172.16.0.0/24"),
/// 			ZoneId:      pulumi.String(_default.Zones[0].Id),
/// 			VswitchName: pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		instance, err := rds.NewInstance(ctx, "instance", &rds.InstanceArgs{
/// 			Engine:          pulumi.String("MySQL"),
/// 			EngineVersion:   pulumi.String("5.6"),
/// 			InstanceType:    pulumi.String("rds.mysql.s1.small"),
/// 			InstanceStorage: pulumi.Int(10),
/// 			VswitchId:       defaultSwitch.ID(),
/// 			InstanceName:    pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = rds.NewBackupPolicy(ctx, "policy", &rds.BackupPolicyArgs{
/// 			InstanceId: instance.ID(),
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
/// import com.pulumi.alicloud.rds.RdsFunctions;
/// import com.pulumi.alicloud.rds.inputs.GetZonesArgs;
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.rds.Instance;
/// import com.pulumi.alicloud.rds.InstanceArgs;
/// import com.pulumi.alicloud.rds.BackupPolicy;
/// import com.pulumi.alicloud.rds.BackupPolicyArgs;
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
///         final var default = RdsFunctions.getZones(GetZonesArgs.builder()
///             .engine("MySQL")
///             .engineVersion("5.6")
///             .build());
///
///         var defaultNetwork = new Network("defaultNetwork", NetworkArgs.builder()
///             .vpcName(name)
///             .cidrBlock("172.16.0.0/16")
///             .build());
///
///         var defaultSwitch = new Switch("defaultSwitch", SwitchArgs.builder()
///             .vpcId(defaultNetwork.id())
///             .cidrBlock("172.16.0.0/24")
///             .zoneId(default_.zones()[0].id())
///             .vswitchName(name)
///             .build());
///
///         var instance = new Instance("instance", InstanceArgs.builder()
///             .engine("MySQL")
///             .engineVersion("5.6")
///             .instanceType("rds.mysql.s1.small")
///             .instanceStorage(10)
///             .vswitchId(defaultSwitch.id())
///             .instanceName(name)
///             .build());
///
///         var policy = new BackupPolicy("policy", BackupPolicyArgs.builder()
///             .instanceId(instance.id())
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
///       cidrBlock: 172.16.0.0/16
///   defaultSwitch:
///     type: alicloud:vpc:Switch
///     name: default
///     properties:
///       vpcId: ${defaultNetwork.id}
///       cidrBlock: 172.16.0.0/24
///       zoneId: ${default.zones[0].id}
///       vswitchName: ${name}
///   instance:
///     type: alicloud:rds:Instance
///     properties:
///       engine: MySQL
///       engineVersion: '5.6'
///       instanceType: rds.mysql.s1.small
///       instanceStorage: '10'
///       vswitchId: ${defaultSwitch.id}
///       instanceName: ${name}
///   policy:
///     type: alicloud:rds:BackupPolicy
///     properties:
///       instanceId: ${instance.id}
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:rds:getZones
///       arguments:
///         engine: MySQL
///         engineVersion: '5.6'
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// RDS backup policy can be imported using the id or instance id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:rds/backupPolicy:BackupPolicy example "rm-12345678"
/// ```
class BackupPolicy extends pulumi.CustomResource {
  /// Instance archive backup keep count. Valid when the `enable_backup_log` is `true` and instance is mysql local disk. When `archive_backup_keep_policy` is `ByMonth` Valid values: [1-31]. When `archive_backup_keep_policy` is `ByWeek` Valid values: [1-7].
  late final pulumi.Output<int> archiveBackupKeepCount;
  /// Instance archive backup keep policy. Valid when the `enable_backup_log` is `true` and instance is mysql local disk. Valid values are `ByMonth`, `ByWeek`, `KeepAll`.
  late final pulumi.Output<String> archiveBackupKeepPolicy;
  /// Instance archive backup retention days. Valid when the `enable_backup_log` is `true` and instance is mysql local disk. Valid values: [30-1095], and `archive_backup_retention_period` must larger than `backup_retention_period` 730.
  late final pulumi.Output<int> archiveBackupRetentionPeriod;
  /// The frequency at which you want to perform a snapshot backup on the instance. Valid values:
  /// - -1: No backup frequencies are specified.
  /// - 30: A snapshot backup is performed once every 30 minutes.
  /// - 60: A snapshot backup is performed once every 60 minutes.
  /// - 120: A snapshot backup is performed once every 120 minutes.
  /// - 240: A snapshot backup is performed once every 240 minutes.
  /// - 360: A snapshot backup is performed once every 360 minutes.
  /// - 480: A snapshot backup is performed once every 480 minutes.
  /// - 720: A snapshot backup is performed once every 720 minutes.
  late final pulumi.Output<String> backupInterval;
  /// The backup method of the instance. Valid values:
  /// - Physical: physical backup
  /// - Snapshot: snapshot backup
  /// -&gt;**NOTE:** This parameter takes effect only on instances that run SQL Server with cloud disks. This parameter takes effect only when BackupPolicyMode is set to DataBackupPolicy.
  ///
  /// &gt; **NOTE:** Currently, the SQLServer instance does not support to modify `log_backup_retention_period`.
  late final pulumi.Output<String> backupMethod;
  /// It has been deprecated from version 1.69.0, and use field 'preferred_backup_period' instead.
  late final pulumi.Output<List<String>> backupPeriods;
  /// Specifies whether the backup settings of a secondary instance are configured. Valid values:
  /// - 1: secondary instance preferred
  /// - 2: primary instance preferred
  /// -&gt;**NOTE:** This parameter is suitable only for instances that run SQL Server on RDS Cluster Edition. This parameter takes effect only when BackupMethod is set to Physical. If BackupMethod is set to Snapshot, backups are forcefully performed on the primary instance that runs SQL Server on RDS Cluster Edition.
  late final pulumi.Output<int?> backupPriority;
  /// Instance backup retention days. Valid values: [7-730]. Default to 7. But mysql local disk is unlimited.
  late final pulumi.Output<int?> backupRetentionPeriod;
  /// It has been deprecated from version 1.69.0, and use field 'preferred_backup_time' instead.
  late final pulumi.Output<String> backupTime;
  /// Whether to enable second level backup.Valid values are `Flash`, `Standard`, Note:It only takes effect when the BackupPolicyMode parameter is DataBackupPolicy.
  /// &gt; **NOTE:** You can configure a backup policy by using this parameter and the PreferredBackupPeriod parameter. For example, if you set the PreferredBackupPeriod parameter to Saturday,Sunday and the BackupInterval parameter to -1, a snapshot backup is performed on every Saturday and Sunday.If the instance runs PostgreSQL, the BackupInterval parameter is supported only when the instance is equipped with standard SSDs or enhanced SSDs (ESSDs).This parameter takes effect only when you set the BackupPolicyMode parameter to DataBackupPolicy.
  late final pulumi.Output<String> category;
  /// The compress type of instance policy. Valid values are `1`, `4`, `8`.
  late final pulumi.Output<String> compressType;
  /// Whether to backup instance log. Valid values are `true`, `false`, Default to `true`. Note: The 'Basic Edition' category Rds instance does not support setting log backup. [What is Basic Edition](https://www.alibabacloud.com/help/doc-detail/48980.htm).
  late final pulumi.Output<bool> enableBackupLog;
  /// Specifies whether to enable incremental backup. Valid values:
  /// - false (default): disables the feature.
  /// - true: enables the feature.
  /// -&gt;**NOTE:** This parameter takes effect only on instances that run SQL Server with cloud disks. This parameter takes effect only when BackupPolicyMode is set to DataBackupPolicy.
  late final pulumi.Output<bool> enableIncrementDataBackup;
  /// Instance high space usage protection policy. Valid when the `enable_backup_log` is `true`. Valid values are `Enable`, `Disable`.
  late final pulumi.Output<String?> highSpaceUsageProtection;
  /// The Id of instance that can run database.
  late final pulumi.Output<String> instanceId;
  /// Instance log backup local retention hours. Valid when the `enable_backup_log` is `true`. Valid values: [0-7*24].
  late final pulumi.Output<int> localLogRetentionHours;
  /// Instance log backup local retention space. Valid when the `enable_backup_log` is `true`. Valid values: [0-50].
  late final pulumi.Output<int> localLogRetentionSpace;
  /// It has been deprecated from version 1.68.0, and use field 'enable_backup_log' instead.
  late final pulumi.Output<bool> logBackup;
  /// Instance log backup frequency. Valid when the instance engine is `SQLServer`. Valid values are `LogInterval`.
  late final pulumi.Output<String> logBackupFrequency;
  /// The number of binary log files that you want to retain on the instance. Default value: 60. Valid values: 6 to 100.
  /// -&gt;**NOTE:** This parameter takes effect only when you set the BackupPolicyMode parameter to LogBackupPolicy. If the instance runs MySQL, you can set this parameter to -1. The value -1 specifies that an unlimited number of binary log files can be retained on the instance.
  late final pulumi.Output<int> logBackupLocalRetentionNumber;
  /// Instance log backup retention days. Valid when the `enable_backup_log` is `1`. Valid values: [7-730]. Default to 7. It cannot be larger than `backup_retention_period`.
  late final pulumi.Output<int> logBackupRetentionPeriod;
  /// It has been deprecated from version 1.69.0, and use field 'log_backup_retention_period' instead.
  late final pulumi.Output<int> logRetentionPeriod;
  /// DB Instance backup period. Please set at least two days to ensure backing up at least twice a week. Valid values: [Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday].
  late final pulumi.Output<List<String>> preferredBackupPeriods;
  /// DB instance backup time, in the format of HH:mmZ- HH:mmZ. Time setting interval is one hour. Default to "02:00Z-03:00Z". China time is 8 hours behind it.
  late final pulumi.Output<String?> preferredBackupTime;
  /// The policy based on which ApsaraDB RDS retains archived backup files if the instance is released. Default value: None. Valid values:
  /// * **None**: No archived backup files are retained.
  /// * **Lastest**: Only the most recent archived backup file is retained.
  /// * **All**: All archived backup files are retained.
  late final pulumi.Output<String> releasedKeepPolicy;
  /// It has been deprecated from version 1.69.0, and use field 'backup_retention_period' instead.
  late final pulumi.Output<int> retentionPeriod;

  /// Creates a new [BackupPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BackupPolicy]. {@macro pulumi_rds_backup_policy_backup_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BackupPolicy(
    String name, {
    BackupPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:rds/backupPolicy:BackupPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    archiveBackupKeepCount = registerOutput<int>('archiveBackupKeepCount');
    archiveBackupKeepPolicy = registerOutput<String>('archiveBackupKeepPolicy');
    archiveBackupRetentionPeriod = registerOutput<int>('archiveBackupRetentionPeriod');
    backupInterval = registerOutput<String>('backupInterval');
    backupMethod = registerOutput<String>('backupMethod');
    backupPeriods = registerOutput<List<String>>('backupPeriods');
    backupPriority = registerOutput<int?>('backupPriority');
    backupRetentionPeriod = registerOutput<int?>('backupRetentionPeriod');
    backupTime = registerOutput<String>('backupTime');
    category = registerOutput<String>('category');
    compressType = registerOutput<String>('compressType');
    enableBackupLog = registerOutput<bool>('enableBackupLog');
    enableIncrementDataBackup = registerOutput<bool>('enableIncrementDataBackup');
    highSpaceUsageProtection = registerOutput<String?>('highSpaceUsageProtection');
    instanceId = registerOutput<String>('instanceId');
    localLogRetentionHours = registerOutput<int>('localLogRetentionHours');
    localLogRetentionSpace = registerOutput<int>('localLogRetentionSpace');
    logBackup = registerOutput<bool>('logBackup');
    logBackupFrequency = registerOutput<String>('logBackupFrequency');
    logBackupLocalRetentionNumber = registerOutput<int>('logBackupLocalRetentionNumber');
    logBackupRetentionPeriod = registerOutput<int>('logBackupRetentionPeriod');
    logRetentionPeriod = registerOutput<int>('logRetentionPeriod');
    preferredBackupPeriods = registerOutput<List<String>>('preferredBackupPeriods');
    preferredBackupTime = registerOutput<String?>('preferredBackupTime');
    releasedKeepPolicy = registerOutput<String>('releasedKeepPolicy');
    retentionPeriod = registerOutput<int>('retentionPeriod');
  }

  /// Gets an existing [BackupPolicy] resource's state with the given [name] and [id].
  static BackupPolicy get(
    String name,
    pulumi.Input<String> id, {
    BackupPolicyState? state,
  }) {
    return BackupPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  BackupPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:rds/backupPolicy:BackupPolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    archiveBackupKeepCount = registerOutput<int>('archiveBackupKeepCount');
    archiveBackupKeepPolicy = registerOutput<String>('archiveBackupKeepPolicy');
    archiveBackupRetentionPeriod = registerOutput<int>('archiveBackupRetentionPeriod');
    backupInterval = registerOutput<String>('backupInterval');
    backupMethod = registerOutput<String>('backupMethod');
    backupPeriods = registerOutput<List<String>>('backupPeriods');
    backupPriority = registerOutput<int?>('backupPriority');
    backupRetentionPeriod = registerOutput<int?>('backupRetentionPeriod');
    backupTime = registerOutput<String>('backupTime');
    category = registerOutput<String>('category');
    compressType = registerOutput<String>('compressType');
    enableBackupLog = registerOutput<bool>('enableBackupLog');
    enableIncrementDataBackup = registerOutput<bool>('enableIncrementDataBackup');
    highSpaceUsageProtection = registerOutput<String?>('highSpaceUsageProtection');
    instanceId = registerOutput<String>('instanceId');
    localLogRetentionHours = registerOutput<int>('localLogRetentionHours');
    localLogRetentionSpace = registerOutput<int>('localLogRetentionSpace');
    logBackup = registerOutput<bool>('logBackup');
    logBackupFrequency = registerOutput<String>('logBackupFrequency');
    logBackupLocalRetentionNumber = registerOutput<int>('logBackupLocalRetentionNumber');
    logBackupRetentionPeriod = registerOutput<int>('logBackupRetentionPeriod');
    logRetentionPeriod = registerOutput<int>('logRetentionPeriod');
    preferredBackupPeriods = registerOutput<List<String>>('preferredBackupPeriods');
    preferredBackupTime = registerOutput<String?>('preferredBackupTime');
    releasedKeepPolicy = registerOutput<String>('releasedKeepPolicy');
    retentionPeriod = registerOutput<int>('retentionPeriod');
  }
}
