import 'package:pulumi/pulumi.dart' as pulumi;
import 'milvus_instance_args.dart';
import 'milvus_instance_state.dart';

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
  late final pulumi.Output<List<Map<String, dynamic>>?> components;
  /// User-defined configuration
  late final pulumi.Output<String?> configuration;
  /// Instance creation time.
  late final pulumi.Output<String> createTime;
  /// DB administrator password, which can be used to log in to attu.
  ///
  /// &gt; **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
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
  /// &gt; **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  late final pulumi.Output<int?> paymentDuration;
  /// Paid unit , Enumeration value:
  /// - Month: Month
  /// - Year: Year
  ///
  /// &gt; **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
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
  late final pulumi.Output<List<Map<String, dynamic>>?> vswitchIds;
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
    autoBackup = registerOutput<bool>('autoBackup');
    components = registerOutput<List<Map<String, dynamic>>?>('components');
    configuration = registerOutput<String?>('configuration');
    createTime = registerOutput<String>('createTime');
    dbAdminPassword = registerOutput<String?>('dbAdminPassword');
    dbVersion = registerOutput<String>('dbVersion');
    encrypted = registerOutput<bool?>('encrypted');
    ha = registerOutput<bool?>('ha');
    instanceName = registerOutput<String>('instanceName');
    kmsKeyId = registerOutput<String?>('kmsKeyId');
    multiZoneMode = registerOutput<String?>('multiZoneMode');
    paymentDuration = registerOutput<int?>('paymentDuration');
    paymentDurationUnit = registerOutput<String?>('paymentDurationUnit');
    paymentType = registerOutput<String>('paymentType');
    regionId = registerOutput<String>('regionId');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
    vpcId = registerOutput<String>('vpcId');
    vswitchIds = registerOutput<List<Map<String, dynamic>>?>('vswitchIds');
    zoneId = registerOutput<String?>('zoneId');
  }

  /// Gets an existing [MilvusInstance] resource's state with the given [name] and [id].
  static MilvusInstance get(
    String name,
    pulumi.Input<String> id, {
    MilvusInstanceState? state,
  }) {
    return MilvusInstance._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  MilvusInstance._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:index/milvusInstance:MilvusInstance',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    autoBackup = registerOutput<bool>('autoBackup');
    components = registerOutput<List<Map<String, dynamic>>?>('components');
    configuration = registerOutput<String?>('configuration');
    createTime = registerOutput<String>('createTime');
    dbAdminPassword = registerOutput<String?>('dbAdminPassword');
    dbVersion = registerOutput<String>('dbVersion');
    encrypted = registerOutput<bool?>('encrypted');
    ha = registerOutput<bool?>('ha');
    instanceName = registerOutput<String>('instanceName');
    kmsKeyId = registerOutput<String?>('kmsKeyId');
    multiZoneMode = registerOutput<String?>('multiZoneMode');
    paymentDuration = registerOutput<int?>('paymentDuration');
    paymentDurationUnit = registerOutput<String?>('paymentDurationUnit');
    paymentType = registerOutput<String>('paymentType');
    regionId = registerOutput<String>('regionId');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
    vpcId = registerOutput<String>('vpcId');
    vswitchIds = registerOutput<List<Map<String, dynamic>>?>('vswitchIds');
    zoneId = registerOutput<String?>('zoneId');
  }
}
