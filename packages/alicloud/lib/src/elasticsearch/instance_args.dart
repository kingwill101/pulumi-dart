// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_client_node_configuration.dart';
import 'instance_data_node_configuration.dart';
import 'instance_kibana_configuration.dart';
import 'instance_master_configuration.dart';
import 'instance_warm_node_configuration.dart';

/// {@template pulumi_elasticsearch_instance_instance_args_doc}
/// The set of arguments for Instance.
/// {@endtemplate}
/// {@macro pulumi_elasticsearch_instance_instance_args_doc}
class InstanceArgs {
  /// Renewal Period
  final pulumi.Input<int>? autoRenewDuration;
  /// The Elasticsearch cluster's client node quantity, between 2 and 25.
  final pulumi.Input<int>? clientNodeAmount;
  /// Elasticsearch cluster coordination node configuration See `client_node_configuration` below.
  final pulumi.Input<InstanceClientNodeConfiguration>? clientNodeConfiguration;
  /// The client node spec. If specified, client node will be created.
  final pulumi.Input<String>? clientNodeSpec;
  /// The Elasticsearch cluster's data node quantity, between 2 and 50.
  final pulumi.Input<int>? dataNodeAmount;
  /// Elasticsearch data node information See `data_node_configuration` below.
  final pulumi.Input<InstanceDataNodeConfiguration>? dataNodeConfiguration;
  /// If encrypt the data node disk. Valid values are `true`, `false`. Default to `false`.
  final pulumi.Input<bool>? dataNodeDiskEncrypted;
  /// Cloud disk performance level. Valid values are `PL0`, `PL1`, `PL2`, `PL3`. The `data_node_disk_type` muse be `cloud_essd`.
  final pulumi.Input<String>? dataNodeDiskPerformanceLevel;
  /// The single data node storage space.
  final pulumi.Input<int>? dataNodeDiskSize;
  /// The data node disk type. Supported values: cloud_ssd, cloud_efficiency.
  final pulumi.Input<String>? dataNodeDiskType;
  /// The data node specifications of the Elasticsearch instance.
  final pulumi.Input<String>? dataNodeSpec;
  /// Instance name
  final pulumi.Input<String>? description;
  /// Whether to enable Kibana private network access.
  ///
  /// The meaning of the value is as follows:
  /// - true: On.
  /// - false: does not open.
  final pulumi.Input<bool>? enableKibanaPrivateNetwork;
  /// Does Kibana enable public access
  final pulumi.Input<bool>? enableKibanaPublicNetwork;
  /// Whether to enable Kibana public network access.
  ///
  /// The meaning of the value is as follows:
  /// - true: On.
  /// - false: does not open.
  final pulumi.Input<bool>? enablePublic;
  final pulumi.Input<bool>? force;
  /// Version type.
  final pulumi.Input<String>? instanceCategory;
  /// Valid values are `PrePaid`, `PostPaid`. Default to `PostPaid`. From version 1.69.0, the Elasticsearch cluster allows you to update your instance_charge_ype from `PostPaid` to `PrePaid`, the following attributes are required: `period`.
  final pulumi.Input<String>? instanceChargeType;
  /// Elasticsearch Kibana node settings See `kibana_configuration` below.
  final pulumi.Input<InstanceKibanaConfiguration>? kibanaConfiguration;
  /// The kibana node specifications of the Elasticsearch instance. Default is `elasticsearch.n4.small`.
  final pulumi.Input<String>? kibanaNodeSpec;
  /// Kibana private network security group ID
  final pulumi.Input<String>? kibanaPrivateSecurityGroupId;
  /// Cluster Kibana node private network access whitelist
  final pulumi.Input<List<String>>? kibanaPrivateWhitelists;
  /// Kibana private network access whitelist
  final pulumi.Input<List<String>>? kibanaWhitelists;
  /// An KMS encrypts password used to an instance. If the `password` is filled in, this field will be ignored, but you have to specify one of `password` and `kms_encrypted_password` fields.
  final pulumi.Input<String>? kmsEncryptedPassword;
  /// An KMS encryption context used to decrypt `kms_encrypted_password` before creating or updating instance with `kms_encrypted_password`. See [Encryption Context](https://www.alibabacloud.com/help/doc-detail/42975.htm). It is valid when `kms_encrypted_password` is set.
  final pulumi.Input<Map<String, String>>? kmsEncryptionContext;
  /// Elasticsearch proprietary master node configuration information See `master_configuration` below.
  final pulumi.Input<InstanceMasterConfiguration>? masterConfiguration;
  /// The single master node storage space. Valid values are `PrePaid`, `PostPaid`.
  final pulumi.Input<String>? masterNodeDiskType;
  /// The dedicated master node spec. If specified, dedicated master node will be created.
  final pulumi.Input<String>? masterNodeSpec;
  final pulumi.Input<String>? orderActionType;
  /// The access password of the instance.
  final pulumi.Input<String>? password;
  /// The payment method of the instance. Optional values: `prepaid` (subscription) and `postpaid` (pay-as-you-go)
  final pulumi.Input<String>? paymentType;
  /// The duration that you will buy Elasticsearch instance (in month). It is valid when PaymentType is `Subscription`. Valid values: [1~9], 12, 24, 36. Default to 1. From version 1.69.2, when to modify this value, the resource can renewal a `PrePaid` instance.
  final pulumi.Input<int>? period;
  /// Elasticsearch private network whitelist. (Same as EsIpWhitelist)
  final pulumi.Input<List<String>>? privateWhitelists;
  /// Access protocol. Optional values: `HTTP` and **HTTPS * *.
  final pulumi.Input<String>? protocol;
  /// Elasticseach public network access whitelist IP list
  final pulumi.Input<List<String>>? publicWhitelists;
  /// Renewal Status
  final pulumi.Input<String>? renewStatus;
  /// Renewal Period Unit
  final pulumi.Input<String>? renewalDurationUnit;
  /// Resource group to which the instance belongs
  final pulumi.Input<String>? resourceGroupId;
  /// Configuration information
  final pulumi.Input<Map<String, String>>? settingConfig;
  /// Collection of tag key-value pairs
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<String>? updateStrategy;
  /// Instance version
  final pulumi.Input<String> version;
  /// The ID of VSwitch.
  final pulumi.Input<String> vswitchId;
  /// The Elasticsearch cluster's warm node quantity, between 3 and 50.
  final pulumi.Input<int>? warmNodeAmount;
  /// Elasticsearch cluster cold data node configuration See `warm_node_configuration` below.
  final pulumi.Input<InstanceWarmNodeConfiguration>? warmNodeConfiguration;
  /// If encrypt the warm node disk. Valid values are `true`, `false`. Default to `false`.
  final pulumi.Input<bool>? warmNodeDiskEncrypted;
  /// The single warm node storage space, should between 500 and 20480
  final pulumi.Input<int>? warmNodeDiskSize;
  /// The warm node disk type. Supported values:  cloud_efficiency.
  final pulumi.Input<String>? warmNodeDiskType;
  /// The warm node specifications of the Elasticsearch instance.
  final pulumi.Input<String>? warmNodeSpec;
  /// The number of zones in the Elasticsearch instance.
  ///
  /// The following arguments will be discarded. Please use new fields as soon as possible:
  final pulumi.Input<int>? zoneCount;

