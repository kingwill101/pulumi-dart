import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_args.dart';
import 'instance_parameter.dart';
import 'instance_replica_set.dart';
import 'instance_zone_info.dart';

/// Provides a MongoDB instance resource supports replica set instances only. the MongoDB provides stable, reliable, and automatic scalable database services.
/// It offers a full range of database solutions, such as disaster recovery, backup, recovery, monitoring, and alarms.
/// You can see detail product introduction [here](https://www.alibabacloud.com/help/doc-detail/26558.htm)
///
/// > **NOTE:** Available since v1.37.0.
///
/// > **NOTE:**  Create MongoDB instance or change instance type and storage would cost 5~10 minutes. Please make full preparation
///
/// ## Example Usage
///
/// ### Create a Mongodb instance
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform-example";
/// const _default = alicloud.mongodb.getZones({});
/// const index = _default.then(_default => _default.zones).length.apply(length => length - 1);
/// const zoneId = _default.then(_default => _default.zones[index].id);
/// const defaultNetwork = new alicloud.vpc.Network("default", {
///     vpcName: name,
///     cidrBlock: "172.17.3.0/24",
/// });
/// const defaultSwitch = new alicloud.vpc.Switch("default", {
///     vswitchName: name,
///     cidrBlock: "172.17.3.0/24",
///     vpcId: defaultNetwork.id,
///     zoneId: zoneId,
/// });
/// const defaultInstance = new alicloud.mongodb.Instance("default", {
///     engineVersion: "4.2",
///     dbInstanceClass: "dds.mongo.mid",
///     dbInstanceStorage: 10,
///     vswitchId: defaultSwitch.id,
///     securityIpLists: [
///         "10.168.1.12",
///         "100.69.7.112",
///     ],
///     name: name,
///     tags: {
///         Created: "TF",
///         For: "example",
///     },
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
/// default = alicloud.mongodb.get_zones()
/// index = len(default.zones).apply(lambda length: length - 1)
/// zone_id = default.zones[index].id
/// default_network = alicloud.vpc.Network("default",
///     vpc_name=name,
///     cidr_block="172.17.3.0/24")
/// default_switch = alicloud.vpc.Switch("default",
///     vswitch_name=name,
///     cidr_block="172.17.3.0/24",
///     vpc_id=default_network.id,
///     zone_id=zone_id)
/// default_instance = alicloud.mongodb.Instance("default",
///     engine_version="4.2",
///     db_instance_class="dds.mongo.mid",
///     db_instance_storage=10,
///     vswitch_id=default_switch.id,
///     security_ip_lists=[
///         "10.168.1.12",
///         "100.69.7.112",
///     ],
///     name=name,
///     tags={
///         "Created": "TF",
///         "For": "example",
///     })
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
///     var @default = AliCloud.MongoDB.GetZones.Invoke();
///
///     var index = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones)).Length.Apply(length => length - 1);
///
///     var zoneId = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones)[index].Id);
///
///     var defaultNetwork = new AliCloud.Vpc.Network("default", new()
///     {
///         VpcName = name,
///         CidrBlock = "172.17.3.0/24",
///     });
///
///     var defaultSwitch = new AliCloud.Vpc.Switch("default", new()
///     {
///         VswitchName = name,
///         CidrBlock = "172.17.3.0/24",
///         VpcId = defaultNetwork.Id,
///         ZoneId = zoneId,
///     });
///
///     var defaultInstance = new AliCloud.MongoDB.Instance("default", new()
///     {
///         EngineVersion = "4.2",
///         DbInstanceClass = "dds.mongo.mid",
///         DbInstanceStorage = 10,
///         VswitchId = defaultSwitch.Id,
///         SecurityIpLists = new[]
///         {
///             "10.168.1.12",
///             "100.69.7.112",
///         },
///         Name = name,
///         Tags =
///         {
///             { "Created", "TF" },
///             { "For", "example" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/mongodb"
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
/// 		_default, err := mongodb.GetZones(ctx, &mongodb.GetZonesArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		index := len(_default.Zones).ApplyT(func(length int) (float64, error) {
/// 			return float64(length.ApplyT(func(__convert float64) (float64, error) {
/// 				return __convert - 1, nil
/// 			}).(pulumi.Float64Output)), nil
/// 		}).(pulumi.Float64Output)
/// 		zoneId := _default.Zones[index].Id
/// 		defaultNetwork, err := vpc.NewNetwork(ctx, "default", &vpc.NetworkArgs{
/// 			VpcName:   pulumi.String(name),
/// 			CidrBlock: pulumi.String("172.17.3.0/24"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSwitch, err := vpc.NewSwitch(ctx, "default", &vpc.SwitchArgs{
/// 			VswitchName: pulumi.String(name),
/// 			CidrBlock:   pulumi.String("172.17.3.0/24"),
/// 			VpcId:       defaultNetwork.ID(),
/// 			ZoneId:      pulumi.String(zoneId),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = mongodb.NewInstance(ctx, "default", &mongodb.InstanceArgs{
/// 			EngineVersion:     pulumi.String("4.2"),
/// 			DbInstanceClass:   pulumi.String("dds.mongo.mid"),
/// 			DbInstanceStorage: pulumi.Int(10),
/// 			VswitchId:         defaultSwitch.ID(),
/// 			SecurityIpLists: pulumi.StringArray{
/// 				pulumi.String("10.168.1.12"),
/// 				pulumi.String("100.69.7.112"),
/// 			},
/// 			Name: pulumi.String(name),
/// 			Tags: pulumi.StringMap{
/// 				"Created": pulumi.String("TF"),
/// 				"For":     pulumi.String("example"),
/// 			},
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
/// import com.pulumi.alicloud.mongodb.MongodbFunctions;
/// import com.pulumi.alicloud.mongodb.inputs.GetZonesArgs;
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.mongodb.Instance;
/// import com.pulumi.alicloud.mongodb.InstanceArgs;
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
///         final var default = MongodbFunctions.getZones(GetZonesArgs.builder()
///             .build());
///
///         final var index = default_.zones().length().applyValue(_length -> _length - 1);
///
///         final var zoneId = default_.zones()[index].id();
///
///         var defaultNetwork = new Network("defaultNetwork", NetworkArgs.builder()
///             .vpcName(name)
///             .cidrBlock("172.17.3.0/24")
///             .build());
///
///         var defaultSwitch = new Switch("defaultSwitch", SwitchArgs.builder()
///             .vswitchName(name)
///             .cidrBlock("172.17.3.0/24")
///             .vpcId(defaultNetwork.id())
///             .zoneId(zoneId)
///             .build());
///
///         var defaultInstance = new Instance("defaultInstance", InstanceArgs.builder()
///             .engineVersion("4.2")
///             .dbInstanceClass("dds.mongo.mid")
///             .dbInstanceStorage(10)
///             .vswitchId(defaultSwitch.id())
///             .securityIpLists(
///                 "10.168.1.12",
///                 "100.69.7.112")
///             .name(name)
///             .tags(Map.ofEntries(
///                 Map.entry("Created", "TF"),
///                 Map.entry("For", "example")
///             ))
///             .build());
///
///     }
/// }
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Module Support
///
/// You can use to the existing mongodb module
/// to create a MongoDB instance resource one-click.
///
/// ## Import
///
/// MongoDB instance can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:mongodb/instance:Instance example <id>
/// ```
class Instance extends pulumi.CustomResource {
  /// Password of the root account. It is a string of 6 to 32 characters and is composed of letters, numbers, and underlines.
  late final pulumi.Output<String?> accountPassword;
  /// Auto renew for prepaid. Default value: `false`. Valid values: `true`, `false`.
  late final pulumi.Output<bool?> autoRenew;
  /// The auto-renewal period. Unit: months. Valid values: `1` to `12`.
  /// > **NOTE:** If `auto_renew` is set to `true`, `auto_renew_duration` must be set.
  late final pulumi.Output<int> autoRenewDuration;
  /// The frequency at which high-frequency backups are created. Valid values: `-1`, `15`, `30`, `60`, `120`, `180`, `240`, `360`, `480`, `720`.
  late final pulumi.Output<String> backupInterval;
  /// MongoDB Instance backup period. It is required when `backup_time` was existed. Valid values: [Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday]. Default to [Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday].
  late final pulumi.Output<List<String>> backupPeriods;
  /// The retention period of full backups.
  late final pulumi.Output<int> backupRetentionPeriod;
  /// The backup retention policy configured for the instance. Valid values:
  late final pulumi.Output<int?> backupRetentionPolicyOnClusterDeletion;
  /// MongoDB instance backup time. It is required when `backup_period` was existed. In the format of HH:mmZ- HH:mmZ. Time setting interval is one hour. If not set, the system will return a default, like "23:00Z-24:00Z".
  late final pulumi.Output<String> backupTime;
  /// The ID of the encryption key.
  late final pulumi.Output<String?> cloudDiskEncryptionKey;
  /// Instance specification. see [Instance specifications](https://www.alibabacloud.com/help/doc-detail/57141.htm).
  late final pulumi.Output<String> dbInstanceClass;
  /// Indicates whether release protection is enabled for the instance. Valid values: `true`, `false`.
  late final pulumi.Output<bool?> dbInstanceReleaseProtection;
  /// User-defined DB instance storage space.Unit: GB. Value range:
  /// - Custom storage space.
  /// - 10-GB increments.
  late final pulumi.Output<int> dbInstanceStorage;
  /// The time when the changed configurations take effect. Valid values: `Immediately`, `MaintainTime`.
  late final pulumi.Output<String?> effectiveTime;
  /// Specifies whether to enable the log backup feature. Valid values:
  late final pulumi.Output<int> enableBackupLog;
  /// Whether to enable cloud disk encryption. Default value: `false`. Valid values: `true`, `false`.
  late final pulumi.Output<bool?> encrypted;
  /// The ID of the custom key.
  late final pulumi.Output<String> encryptionKey;
  /// The encryption method. **NOTE:** `encryptor_name` is valid only when `tde_status` is set to `enabled`.
  late final pulumi.Output<String> encryptorName;
  /// Database version. Value options can refer to the latest docs [CreateDBInstance](https://www.alibabacloud.com/help/doc-detail/61763.htm) `EngineVersion`. **NOTE:** From version 1.225.0, `engine_version` can be modified.
  late final pulumi.Output<String> engineVersion;
  /// Specifies whether to forcibly enable SSL encryption for connections. Valid values:
  late final pulumi.Output<String> forceEncryption;
  /// The list of Global Security Group Ids.
  late final pulumi.Output<List<String>?> globalSecurityGroupLists;
  /// Configure the zone where the hidden node is located to deploy multiple zones. **NOTE:** This parameter value cannot be the same as `zone_id` and `secondary_zone_id` parameter values. From version 1.253.0, `hidden_zone_id` can be modified.
  late final pulumi.Output<String?> hiddenZoneId;
  /// The billing method of the instance. Default value: `PostPaid`. Valid values: `PrePaid`, `PostPaid`. **NOTE:** It can be modified from `PostPaid` to `PrePaid` after version 1.63.0.
  late final pulumi.Output<String> instanceChargeType;
  /// (Available since v1.271.0) A list of instance keys.
  late final pulumi.Output<List<String>> keyIds;
  /// An KMS encrypts password used to a instance. If the `account_password` is filled in, this field will be ignored.
  late final pulumi.Output<String?> kmsEncryptedPassword;
  /// An KMS encryption context used to decrypt `kms_encrypted_password` before creating or updating instance with `kms_encrypted_password`. See [Encryption Context](https://www.alibabacloud.com/help/doc-detail/42975.htm). It is valid when `kms_encrypted_password` is set.
  late final pulumi.Output<Map<String, String>?> kmsEncryptionContext;
  /// The number of days for which log backups are retained. Valid values: `7` to `730`. **NOTE:** `log_backup_retention_period` is valid only when `enable_backup_log` is set to `1`.
  late final pulumi.Output<int> logBackupRetentionPeriod;
  /// The end time of the operation and maintenance time period of the instance, in the format of HH:mmZ (UTC time).
  /// > **NOTE:** The start time to the end time must be 1 hour. For example, the MaintainStartTime is 01:00Z, then the MaintainEndTime must be 02:00Z.
  late final pulumi.Output<String> maintainEndTime;
  /// The start time of the operation and maintenance time period of the instance, in the format of HH:mmZ (UTC time).
  late final pulumi.Output<String> maintainStartTime;
  /// The name of DB instance. It must be 2 to 256 characters in length.
  late final pulumi.Output<String> name;
  /// The network type of the instance. Valid values: `VPC`.
  /// > **NOTE:** From 2022.2.21, `network_type` cannot be set to `Classic`. For more information, see[Product Notification](https://www.alibabacloud.com/help/en/mongodb/product-overview/eol-notice-for-apsaradb-for-mongodb-instances-in-the-classic-network)
  late final pulumi.Output<String> networkType;
  /// The type of configuration changes performed. Default value: `DOWNGRADE`. Valid values:
  /// - `UPGRADE`: The specifications are upgraded.
  /// - `DOWNGRADE`: The specifications are downgraded.
  /// > **NOTE:** `order_type` is only applicable to instances when `instance_charge_type` is `PrePaid`.
  late final pulumi.Output<String?> orderType;
  /// Set of parameters needs to be set after mongodb instance was launched. See `parameters` below.
  late final pulumi.Output<List<InstanceParameter>> parameters;
  /// The duration that you will buy DB instance (in month). It is valid when `instance_charge_type` is `PrePaid`. Default value: `1`. Valid values: [1~9], 12, 24, 36.
  late final pulumi.Output<int> period;
  /// The provisioned IOPS. Valid values: `0` to `50000`.
  late final pulumi.Output<int?> provisionedIops;
  /// The number of read-only nodes in the replica set instance. Default value: 0. Valid values: 0 to 5.
  late final pulumi.Output<int> readonlyReplicas;
  /// The name of the mongo replica set.
  late final pulumi.Output<String> replicaSetName;
  /// Replica set instance information.
  late final pulumi.Output<List<InstanceReplicaSet>> replicaSets;
  /// Number of replica set nodes. Valid values: `1`, `3`, `5`, `7`.
  late final pulumi.Output<int> replicationFactor;
  /// The ID of the Resource Group.
  late final pulumi.Output<String> resourceGroupId;
  /// The point in time to which you want to restore the instance. You can specify any point in time within the last seven days. The time must be in the yyyy-MM-ddTHH:mm:ssZ format and in UTC.
  /// > **NOTE:** You must specify `src_db_instance_id` and `restore_time` only when you clone an instance based on a point in time.
  late final pulumi.Output<String?> restoreTime;
  /// Instance data backup retention days. Available since v1.42.0.
  late final pulumi.Output<int> retentionPeriod;
  /// The Alibaba Cloud Resource Name (ARN) of the specified Resource Access Management (RAM) role.
  late final pulumi.Output<String> roleArn;
  /// Configure the available area where the slave node (Secondary node) is located to realize multi-available area deployment. **NOTE:** This parameter value cannot be the same as `zone_id` and `hidden_zone_id` parameter values. From version 1.253.0, `secondary_zone_id` can be modified.
  late final pulumi.Output<String?> secondaryZoneId;
  /// The Security Group ID of ECS.
  late final pulumi.Output<String?> securityGroupId;
  /// List of IP addresses allowed to access all databases of an instance. The list contains up to 1,000 IP addresses, separated by commas. Supported formats include 0.0.0.0/0, 10.23.12.24 (IP), and 10.23.12.24/24 (Classless Inter-Domain Routing (CIDR) mode. /24 represents the length of the prefix in an IP address. The range of the prefix length is [1,32]).
  late final pulumi.Output<List<String>> securityIpLists;
  /// The snapshot backup type. Default value: `Standard`. Valid values:
  /// - `Standard`: standard backup.
  /// - `Flash `: single-digit second backup.
  late final pulumi.Output<String> snapshotBackupType;
  /// The source instance ID.
  late final pulumi.Output<String?> srcDbInstanceId;
  late final pulumi.Output<String?> sslAction;
  /// Status of the SSL feature.
  late final pulumi.Output<String> sslStatus;
  /// The storage engine of the instance. Default value: `WiredTiger`. Valid values: `WiredTiger`, `RocksDB`.
  late final pulumi.Output<String> storageEngine;
  /// The storage type of the instance. Valid values: `cloud_essd1`, `cloud_essd2`, `cloud_essd3`, `cloud_auto`, `local_ssd`. **NOTE:** From version 1.229.0, `storage_type` can be modified. However, `storage_type` can only be modified to `cloud_auto`.
  late final pulumi.Output<String> storageType;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The TDE(Transparent Data Encryption) status. Note: `tde_status` cannot be set to `disabled` after it is enabled, see [Transparent Data Encryption](https://www.alibabacloud.com/help/en/mongodb/user-guide/configure-tde-for-an-apsaradb-for-mongodb-instance) for more details.
  late final pulumi.Output<String> tdeStatus;
  /// The ID of the VPC. > **NOTE:** `vpc_id` is valid only when `network_type` is set to `VPC`.
  late final pulumi.Output<String> vpcId;
  /// The virtual switch ID to launch DB instances in one VPC.
  late final pulumi.Output<String> vswitchId;
  /// The Zone to launch the DB instance. it supports multiple zone.
  /// If it is a multi-zone and `vswitch_id` is specified, the vswitch must in one of them.
  /// The multiple zone ID can be retrieved by setting `multi` to "true" in the data source `alicloud.getZones`.
  late final pulumi.Output<String> zoneId;
  /// (Available since v1.271.0) The information of nodes in the zone.
  late final pulumi.Output<List<InstanceZoneInfo>> zoneInfos;

  /// Creates a new [Instance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Instance]. {@macro pulumi_mongodb_instance_instance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Instance(
    String name, {
    InstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:mongodb/instance:Instance',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accountPassword = registerOutput<String?>('accountPassword');
    this.autoRenew = registerOutput<bool?>('autoRenew');
    this.autoRenewDuration = registerOutput<int>('autoRenewDuration');
    this.backupInterval = registerOutput<String>('backupInterval');
    this.backupPeriods = registerOutput<List<String>>('backupPeriods');
    this.backupRetentionPeriod = registerOutput<int>('backupRetentionPeriod');
    this.backupRetentionPolicyOnClusterDeletion = registerOutput<int?>('backupRetentionPolicyOnClusterDeletion');
    this.backupTime = registerOutput<String>('backupTime');
    this.cloudDiskEncryptionKey = registerOutput<String?>('cloudDiskEncryptionKey');
    this.dbInstanceClass = registerOutput<String>('dbInstanceClass');
    this.dbInstanceReleaseProtection = registerOutput<bool?>('dbInstanceReleaseProtection');
    this.dbInstanceStorage = registerOutput<int>('dbInstanceStorage');
    this.effectiveTime = registerOutput<String?>('effectiveTime');
    this.enableBackupLog = registerOutput<int>('enableBackupLog');
    this.encrypted = registerOutput<bool?>('encrypted');
    this.encryptionKey = registerOutput<String>('encryptionKey');
    this.encryptorName = registerOutput<String>('encryptorName');
    this.engineVersion = registerOutput<String>('engineVersion');
    this.forceEncryption = registerOutput<String>('forceEncryption');
    this.globalSecurityGroupLists = registerOutput<List<String>?>('globalSecurityGroupLists');
    this.hiddenZoneId = registerOutput<String?>('hiddenZoneId');
    this.instanceChargeType = registerOutput<String>('instanceChargeType');
    this.keyIds = registerOutput<List<String>>('keyIds');
    this.kmsEncryptedPassword = registerOutput<String?>('kmsEncryptedPassword');
    this.kmsEncryptionContext = registerOutput<Map<String, String>?>('kmsEncryptionContext');
    this.logBackupRetentionPeriod = registerOutput<int>('logBackupRetentionPeriod');
    this.maintainEndTime = registerOutput<String>('maintainEndTime');
    this.maintainStartTime = registerOutput<String>('maintainStartTime');
    this.name = registerOutput<String>('name');
    this.networkType = registerOutput<String>('networkType');
    this.orderType = registerOutput<String?>('orderType');
    this.parameters = registerOutput<List<InstanceParameter>>('parameters');
    this.period = registerOutput<int>('period');
    this.provisionedIops = registerOutput<int?>('provisionedIops');
    this.readonlyReplicas = registerOutput<int>('readonlyReplicas');
    this.replicaSetName = registerOutput<String>('replicaSetName');
    this.replicaSets = registerOutput<List<InstanceReplicaSet>>('replicaSets');
    this.replicationFactor = registerOutput<int>('replicationFactor');
    this.resourceGroupId = registerOutput<String>('resourceGroupId');
    this.restoreTime = registerOutput<String?>('restoreTime');
    this.retentionPeriod = registerOutput<int>('retentionPeriod');
    this.roleArn = registerOutput<String>('roleArn');
    this.secondaryZoneId = registerOutput<String?>('secondaryZoneId');
    this.securityGroupId = registerOutput<String?>('securityGroupId');
    this.securityIpLists = registerOutput<List<String>>('securityIpLists');
    this.snapshotBackupType = registerOutput<String>('snapshotBackupType');
    this.srcDbInstanceId = registerOutput<String?>('srcDbInstanceId');
    this.sslAction = registerOutput<String?>('sslAction');
    this.sslStatus = registerOutput<String>('sslStatus');
    this.storageEngine = registerOutput<String>('storageEngine');
    this.storageType = registerOutput<String>('storageType');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tdeStatus = registerOutput<String>('tdeStatus');
    this.vpcId = registerOutput<String>('vpcId');
    this.vswitchId = registerOutput<String>('vswitchId');
    this.zoneId = registerOutput<String>('zoneId');
    this.zoneInfos = registerOutput<List<InstanceZoneInfo>>('zoneInfos');
  }
}
