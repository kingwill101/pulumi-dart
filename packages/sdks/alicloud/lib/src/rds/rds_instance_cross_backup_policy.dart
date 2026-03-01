import 'package:pulumi/pulumi.dart' as pulumi;
import 'rds_instance_cross_backup_policy_args.dart';
import 'rds_instance_cross_backup_policy_state.dart';

/// Provides an RDS instance emote disaster recovery strategy policy resource and used to configure instance emote disaster recovery strategy policy.
///
/// For information about RDS cross region backup settings and how to use them, see [What is cross region backup](https://www.alibabacloud.com/help/en/apsaradb-for-rds/latest/modify-cross-region-backup-settings).
///
/// > **NOTE:** Available since v1.195.0.
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
///     engineVersion: "8.0",
///     dbInstanceStorageType: "local_ssd",
///     category: "HighAvailability",
/// });
/// const defaultGetInstanceClasses = _default.then(_default => alicloud.rds.getInstanceClasses({
///     zoneId: _default.ids?.[0],
///     engine: "MySQL",
///     engineVersion: "8.0",
///     dbInstanceStorageType: "local_ssd",
///     category: "HighAvailability",
/// }));
/// const regions = alicloud.rds.getCrossRegions({});
/// const defaultNetwork = new alicloud.vpc.Network("default", {
///     vpcName: name,
///     cidrBlock: "172.16.0.0/16",
/// });
/// const defaultSwitch = new alicloud.vpc.Switch("default", {
///     vpcId: defaultNetwork.id,
///     cidrBlock: "172.16.0.0/24",
///     zoneId: _default.then(_default => _default.ids?.[0]),
///     vswitchName: name,
/// });
/// const defaultInstance = new alicloud.rds.Instance("default", {
///     engine: "MySQL",
///     engineVersion: "8.0",
///     instanceType: defaultGetInstanceClasses.then(defaultGetInstanceClasses => defaultGetInstanceClasses.instanceClasses?.[0]?.instanceClass),
///     instanceStorage: defaultGetInstanceClasses.then(defaultGetInstanceClasses => defaultGetInstanceClasses.instanceClasses?.[0]?.storageRange?.min),
///     instanceChargeType: "Postpaid",
///     category: "HighAvailability",
///     instanceName: name,
///     vswitchId: defaultSwitch.id,
///     dbInstanceStorageType: "local_ssd",
/// });
/// const defaultRdsInstanceCrossBackupPolicy = new alicloud.rds.RdsInstanceCrossBackupPolicy("default", {
///     instanceId: defaultInstance.id,
///     crossBackupRegion: regions.then(regions => regions.ids?.[0]),
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
/// default = alicloud.rds.get_zones(engine="MySQL",
///     engine_version="8.0",
///     db_instance_storage_type="local_ssd",
///     category="HighAvailability")
/// default_get_instance_classes = alicloud.rds.get_instance_classes(zone_id=default.ids[0],
///     engine="MySQL",
///     engine_version="8.0",
///     db_instance_storage_type="local_ssd",
///     category="HighAvailability")
/// regions = alicloud.rds.get_cross_regions()
/// default_network = alicloud.vpc.Network("default",
///     vpc_name=name,
///     cidr_block="172.16.0.0/16")
/// default_switch = alicloud.vpc.Switch("default",
///     vpc_id=default_network.id,
///     cidr_block="172.16.0.0/24",
///     zone_id=default.ids[0],
///     vswitch_name=name)
/// default_instance = alicloud.rds.Instance("default",
///     engine="MySQL",
///     engine_version="8.0",
///     instance_type=default_get_instance_classes.instance_classes[0].instance_class,
///     instance_storage=default_get_instance_classes.instance_classes[0].storage_range.min,
///     instance_charge_type="Postpaid",
///     category="HighAvailability",
///     instance_name=name,
///     vswitch_id=default_switch.id,
///     db_instance_storage_type="local_ssd")
/// default_rds_instance_cross_backup_policy = alicloud.rds.RdsInstanceCrossBackupPolicy("default",
///     instance_id=default_instance.id,
///     cross_backup_region=regions.ids[0])
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
///         EngineVersion = "8.0",
///         DbInstanceStorageType = "local_ssd",
///         Category = "HighAvailability",
///     });
///
///     var defaultGetInstanceClasses = AliCloud.Rds.GetInstanceClasses.Invoke(new()
///     {
///         ZoneId = @default.Apply(getZonesResult => getZonesResult.Ids[0]),
///         Engine = "MySQL",
///         EngineVersion = "8.0",
///         DbInstanceStorageType = "local_ssd",
///         Category = "HighAvailability",
///     });
///
///     var regions = AliCloud.Rds.GetCrossRegions.Invoke();
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
///         ZoneId = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Ids[0])),
///         VswitchName = name,
///     });
///
///     var defaultInstance = new AliCloud.Rds.Instance("default", new()
///     {
///         Engine = "MySQL",
///         EngineVersion = "8.0",
///         InstanceType = defaultGetInstanceClasses.Apply(getInstanceClassesResult => getInstanceClassesResult.InstanceClasses[0]?.InstanceClass),
///         InstanceStorage = defaultGetInstanceClasses.Apply(getInstanceClassesResult => getInstanceClassesResult.InstanceClasses[0]?.StorageRange?.Min),
///         InstanceChargeType = "Postpaid",
///         Category = "HighAvailability",
///         InstanceName = name,
///         VswitchId = defaultSwitch.Id,
///         DbInstanceStorageType = "local_ssd",
///     });
///
///     var defaultRdsInstanceCrossBackupPolicy = new AliCloud.Rds.RdsInstanceCrossBackupPolicy("default", new()
///     {
///         InstanceId = defaultInstance.Id,
///         CrossBackupRegion = regions.Apply(getCrossRegionsResult => getCrossRegionsResult.Ids[0]),
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
/// 			Engine:                pulumi.StringRef("MySQL"),
/// 			EngineVersion:         pulumi.StringRef("8.0"),
/// 			DbInstanceStorageType: pulumi.StringRef("local_ssd"),
/// 			Category:              pulumi.StringRef("HighAvailability"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetInstanceClasses, err := rds.GetInstanceClasses(ctx, &rds.GetInstanceClassesArgs{
/// 			ZoneId:                pulumi.StringRef(_default.Ids[0]),
/// 			Engine:                pulumi.StringRef("MySQL"),
/// 			EngineVersion:         pulumi.StringRef("8.0"),
/// 			DbInstanceStorageType: pulumi.StringRef("local_ssd"),
/// 			Category:              pulumi.StringRef("HighAvailability"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		regions, err := rds.GetCrossRegions(ctx, &rds.GetCrossRegionsArgs{}, nil)
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
/// 			ZoneId:      pulumi.String(_default.Ids[0]),
/// 			VswitchName: pulumi.String(name),
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
/// 			Category:              pulumi.String("HighAvailability"),
/// 			InstanceName:          pulumi.String(name),
/// 			VswitchId:             defaultSwitch.ID(),
/// 			DbInstanceStorageType: pulumi.String("local_ssd"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = rds.NewRdsInstanceCrossBackupPolicy(ctx, "default", &rds.RdsInstanceCrossBackupPolicyArgs{
/// 			InstanceId:        defaultInstance.ID(),
/// 			CrossBackupRegion: pulumi.String(regions.Ids[0]),
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
/// import com.pulumi.alicloud.rds.inputs.GetInstanceClassesArgs;
/// import com.pulumi.alicloud.rds.inputs.GetCrossRegionsArgs;
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.rds.Instance;
/// import com.pulumi.alicloud.rds.InstanceArgs;
/// import com.pulumi.alicloud.rds.RdsInstanceCrossBackupPolicy;
/// import com.pulumi.alicloud.rds.RdsInstanceCrossBackupPolicyArgs;
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
///             .engineVersion("8.0")
///             .dbInstanceStorageType("local_ssd")
///             .category("HighAvailability")
///             .build());
///
///         final var defaultGetInstanceClasses = RdsFunctions.getInstanceClasses(GetInstanceClassesArgs.builder()
///             .zoneId(default_.ids()[0])
///             .engine("MySQL")
///             .engineVersion("8.0")
///             .dbInstanceStorageType("local_ssd")
///             .category("HighAvailability")
///             .build());
///
///         final var regions = RdsFunctions.getCrossRegions(GetCrossRegionsArgs.builder()
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
///             .zoneId(default_.ids()[0])
///             .vswitchName(name)
///             .build());
///
///         var defaultInstance = new Instance("defaultInstance", InstanceArgs.builder()
///             .engine("MySQL")
///             .engineVersion("8.0")
///             .instanceType(defaultGetInstanceClasses.instanceClasses()[0].instanceClass())
///             .instanceStorage(defaultGetInstanceClasses.instanceClasses()[0].storageRange().min())
///             .instanceChargeType("Postpaid")
///             .category("HighAvailability")
///             .instanceName(name)
///             .vswitchId(defaultSwitch.id())
///             .dbInstanceStorageType("local_ssd")
///             .build());
///
///         var defaultRdsInstanceCrossBackupPolicy = new RdsInstanceCrossBackupPolicy("defaultRdsInstanceCrossBackupPolicy", RdsInstanceCrossBackupPolicyArgs.builder()
///             .instanceId(defaultInstance.id())
///             .crossBackupRegion(regions.ids()[0])
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
///       zoneId: ${default.ids[0]}
///       vswitchName: ${name}
///   defaultInstance:
///     type: alicloud:rds:Instance
///     name: default
///     properties:
///       engine: MySQL
///       engineVersion: '8.0'
///       instanceType: ${defaultGetInstanceClasses.instanceClasses[0].instanceClass}
///       instanceStorage: ${defaultGetInstanceClasses.instanceClasses[0].storageRange.min}
///       instanceChargeType: Postpaid
///       category: HighAvailability
///       instanceName: ${name}
///       vswitchId: ${defaultSwitch.id}
///       dbInstanceStorageType: local_ssd
///   defaultRdsInstanceCrossBackupPolicy:
///     type: alicloud:rds:RdsInstanceCrossBackupPolicy
///     name: default
///     properties:
///       instanceId: ${defaultInstance.id}
///       crossBackupRegion: ${regions.ids[0]}
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:rds:getZones
///       arguments:
///         engine: MySQL
///         engineVersion: '8.0'
///         dbInstanceStorageType: local_ssd
///         category: HighAvailability
///   defaultGetInstanceClasses:
///     fn::invoke:
///       function: alicloud:rds:getInstanceClasses
///       arguments:
///         zoneId: ${default.ids[0]}
///         engine: MySQL
///         engineVersion: '8.0'
///         dbInstanceStorageType: local_ssd
///         category: HighAvailability
///   regions:
///     fn::invoke:
///       function: alicloud:rds:getCrossRegions
///       arguments: {}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// RDS remote disaster recovery policies can be imported using id or instance id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:rds/rdsInstanceCrossBackupPolicy:RdsInstanceCrossBackupPolicy example "rm-12345678"
/// ```
class RdsInstanceCrossBackupPolicy extends pulumi.CustomResource {
  /// The status of the overall cross-region backup switch on the instance. Valid values:
  /// - Disabled
  /// - Enable
  late final pulumi.Output<String> backupEnabled;
  /// The time when cross-region backup was enabled on the instance. The time follows the ISO 8601 standard in the yyyy-MM-ddTHH:mm:ssZ format. The time is displayed in UTC.
  late final pulumi.Output<String> backupEnabledTime;
  /// The ID of the destination region where the cross-region backup files of the instance are stored.
  late final pulumi.Output<String> crossBackupRegion;
  /// The policy that is used to save cross-region backups of the instance. Default value: 1. The default value 1 indicates that all cross-region backups are saved.
  late final pulumi.Output<String> crossBackupType;
  /// The state of the instance. For more information, see Instance status.
  late final pulumi.Output<String> dbInstanceStatus;
  /// The ID of the instance.
  late final pulumi.Output<String> instanceId;
  /// The lock status of the instance. Valid values:
  /// - Unlock: The instance is not locked.
  /// - ManualLock: The instance is manually locked.
  /// - LockByExpiration: The instance is locked upon expiration.
  /// - LockByRestoration: The instance is automatically locked before a rollback.
  /// - LockByDiskQuota: The instance is automatically locked because its storage space is exhausted. In this situation, the instance is inaccessible.
  late final pulumi.Output<String> lockMode;
  /// The status of the cross-region log backup feature on the instance. Valid values:
  /// - Enable: Enables the feature.
  /// - Disabled: Disables the feature.
  late final pulumi.Output<String> logBackupEnabled;
  /// The time when cross-region log backup was enabled on the instance. The time follows the ISO 8601 standard in the yyyy-MM-ddTHH:mm:ssZ format. The time is displayed in UTC.
  late final pulumi.Output<String> logBackupEnabledTime;
  /// The policy that is used to retain cross-region backups of the instance. Default value: 1. The default value 1 indicate that cross-region backups are retained based on the specified retention period.
  late final pulumi.Output<String> retentType;
  /// The number of days for which the cross-region backup files of the instance are retained. Valid values: 7 to 1825. Default value: 7.
  late final pulumi.Output<int> retention;

