import 'package:pulumi/pulumi.dart' as pulumi;
import 'milvus_instance_args.dart';
import 'milvus_instance_component.dart';
import 'milvus_instance_vswitch_id.dart';

/// ## Import
///
/// Milvus Instance can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:index/milvusInstance:MilvusInstance example <id>
/// ```
class MilvusInstance extends pulumi.CustomResource {
  /// Whether to enable automatic backup
  late final pulumi.Output<bool> autoBackup;
  /// Instance component information. Includes Starter Edition/Standard Edition.
  /// - Starter version: Array including standalone
  /// - Standard Edition: The configuration is different according to the 2.5 version and 2.6 version.
  /// 2.5: proxy ,mix_coordinator,data,query,index
  /// 2.6 need to configure: proxy,mix_coordinator,data,query,streaming See `components` below.
  late final pulumi.Output<List<MilvusInstanceComponent>?> components;
  /// User-defined configuration
  late final pulumi.Output<String?> configuration;
  /// Instance creation time.
  late final pulumi.Output<String> createTime;
  /// DB administrator password, which can be used to log in to attu.
  ///
  /// > **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  late final pulumi.Output<String?> dbAdminPassword;
  /// Milvus kernel version. Supported versions: 2.4, 2.5, 2.6.
  late final pulumi.Output<String> dbVersion;
  /// Whether to use kms encryption. After enabling, you need to configure KmsKeyId. The default is false.
  late final pulumi.Output<bool?> encrypted;
  /// Whether to enable multiple copies of data
  late final pulumi.Output<bool?> ha;
  /// Instance name. The length is limited to 1-64 characters and can only contain Chinese, letters, numbers,-,_
  late final pulumi.Output<String> instanceName;
  /// Kms Key encryption id, need to be encrypted set to true.
  late final pulumi.Output<String?> kmsKeyId;
  /// Availability Zone mode. The default Single.
  /// - Single: Single zone.
  /// - Two: Dual Availability Zones.
  late final pulumi.Output<String?> multiZoneMode;
  /// Instance Payment Duration
  ///
  /// > **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  late final pulumi.Output<int?> paymentDuration;
  /// Paid unit , Enumeration value:
  /// - Month: Month
  /// - Year: Year
  ///
  /// > **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  late final pulumi.Output<String?> paymentDurationUnit;
  /// Payment Type ,Enumeration value:
  /// - PayAsYouGo: Pay by volume
  /// - Subscription: Package year package month
  late final pulumi.Output<String> paymentType;
  /// regionId. For example: cn-hangzhou
  late final pulumi.Output<String> regionId;
  /// Resource Group ID
  late final pulumi.Output<String> resourceGroupId;
  /// Instance status. Value range:
  late final pulumi.Output<String> status;
  /// User Defined Label
  late final pulumi.Output<Map<String, String>?> tags;
  /// The VPC network ID. vpc-xxx.
  late final pulumi.Output<String> vpcId;
  /// Switch list, configure the switch and zone. See `vswitch_ids` below.
  late final pulumi.Output<List<MilvusInstanceVswitchId>?> vswitchIds;
  /// The zone id. When multi-zone is enabled, it represents the primary zone.
  late final pulumi.Output<String?> zoneId;

  /// Creates a new [MilvusInstance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MilvusInstance]. {@macro pulumi_index_milvus_instance_milvus_instance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MilvusInstance(
    String name, {
    MilvusInstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:index/milvusInstance:MilvusInstance',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.autoBackup = registerOutput<bool>('autoBackup');
    this.components = registerOutput<List<MilvusInstanceComponent>?>('components');
    this.configuration = registerOutput<String?>('configuration');
    this.createTime = registerOutput<String>('createTime');
    this.dbAdminPassword = registerOutput<String?>('dbAdminPassword');
    this.dbVersion = registerOutput<String>('dbVersion');
    this.encrypted = registerOutput<bool?>('encrypted');
    this.ha = registerOutput<bool?>('ha');
    this.instanceName = registerOutput<String>('instanceName');
    this.kmsKeyId = registerOutput<String?>('kmsKeyId');
    this.multiZoneMode = registerOutput<String?>('multiZoneMode');
    this.paymentDuration = registerOutput<int?>('paymentDuration');
    this.paymentDurationUnit = registerOutput<String?>('paymentDurationUnit');
    this.paymentType = registerOutput<String>('paymentType');
    this.regionId = registerOutput<String>('regionId');
    this.resourceGroupId = registerOutput<String>('resourceGroupId');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.vpcId = registerOutput<String>('vpcId');
    this.vswitchIds = registerOutput<List<MilvusInstanceVswitchId>?>('vswitchIds');
    this.zoneId = registerOutput<String?>('zoneId');
  }
}
