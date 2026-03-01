import 'package:pulumi/pulumi.dart' as pulumi;
import 'sharding_instance_args.dart';
import 'sharding_instance_config_server_list.dart';
import 'sharding_instance_mongo_list.dart';
import 'sharding_instance_parameter.dart';
import 'sharding_instance_shard_list.dart';
import 'sharding_instance_zone_info.dart';

/// Provides a MongoDB Sharding Instance resource supports replica set instances only. the MongoDB provides stable, reliable, and automatic scalable database services.
/// It offers a full range of database solutions, such as disaster recovery, backup, recovery, monitoring, and alarms.
/// You can see detail product introduction [here](https://www.alibabacloud.com/help/doc-detail/26558.htm)
///
/// > **NOTE:** Available since v1.40.0.
///
/// > **NOTE:**  The following regions don't support create Classic network MongoDB Sharding Instance.
/// [`cn-zhangjiakou`,`cn-huhehaote`,`ap-southeast-3`,`ap-southeast-5`,`me-east-1`,`ap-northeast-1`,`eu-west-1`]
///
/// > **NOTE:**  Create MongoDB Sharding instance or change instance type and storage would cost 10~20 minutes. Please make full preparation.
///
/// ## Example Usage
///
/// ### Create a Mongodb Sharding instance
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
/// const defaultNetwork = new alicloud.vpc.Network("default", {
///     vpcName: name,
///     cidrBlock: "172.17.3.0/24",
/// });
/// const defaultSwitch = new alicloud.vpc.Switch("default", {
///     vswitchName: name,
///     cidrBlock: "172.17.3.0/24",
///     vpcId: defaultNetwork.id,
///     zoneId: _default.then(_default => _default.zones?.[1]?.id),
/// });
/// const defaultShardingInstance = new alicloud.mongodb.ShardingInstance("default", {
///     engineVersion: "4.2",
///     vswitchId: defaultSwitch.id,
///     zoneId: defaultSwitch.zoneId,
///     name: name,
///     mongoLists: [
///         {
///             nodeClass: "dds.mongos.mid",
///         },
///         {
///             nodeClass: "dds.mongos.mid",
///         },
///     ],
///     shardLists: [
///         {
///             nodeClass: "dds.shard.mid",
///             nodeStorage: 10,
///         },
///         {
///             nodeClass: "dds.shard.standard",
///             nodeStorage: 20,
///             readonlyReplicas: 1,
///         },
///     ],
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
/// default_network = alicloud.vpc.Network("default",
///     vpc_name=name,
///     cidr_block="172.17.3.0/24")
/// default_switch = alicloud.vpc.Switch("default",
///     vswitch_name=name,
///     cidr_block="172.17.3.0/24",
///     vpc_id=default_network.id,
///     zone_id=default.zones[1].id)
/// default_sharding_instance = alicloud.mongodb.ShardingInstance("default",
///     engine_version="4.2",
///     vswitch_id=default_switch.id,
///     zone_id=default_switch.zone_id,
///     name=name,
///     mongo_lists=[
///         {
///             "node_class": "dds.mongos.mid",
///         },
///         {
///             "node_class": "dds.mongos.mid",
///         },
///     ],
///     shard_lists=[
///         {
///             "node_class": "dds.shard.mid",
///             "node_storage": 10,
///         },
///         {
///             "node_class": "dds.shard.standard",
///             "node_storage": 20,
///             "readonly_replicas": 1,
///         },
///     ])
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
///         ZoneId = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones[1]?.Id)),
///     });
///
///     var defaultShardingInstance = new AliCloud.MongoDB.ShardingInstance("default", new()
///     {
///         EngineVersion = "4.2",
///         VswitchId = defaultSwitch.Id,
///         ZoneId = defaultSwitch.ZoneId,
///         Name = name,
///         MongoLists = new[]
///         {
///             new AliCloud.MongoDB.Inputs.ShardingInstanceMongoListArgs
///             {
///                 NodeClass = "dds.mongos.mid",
///             },
///             new AliCloud.MongoDB.Inputs.ShardingInstanceMongoListArgs
///             {
///                 NodeClass = "dds.mongos.mid",
///             },
///         },
///         ShardLists = new[]
///         {
///             new AliCloud.MongoDB.Inputs.ShardingInstanceShardListArgs
///             {
///                 NodeClass = "dds.shard.mid",
///                 NodeStorage = 10,
///             },
///             new AliCloud.MongoDB.Inputs.ShardingInstanceShardListArgs
///             {
///                 NodeClass = "dds.shard.standard",
///                 NodeStorage = 20,
///                 ReadonlyReplicas = 1,
///             },
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
/// 			ZoneId:      pulumi.String(_default.Zones[1].Id),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = mongodb.NewShardingInstance(ctx, "default", &mongodb.ShardingInstanceArgs{
/// 			EngineVersion: pulumi.String("4.2"),
/// 			VswitchId:     defaultSwitch.ID(),
/// 			ZoneId:        defaultSwitch.ZoneId,
/// 			Name:          pulumi.String(name),
/// 			MongoLists: mongodb.ShardingInstanceMongoListArray{
/// 				&mongodb.ShardingInstanceMongoListArgs{
/// 					NodeClass: pulumi.String("dds.mongos.mid"),
/// 				},
/// 				&mongodb.ShardingInstanceMongoListArgs{
/// 					NodeClass: pulumi.String("dds.mongos.mid"),
/// 				},
/// 			},
/// 			ShardLists: mongodb.ShardingInstanceShardListArray{
/// 				&mongodb.ShardingInstanceShardListArgs{
/// 					NodeClass:   pulumi.String("dds.shard.mid"),
/// 					NodeStorage: pulumi.Int(10),
/// 				},
/// 				&mongodb.ShardingInstanceShardListArgs{
/// 					NodeClass:        pulumi.String("dds.shard.standard"),
/// 					NodeStorage:      pulumi.Int(20),
/// 					ReadonlyReplicas: pulumi.Int(1),
/// 				},
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
/// import com.pulumi.alicloud.mongodb.ShardingInstance;
/// import com.pulumi.alicloud.mongodb.ShardingInstanceArgs;
/// import com.pulumi.alicloud.mongodb.inputs.ShardingInstanceMongoListArgs;
/// import com.pulumi.alicloud.mongodb.inputs.ShardingInstanceShardListArgs;
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
///         var defaultNetwork = new Network("defaultNetwork", NetworkArgs.builder()
///             .vpcName(name)
///             .cidrBlock("172.17.3.0/24")
///             .build());
///
///         var defaultSwitch = new Switch("defaultSwitch", SwitchArgs.builder()
///             .vswitchName(name)
///             .cidrBlock("172.17.3.0/24")
///             .vpcId(defaultNetwork.id())
///             .zoneId(default_.zones()[1].id())
///             .build());
///
///         var defaultShardingInstance = new ShardingInstance("defaultShardingInstance", ShardingInstanceArgs.builder()
///             .engineVersion("4.2")
///             .vswitchId(defaultSwitch.id())
///             .zoneId(defaultSwitch.zoneId())
///             .name(name)
///             .mongoLists(
///                 ShardingInstanceMongoListArgs.builder()
///                     .nodeClass("dds.mongos.mid")
///                     .build(),
///                 ShardingInstanceMongoListArgs.builder()
///                     .nodeClass("dds.mongos.mid")
///                     .build())
///             .shardLists(
///                 ShardingInstanceShardListArgs.builder()
///                     .nodeClass("dds.shard.mid")
///                     .nodeStorage(10)
///                     .build(),
///                 ShardingInstanceShardListArgs.builder()
///                     .nodeClass("dds.shard.standard")
///                     .nodeStorage(20)
///                     .readonlyReplicas(1)
///                     .build())
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
///   defaultNetwork:
///     type: alicloud:vpc:Network
///     name: default
///     properties:
///       vpcName: ${name}
///       cidrBlock: 172.17.3.0/24
///   defaultSwitch:
///     type: alicloud:vpc:Switch
///     name: default
///     properties:
///       vswitchName: ${name}
///       cidrBlock: 172.17.3.0/24
///       vpcId: ${defaultNetwork.id}
///       zoneId: ${default.zones[1].id}
///   defaultShardingInstance:
///     type: alicloud:mongodb:ShardingInstance
///     name: default
///     properties:
///       engineVersion: '4.2'
///       vswitchId: ${defaultSwitch.id}
///       zoneId: ${defaultSwitch.zoneId}
///       name: ${name}
///       mongoLists:
///         - nodeClass: dds.mongos.mid
///         - nodeClass: dds.mongos.mid
///       shardLists:
///         - nodeClass: dds.shard.mid
///           nodeStorage: '10'
///         - nodeClass: dds.shard.standard
///           nodeStorage: '20'
///           readonlyReplicas: '1'
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:mongodb:getZones
///       arguments: {}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Module Support
///
/// You can use to the existing mongodb-sharding module
/// to create a MongoDB Sharding Instance resource one-click.
///
/// ## Import
///
/// MongoDB Sharding Instance can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:mongodb/shardingInstance:ShardingInstance example <id>
/// ```
class ShardingInstance extends pulumi.CustomResource {
  /// Password of the root account. It is a string of 6 to 32 characters and is composed of letters, numbers, and underlines.
  late final pulumi.Output<String?> accountPassword;
  /// Auto renew for prepaid. Default value: `false`. Valid values: `true`, `false`.
  late final pulumi.Output<bool?> autoRenew;
  /// The auto-renewal period. Unit: months. Valid values: `1` to `12`.
  /// > **NOTE:** If `auto_renew` is set to `true`, `auto_renew_duration` must be set.
  late final pulumi.Output<int> autoRenewDuration;
  /// The frequency at which high-frequency backups are created. Valid values: `-1`, `15`, `30`, `60`, `120`, `180`, `240`, `360`, `480`, `720`.
  late final pulumi.Output<String> backupInterval;
  /// MongoDB Instance backup period. It is required when `backup_time` was existed. Valid values: [Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday]. Default to [Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday]
  late final pulumi.Output<List<String>> backupPeriods;
  /// The retention period of full backups.
  late final pulumi.Output<int> backupRetentionPeriod;
  /// The backup retention policy configured for the instance. Valid values:
  late final pulumi.Output<int?> backupRetentionPolicyOnClusterDeletion;
  /// Sharding Instance backup time. It is required when `backup_period` was existed. In the format of HH:mmZ- HH:mmZ. Time setting interval is one hour. If not set, the system will return a default, like "23:00Z-24:00Z".
  late final pulumi.Output<String> backupTime;
  /// The ID of the encryption key.
  late final pulumi.Output<String?> cloudDiskEncryptionKey;
  /// The ConfigServer nodes of the instance. See `config_server_list` below.
  late final pulumi.Output<List<ShardingInstanceConfigServerList>> configServerLists;
  /// Indicates whether release protection is enabled for the instance. Valid values: `true`, `false`.
  late final pulumi.Output<bool?> dbInstanceReleaseProtection;
  /// Specifies whether to enable the log backup feature. Valid values:
  /// - `1 `: The log backup feature is enabled.
  late final pulumi.Output<int> enableBackupLog;
  /// Whether to enable cloud disk encryption. Default value: `false`. Valid values: `true`, `false`.
  late final pulumi.Output<bool?> encrypted;
  /// The ID of the custom key.
  late final pulumi.Output<String> encryptionKey;
  /// The encryption method. **NOTE:** `encryptor_name` is valid only when `tde_status` is set to `enabled`.
  late final pulumi.Output<String> encryptorName;
  /// Database version. Value options can refer to the latest docs [CreateDBInstance](https://www.alibabacloud.com/help/en/doc-detail/61884.htm) `EngineVersion`. **NOTE:** From version 1.225.1, `engine_version` can be modified.
  late final pulumi.Output<String> engineVersion;
  /// Specifies whether to forcibly enable SSL encryption for connections. Valid values:
  late final pulumi.Output<String> forceEncryption;
  /// The list of Global Security Group Ids.
  late final pulumi.Output<List<String>?> globalSecurityGroupLists;
  /// Configure the zone where the hidden node is located to deploy multiple zones. **NOTE:** This parameter value cannot be the same as `zone_id` and `secondary_zone_id` parameter values.
  late final pulumi.Output<String?> hiddenZoneId;
  /// The billing method of the instance. Default value: `PostPaid`. Valid values: `PrePaid`, `PostPaid`. **NOTE:** It can be modified from `PostPaid` to `PrePaid` after version v1.141.0.
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
  late final pulumi.Output<String> maintainEndTime;
  /// The start time of the operation and maintenance time period of the instance, in the format of HH:mmZ (UTC time).
  late final pulumi.Output<String> maintainStartTime;
  /// The Mongo nodes of the instance. The mongo-node count can be purchased is in range of [2, 32]. See `mongo_list` below.
  late final pulumi.Output<List<ShardingInstanceMongoList>> mongoLists;
  /// The name of DB instance. It must be 2 to 256 characters in length.
  late final pulumi.Output<String> name;
  /// The network type of the instance. Valid values:`Classic` or `VPC`.
  late final pulumi.Output<String> networkType;
  /// The type of configuration changes performed. Default value: `DOWNGRADE`. Valid values:
  /// - `UPGRADE`: The specifications are upgraded.
  /// - `DOWNGRADE`: The specifications are downgraded.
  /// **NOTE:** `order_type` is only applicable to instances when `instance_charge_type` is `PrePaid`.
  late final pulumi.Output<String?> orderType;
  /// Set of parameters needs to be set after mongodb instance was launched. See `parameters` below.
  late final pulumi.Output<List<ShardingInstanceParameter>> parameters;
  /// The duration that you will buy DB instance (in month). It is valid when `instance_charge_type` is `PrePaid`. Default value: `1`. Valid values: [1~9], 12, 24, 36.
  late final pulumi.Output<int> period;
  /// The type of the access protocol. Valid values: `mongodb` or `dynamodb`.
  late final pulumi.Output<String> protocolType;
  /// The provisioned IOPS. Valid values: `0` to `50000`.
  late final pulumi.Output<int?> provisionedIops;
  /// The ID of the Resource Group.
  late final pulumi.Output<String> resourceGroupId;
  /// The point in time to which you want to restore the instance. You can specify any point in time within the last seven days. The time must be in the yyyy-MM-ddTHH:mm:ssZ format and in UTC.
  /// > **NOTE:** You must specify `src_db_instance_id` and `restore_time` only when you clone an instance based on a point in time.
  late final pulumi.Output<String?> restoreTime;
  /// (Available since v1.42.0) Instance data backup retention days.
  late final pulumi.Output<int> retentionPeriod;
  /// The Alibaba Cloud Resource Name (ARN) of the specified Resource Access Management (RAM) role.
  late final pulumi.Output<String> roleArn;
  /// Configure the available area where the slave node (Secondary node) is located to realize multi-available area deployment. **NOTE:** This parameter value cannot be the same as `zone_id` and `hidden_zone_id` parameter values.
  late final pulumi.Output<String?> secondaryZoneId;
  /// The Security Group ID of ECS.
  late final pulumi.Output<String> securityGroupId;
  /// List of IP addresses allowed to access all databases of an instance. The list contains up to 1,000 IP addresses, separated by commas. Supported formats include 0.0.0.0/0, 10.23.12.24 (IP), and 10.23.12.24/24 (Classless Inter-Domain Routing (CIDR) mode. /24 represents the length of the prefix in an IP address. The range of the prefix length is [1,32]). System default to `["127.0.0.1"]`.
  late final pulumi.Output<List<String>> securityIpLists;
  /// The Shard nodes of the instance. The shard-node count can be purchased is in range of [2, 32]. See `shard_list` below.
  late final pulumi.Output<List<ShardingInstanceShardList>> shardLists;
  /// The snapshot backup type. Default value: `Standard`. Valid values:
  /// - `Standard`: Standard backup.
  /// - `Flash `: Single-digit second backup.
  late final pulumi.Output<String> snapshotBackupType;
  /// The source instance ID.
  late final pulumi.Output<String?> srcDbInstanceId;
  late final pulumi.Output<String?> sslAction;
  /// (Available since v1.259.0) The status of the SSL feature.
  late final pulumi.Output<String> sslStatus;
  /// The storage engine of the instance. Default value: `WiredTiger`. Valid values: `WiredTiger`, `RocksDB`.
  late final pulumi.Output<String> storageEngine;
  /// The storage type of the instance. Valid values: `cloud_essd1`, `cloud_essd2`, `cloud_essd3`, `cloud_auto`, `local_ssd`. **NOTE:** From version 1.229.0, `storage_type` can be modified. However, `storage_type` can only be modified to `cloud_auto`.
  late final pulumi.Output<String> storageType;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The TDE(Transparent Data Encryption) status. It can be updated from version 1.160.0.
  late final pulumi.Output<String> tdeStatus;
  /// The ID of the VPC. > **NOTE:** `vpc_id` is valid only when `network_type` is set to `VPC`.
  late final pulumi.Output<String> vpcId;
  /// The virtual switch ID to launch DB instances in one VPC.
  late final pulumi.Output<String> vswitchId;
  /// The Zone to launch the DB instance. MongoDB Sharding Instance does not support multiple-zone.
  /// If it is a multi-zone and `vswitch_id` is specified, the vswitch must in one of them.
  late final pulumi.Output<String> zoneId;
  /// (Available since v1.271.0) The information of nodes in the zone.
  late final pulumi.Output<List<ShardingInstanceZoneInfo>> zoneInfos;