  /// Creates a new [RdsInstanceCrossBackupPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RdsInstanceCrossBackupPolicy]. {@macro pulumi_rds_rds_instance_cross_backup_policy_rds_instance_cross_backup_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RdsInstanceCrossBackupPolicy(
    String name, {
    RdsInstanceCrossBackupPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:rds/rdsInstanceCrossBackupPolicy:RdsInstanceCrossBackupPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.backupEnabled = registerOutput<String>('backupEnabled');
    this.backupEnabledTime = registerOutput<String>('backupEnabledTime');
    this.crossBackupRegion = registerOutput<String>('crossBackupRegion');
    this.crossBackupType = registerOutput<String>('crossBackupType');
    this.dbInstanceStatus = registerOutput<String>('dbInstanceStatus');
    this.instanceId = registerOutput<String>('instanceId');
    this.lockMode = registerOutput<String>('lockMode');
    this.logBackupEnabled = registerOutput<String>('logBackupEnabled');
    this.logBackupEnabledTime = registerOutput<String>('logBackupEnabledTime');
    this.retentType = registerOutput<String>('retentType');
    this.retention = registerOutput<int>('retention');
  }

  /// Gets an existing [RdsInstanceCrossBackupPolicy] resource's state with the given [name] and [id].
  static RdsInstanceCrossBackupPolicy get(
    String name,
    pulumi.Input<String> id, {
    RdsInstanceCrossBackupPolicyState? state,
  }) {
    return RdsInstanceCrossBackupPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  RdsInstanceCrossBackupPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:rds/rdsInstanceCrossBackupPolicy:RdsInstanceCrossBackupPolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.backupEnabled = registerOutput<String>('backupEnabled');
    this.backupEnabledTime = registerOutput<String>('backupEnabledTime');
    this.crossBackupRegion = registerOutput<String>('crossBackupRegion');
    this.crossBackupType = registerOutput<String>('crossBackupType');
    this.dbInstanceStatus = registerOutput<String>('dbInstanceStatus');
    this.instanceId = registerOutput<String>('instanceId');
    this.lockMode = registerOutput<String>('lockMode');
    this.logBackupEnabled = registerOutput<String>('logBackupEnabled');
    this.logBackupEnabledTime = registerOutput<String>('logBackupEnabledTime');
    this.retentType = registerOutput<String>('retentType');
    this.retention = registerOutput<int>('retention');
  }
}