  /// Creates a new [InstanceArgs].
  /// [autoRenewDuration] Renewal Period
  /// [clientNodeAmount] The Elasticsearch cluster's client node quantity, between 2 and 25.
  /// [clientNodeConfiguration] Elasticsearch cluster coordination node configuration See `client_node_configuration` below.
  /// [clientNodeSpec] The client node spec. If specified, client node will be created.
  /// [dataNodeAmount] The Elasticsearch cluster's data node quantity, between 2 and 50.
  /// [dataNodeConfiguration] Elasticsearch data node information See `data_node_configuration` below.
  /// [dataNodeDiskEncrypted] If encrypt the data node disk. Valid values are `true`, `false`. Default to `false`.
  /// [dataNodeDiskPerformanceLevel] Cloud disk performance level. Valid values are `PL0`, `PL1`, `PL2`, `PL3`. The `data_node_disk_type` muse be `cloud_essd`.
  /// [dataNodeDiskSize] The single data node storage space.
  /// [dataNodeDiskType] The data node disk type. Supported values: cloud_ssd, cloud_efficiency.
  /// [dataNodeSpec] The data node specifications of the Elasticsearch instance.
  /// [description] Instance name
  /// [enableKibanaPrivateNetwork] Whether to enable Kibana private network access.
  /// [enableKibanaPublicNetwork] Does Kibana enable public access
  /// [enablePublic] Whether to enable Kibana public network access.
  /// [force] Optional.
  /// [instanceCategory] Version type.
  /// [instanceChargeType] Valid values are `PrePaid`, `PostPaid`. Default to `PostPaid`. From version 1.69.0, the Elasticsearch cluster allows you to update your instance_charge_ype from `PostPaid` to `PrePaid`, the following attributes are required: `period`.
  /// [kibanaConfiguration] Elasticsearch Kibana node settings See `kibana_configuration` below.
  /// [kibanaNodeSpec] The kibana node specifications of the Elasticsearch instance. Default is `elasticsearch.n4.small`.
  /// [kibanaPrivateSecurityGroupId] Kibana private network security group ID
  /// [kibanaPrivateWhitelists] Cluster Kibana node private network access whitelist
  /// [kibanaWhitelists] Kibana private network access whitelist
  /// [kmsEncryptedPassword] An KMS encrypts password used to an instance. If the `password` is filled in, this field will be ignored, but you have to specify one of `password` and `kms_encrypted_password` fields.
  /// [kmsEncryptionContext] An KMS encryption context used to decrypt `kms_encrypted_password` before creating or updating instance with `kms_encrypted_password`. See [Encryption Context](https://www.alibabacloud.com/help/doc-detail/42975.htm). It is valid when `kms_encrypted_password` is set.
  /// [masterConfiguration] Elasticsearch proprietary master node configuration information See `master_configuration` below.
  /// [masterNodeDiskType] The single master node storage space. Valid values are `PrePaid`, `PostPaid`.
  /// [masterNodeSpec] The dedicated master node spec. If specified, dedicated master node will be created.
  /// [orderActionType] Optional.
  /// [password] The access password of the instance.
  /// [paymentType] The payment method of the instance. Optional values: `prepaid` (subscription) and `postpaid` (pay-as-you-go)
  /// [period] The duration that you will buy Elasticsearch instance (in month). It is valid when PaymentType is `Subscription`. Valid values: [1~9], 12, 24, 36. Default to 1. From version 1.69.2, when to modify this value, the resource can renewal a `PrePaid` instance.
  /// [privateWhitelists] Elasticsearch private network whitelist. (Same as EsIpWhitelist)
  /// [protocol] Access protocol. Optional values: `HTTP` and **HTTPS * *.
  /// [publicWhitelists] Elasticseach public network access whitelist IP list
  /// [renewStatus] Renewal Status
  /// [renewalDurationUnit] Renewal Period Unit
  /// [resourceGroupId] Resource group to which the instance belongs
  /// [settingConfig] Configuration information
  /// [tags] Collection of tag key-value pairs
  /// [updateStrategy] Optional.
  /// [version] Instance version
  /// [vswitchId] The ID of VSwitch.
  /// [warmNodeAmount] The Elasticsearch cluster's warm node quantity, between 3 and 50.
  /// [warmNodeConfiguration] Elasticsearch cluster cold data node configuration See `warm_node_configuration` below.
  /// [warmNodeDiskEncrypted] If encrypt the warm node disk. Valid values are `true`, `false`. Default to `false`.
  /// [warmNodeDiskSize] The single warm node storage space, should between 500 and 20480
  /// [warmNodeDiskType] The warm node disk type. Supported values:  cloud_efficiency.
  /// [warmNodeSpec] The warm node specifications of the Elasticsearch instance.
  /// [zoneCount] The number of zones in the Elasticsearch instance.
  InstanceArgs({
    int? autoRenewDuration,
    int? clientNodeAmount,
    InstanceClientNodeConfiguration? clientNodeConfiguration,
    String? clientNodeSpec,
    int? dataNodeAmount,
    InstanceDataNodeConfiguration? dataNodeConfiguration,
    bool? dataNodeDiskEncrypted,
    String? dataNodeDiskPerformanceLevel,
    int? dataNodeDiskSize,
    String? dataNodeDiskType,
    String? dataNodeSpec,
    String? description,
    bool? enableKibanaPrivateNetwork,
    bool? enableKibanaPublicNetwork,
    bool? enablePublic,
    bool? force,
    String? instanceCategory,
    String? instanceChargeType,
    InstanceKibanaConfiguration? kibanaConfiguration,
    String? kibanaNodeSpec,
    String? kibanaPrivateSecurityGroupId,
    List<String>? kibanaPrivateWhitelists,
    List<String>? kibanaWhitelists,
    String? kmsEncryptedPassword,
    Map<String, String>? kmsEncryptionContext,
    InstanceMasterConfiguration? masterConfiguration,
    String? masterNodeDiskType,
    String? masterNodeSpec,
    String? orderActionType,
    String? password,
    String? paymentType,
    int? period,
    List<String>? privateWhitelists,
    String? protocol,
    List<String>? publicWhitelists,
    String? renewStatus,
    String? renewalDurationUnit,
    String? resourceGroupId,
    Map<String, String>? settingConfig,
    Map<String, String>? tags,
    String? updateStrategy,
    required String version,
    required String vswitchId,
    int? warmNodeAmount,
    InstanceWarmNodeConfiguration? warmNodeConfiguration,
    bool? warmNodeDiskEncrypted,
    int? warmNodeDiskSize,
    String? warmNodeDiskType,
    String? warmNodeSpec,
    int? zoneCount,
  }) :
      autoRenewDuration = pulumi.Input.asOptionalInput<int>(autoRenewDuration),
      clientNodeAmount = pulumi.Input.asOptionalInput<int>(clientNodeAmount),
      clientNodeConfiguration = pulumi.Input.asOptionalInput<InstanceClientNodeConfiguration>(clientNodeConfiguration),
      clientNodeSpec = pulumi.Input.asOptionalInput<String>(clientNodeSpec),
      dataNodeAmount = pulumi.Input.asOptionalInput<int>(dataNodeAmount),
      dataNodeConfiguration = pulumi.Input.asOptionalInput<InstanceDataNodeConfiguration>(dataNodeConfiguration),
      dataNodeDiskEncrypted = pulumi.Input.asOptionalInput<bool>(dataNodeDiskEncrypted),
      dataNodeDiskPerformanceLevel = pulumi.Input.asOptionalInput<String>(dataNodeDiskPerformanceLevel),
      dataNodeDiskSize = pulumi.Input.asOptionalInput<int>(dataNodeDiskSize),
      dataNodeDiskType = pulumi.Input.asOptionalInput<String>(dataNodeDiskType),
      dataNodeSpec = pulumi.Input.asOptionalInput<String>(dataNodeSpec),
      description = pulumi.Input.asOptionalInput<String>(description),
      enableKibanaPrivateNetwork = pulumi.Input.asOptionalInput<bool>(enableKibanaPrivateNetwork),
      enableKibanaPublicNetwork = pulumi.Input.asOptionalInput<bool>(enableKibanaPublicNetwork),
      enablePublic = pulumi.Input.asOptionalInput<bool>(enablePublic),
      force = pulumi.Input.asOptionalInput<bool>(force),
      instanceCategory = pulumi.Input.asOptionalInput<String>(instanceCategory),
      instanceChargeType = pulumi.Input.asOptionalInput<String>(instanceChargeType),
      kibanaConfiguration = pulumi.Input.asOptionalInput<InstanceKibanaConfiguration>(kibanaConfiguration),
      kibanaNodeSpec = pulumi.Input.asOptionalInput<String>(kibanaNodeSpec),
      kibanaPrivateSecurityGroupId = pulumi.Input.asOptionalInput<String>(kibanaPrivateSecurityGroupId),
      kibanaPrivateWhitelists = pulumi.Input.asOptionalInput<List<String>>(kibanaPrivateWhitelists),
      kibanaWhitelists = pulumi.Input.asOptionalInput<List<String>>(kibanaWhitelists),
      kmsEncryptedPassword = pulumi.Input.asOptionalInput<String>(kmsEncryptedPassword),
      kmsEncryptionContext = pulumi.Input.asOptionalInput<Map<String, String>>(kmsEncryptionContext),
      masterConfiguration = pulumi.Input.asOptionalInput<InstanceMasterConfiguration>(masterConfiguration),
      masterNodeDiskType = pulumi.Input.asOptionalInput<String>(masterNodeDiskType),
      masterNodeSpec = pulumi.Input.asOptionalInput<String>(masterNodeSpec),
      orderActionType = pulumi.Input.asOptionalInput<String>(orderActionType),
      password = pulumi.Input.asOptionalInput<String>(password),
      paymentType = pulumi.Input.asOptionalInput<String>(paymentType),
      period = pulumi.Input.asOptionalInput<int>(period),
      privateWhitelists = pulumi.Input.asOptionalInput<List<String>>(privateWhitelists),
      protocol = pulumi.Input.asOptionalInput<String>(protocol),
      publicWhitelists = pulumi.Input.asOptionalInput<List<String>>(publicWhitelists),
      renewStatus = pulumi.Input.asOptionalInput<String>(renewStatus),
      renewalDurationUnit = pulumi.Input.asOptionalInput<String>(renewalDurationUnit),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      settingConfig = pulumi.Input.asOptionalInput<Map<String, String>>(settingConfig),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      updateStrategy = pulumi.Input.asOptionalInput<String>(updateStrategy),
      version = pulumi.Input.asInput<String>(version),
      vswitchId = pulumi.Input.asInput<String>(vswitchId),
      warmNodeAmount = pulumi.Input.asOptionalInput<int>(warmNodeAmount),
      warmNodeConfiguration = pulumi.Input.asOptionalInput<InstanceWarmNodeConfiguration>(warmNodeConfiguration),
      warmNodeDiskEncrypted = pulumi.Input.asOptionalInput<bool>(warmNodeDiskEncrypted),
      warmNodeDiskSize = pulumi.Input.asOptionalInput<int>(warmNodeDiskSize),
      warmNodeDiskType = pulumi.Input.asOptionalInput<String>(warmNodeDiskType),
      warmNodeSpec = pulumi.Input.asOptionalInput<String>(warmNodeSpec),
      zoneCount = pulumi.Input.asOptionalInput<int>(zoneCount);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoRenewDuration': ?autoRenewDuration,
      'clientNodeAmount': ?clientNodeAmount,
      'clientNodeConfiguration': ?pulumi.Input.mapOptionalInputValue<InstanceClientNodeConfiguration, Map<String, dynamic>>(clientNodeConfiguration, (value) => value.toMap()),
      'clientNodeSpec': ?clientNodeSpec,
      'dataNodeAmount': ?dataNodeAmount,
      'dataNodeConfiguration': ?pulumi.Input.mapOptionalInputValue<InstanceDataNodeConfiguration, Map<String, dynamic>>(dataNodeConfiguration, (value) => value.toMap()),
      'dataNodeDiskEncrypted': ?dataNodeDiskEncrypted,
      'dataNodeDiskPerformanceLevel': ?dataNodeDiskPerformanceLevel,
      'dataNodeDiskSize': ?dataNodeDiskSize,
      'dataNodeDiskType': ?dataNodeDiskType,
      'dataNodeSpec': ?dataNodeSpec,
      'description': ?description,
      'enableKibanaPrivateNetwork': ?enableKibanaPrivateNetwork,
      'enableKibanaPublicNetwork': ?enableKibanaPublicNetwork,
      'enablePublic': ?enablePublic,
      'force': ?force,
      'instanceCategory': ?instanceCategory,
      'instanceChargeType': ?instanceChargeType,
      'kibanaConfiguration': ?pulumi.Input.mapOptionalInputValue<InstanceKibanaConfiguration, Map<String, dynamic>>(kibanaConfiguration, (value) => value.toMap()),
      'kibanaNodeSpec': ?kibanaNodeSpec,
      'kibanaPrivateSecurityGroupId': ?kibanaPrivateSecurityGroupId,
      'kibanaPrivateWhitelists': ?kibanaPrivateWhitelists,
      'kibanaWhitelists': ?kibanaWhitelists,
      'kmsEncryptedPassword': ?kmsEncryptedPassword,
      'kmsEncryptionContext': ?kmsEncryptionContext,
      'masterConfiguration': ?pulumi.Input.mapOptionalInputValue<InstanceMasterConfiguration, Map<String, dynamic>>(masterConfiguration, (value) => value.toMap()),
      'masterNodeDiskType': ?masterNodeDiskType,
      'masterNodeSpec': ?masterNodeSpec,
      'orderActionType': ?orderActionType,
      'password': ?password,
      'paymentType': ?paymentType,
      'period': ?period,
      'privateWhitelists': ?privateWhitelists,
      'protocol': ?protocol,
      'publicWhitelists': ?publicWhitelists,
      'renewStatus': ?renewStatus,
      'renewalDurationUnit': ?renewalDurationUnit,
      'resourceGroupId': ?resourceGroupId,
      'settingConfig': ?settingConfig,
      'tags': ?tags,
      'updateStrategy': ?updateStrategy,
      'version': version,
      'vswitchId': vswitchId,
      'warmNodeAmount': ?warmNodeAmount,
      'warmNodeConfiguration': ?pulumi.Input.mapOptionalInputValue<InstanceWarmNodeConfiguration, Map<String, dynamic>>(warmNodeConfiguration, (value) => value.toMap()),
      'warmNodeDiskEncrypted': ?warmNodeDiskEncrypted,
      'warmNodeDiskSize': ?warmNodeDiskSize,
      'warmNodeDiskType': ?warmNodeDiskType,
      'warmNodeSpec': ?warmNodeSpec,
      'zoneCount': ?zoneCount,
    };
  }

  factory InstanceArgs.fromMap(Map<String, dynamic> map) {
    return InstanceArgs(
      autoRenewDuration: map['autoRenewDuration'] == null ? null : map['autoRenewDuration'] as int,
      clientNodeAmount: map['clientNodeAmount'] == null ? null : map['clientNodeAmount'] as int,
      clientNodeConfiguration: map['clientNodeConfiguration'] == null ? null : InstanceClientNodeConfiguration.fromMap((map['clientNodeConfiguration'] as Map).cast<String, dynamic>()),
      clientNodeSpec: map['clientNodeSpec'] == null ? null : map['clientNodeSpec'] as String,
      dataNodeAmount: map['dataNodeAmount'] == null ? null : map['dataNodeAmount'] as int,
      dataNodeConfiguration: map['dataNodeConfiguration'] == null ? null : InstanceDataNodeConfiguration.fromMap((map['dataNodeConfiguration'] as Map).cast<String, dynamic>()),
      dataNodeDiskEncrypted: map['dataNodeDiskEncrypted'] == null ? null : map['dataNodeDiskEncrypted'] as bool,
      dataNodeDiskPerformanceLevel: map['dataNodeDiskPerformanceLevel'] == null ? null : map['dataNodeDiskPerformanceLevel'] as String,
      dataNodeDiskSize: map['dataNodeDiskSize'] == null ? null : map['dataNodeDiskSize'] as int,
      dataNodeDiskType: map['dataNodeDiskType'] == null ? null : map['dataNodeDiskType'] as String,
      dataNodeSpec: map['dataNodeSpec'] == null ? null : map['dataNodeSpec'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      enableKibanaPrivateNetwork: map['enableKibanaPrivateNetwork'] == null ? null : map['enableKibanaPrivateNetwork'] as bool,
      enableKibanaPublicNetwork: map['enableKibanaPublicNetwork'] == null ? null : map['enableKibanaPublicNetwork'] as bool,
      enablePublic: map['enablePublic'] == null ? null : map['enablePublic'] as bool,
      force: map['force'] == null ? null : map['force'] as bool,
      instanceCategory: map['instanceCategory'] == null ? null : map['instanceCategory'] as String,
      instanceChargeType: map['instanceChargeType'] == null ? null : map['instanceChargeType'] as String,
      kibanaConfiguration: map['kibanaConfiguration'] == null ? null : InstanceKibanaConfiguration.fromMap((map['kibanaConfiguration'] as Map).cast<String, dynamic>()),
      kibanaNodeSpec: map['kibanaNodeSpec'] == null ? null : map['kibanaNodeSpec'] as String,
      kibanaPrivateSecurityGroupId: map['kibanaPrivateSecurityGroupId'] == null ? null : map['kibanaPrivateSecurityGroupId'] as String,
      kibanaPrivateWhitelists: map['kibanaPrivateWhitelists'] == null ? null : (map['kibanaPrivateWhitelists'] as List).cast<String>(),
      kibanaWhitelists: map['kibanaWhitelists'] == null ? null : (map['kibanaWhitelists'] as List).cast<String>(),
      kmsEncryptedPassword: map['kmsEncryptedPassword'] == null ? null : map['kmsEncryptedPassword'] as String,
      kmsEncryptionContext: map['kmsEncryptionContext'] == null ? null : (map['kmsEncryptionContext'] as Map).cast<String, String>(),
      masterConfiguration: map['masterConfiguration'] == null ? null : InstanceMasterConfiguration.fromMap((map['masterConfiguration'] as Map).cast<String, dynamic>()),
      masterNodeDiskType: map['masterNodeDiskType'] == null ? null : map['masterNodeDiskType'] as String,
      masterNodeSpec: map['masterNodeSpec'] == null ? null : map['masterNodeSpec'] as String,
      orderActionType: map['orderActionType'] == null ? null : map['orderActionType'] as String,
      password: map['password'] == null ? null : map['password'] as String,
      paymentType: map['paymentType'] == null ? null : map['paymentType'] as String,
      period: map['period'] == null ? null : map['period'] as int,
      privateWhitelists: map['privateWhitelists'] == null ? null : (map['privateWhitelists'] as List).cast<String>(),
      protocol: map['protocol'] == null ? null : map['protocol'] as String,
      publicWhitelists: map['publicWhitelists'] == null ? null : (map['publicWhitelists'] as List).cast<String>(),
      renewStatus: map['renewStatus'] == null ? null : map['renewStatus'] as String,
      renewalDurationUnit: map['renewalDurationUnit'] == null ? null : map['renewalDurationUnit'] as String,
      resourceGroupId: map['resourceGroupId'] == null ? null : map['resourceGroupId'] as String,
      settingConfig: map['settingConfig'] == null ? null : (map['settingConfig'] as Map).cast<String, String>(),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      updateStrategy: map['updateStrategy'] == null ? null : map['updateStrategy'] as String,
      version: map['version'] as String,
      vswitchId: map['vswitchId'] as String,
      warmNodeAmount: map['warmNodeAmount'] == null ? null : map['warmNodeAmount'] as int,
      warmNodeConfiguration: map['warmNodeConfiguration'] == null ? null : InstanceWarmNodeConfiguration.fromMap((map['warmNodeConfiguration'] as Map).cast<String, dynamic>()),
      warmNodeDiskEncrypted: map['warmNodeDiskEncrypted'] == null ? null : map['warmNodeDiskEncrypted'] as bool,
      warmNodeDiskSize: map['warmNodeDiskSize'] == null ? null : map['warmNodeDiskSize'] as int,
      warmNodeDiskType: map['warmNodeDiskType'] == null ? null : map['warmNodeDiskType'] as String,
      warmNodeSpec: map['warmNodeSpec'] == null ? null : map['warmNodeSpec'] as String,
      zoneCount: map['zoneCount'] == null ? null : map['zoneCount'] as int,
    );
  }
}