  /// Creates a new [ShardingInstance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ShardingInstance]. {@macro pulumi_mongodb_sharding_instance_sharding_instance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ShardingInstance(
    String name, {
    ShardingInstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:mongodb/shardingInstance:ShardingInstance',
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
    this.configServerLists = registerOutput<List<ShardingInstanceConfigServerList>>('configServerLists');
    this.dbInstanceReleaseProtection = registerOutput<bool?>('dbInstanceReleaseProtection');
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
    this.mongoLists = registerOutput<List<ShardingInstanceMongoList>>('mongoLists');
    this.name = registerOutput<String>('name');
    this.networkType = registerOutput<String>('networkType');
    this.orderType = registerOutput<String?>('orderType');
    this.parameters = registerOutput<List<ShardingInstanceParameter>>('parameters');
    this.period = registerOutput<int>('period');
    this.protocolType = registerOutput<String>('protocolType');
    this.provisionedIops = registerOutput<int?>('provisionedIops');
    this.resourceGroupId = registerOutput<String>('resourceGroupId');
    this.restoreTime = registerOutput<String?>('restoreTime');
    this.retentionPeriod = registerOutput<int>('retentionPeriod');
    this.roleArn = registerOutput<String>('roleArn');
    this.secondaryZoneId = registerOutput<String?>('secondaryZoneId');
    this.securityGroupId = registerOutput<String>('securityGroupId');
    this.securityIpLists = registerOutput<List<String>>('securityIpLists');
    this.shardLists = registerOutput<List<ShardingInstanceShardList>>('shardLists');
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
    this.zoneInfos = registerOutput<List<ShardingInstanceZoneInfo>>('zoneInfos');
  }
}
