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
    this.autoRenewDuration,
    this.clientNodeAmount,
    this.clientNodeConfiguration,
    this.clientNodeSpec,
    this.dataNodeAmount,
    this.dataNodeConfiguration,
    this.dataNodeDiskEncrypted,
    this.dataNodeDiskPerformanceLevel,
    this.dataNodeDiskSize,
    this.dataNodeDiskType,
    this.dataNodeSpec,
    this.description,
    this.enableKibanaPrivateNetwork,
    this.enableKibanaPublicNetwork,
    this.enablePublic,
    this.force,
    this.instanceCategory,
    this.instanceChargeType,
    this.kibanaConfiguration,
    this.kibanaNodeSpec,
    this.kibanaPrivateSecurityGroupId,
    this.kibanaPrivateWhitelists,
    this.kibanaWhitelists,
    this.kmsEncryptedPassword,
    this.kmsEncryptionContext,
    this.masterConfiguration,
    this.masterNodeDiskType,
    this.masterNodeSpec,
    this.orderActionType,
    this.password,
    this.paymentType,
    this.period,
    this.privateWhitelists,
    this.protocol,
    this.publicWhitelists,
    this.renewStatus,
    this.renewalDurationUnit,
    this.resourceGroupId,
    this.settingConfig,
    this.tags,
    this.updateStrategy,
    required this.version,
    required this.vswitchId,
    this.warmNodeAmount,
    this.warmNodeConfiguration,
    this.warmNodeDiskEncrypted,
    this.warmNodeDiskSize,
    this.warmNodeDiskType,
    this.warmNodeSpec,
    this.zoneCount,
  });

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
      autoRenewDuration: map['autoRenewDuration'] == null ? null : (map['autoRenewDuration']! as int).input(),
      clientNodeAmount: map['clientNodeAmount'] == null ? null : (map['clientNodeAmount']! as int).input(),
      clientNodeConfiguration: map['clientNodeConfiguration'] == null ? null : (InstanceClientNodeConfiguration.fromMap((map['clientNodeConfiguration']! as Map).cast<String, dynamic>())).input(),
      clientNodeSpec: map['clientNodeSpec'] == null ? null : (map['clientNodeSpec']! as String).input(),
      dataNodeAmount: map['dataNodeAmount'] == null ? null : (map['dataNodeAmount']! as int).input(),
      dataNodeConfiguration: map['dataNodeConfiguration'] == null ? null : (InstanceDataNodeConfiguration.fromMap((map['dataNodeConfiguration']! as Map).cast<String, dynamic>())).input(),
      dataNodeDiskEncrypted: map['dataNodeDiskEncrypted'] == null ? null : (map['dataNodeDiskEncrypted']! as bool).input(),
      dataNodeDiskPerformanceLevel: map['dataNodeDiskPerformanceLevel'] == null ? null : (map['dataNodeDiskPerformanceLevel']! as String).input(),
      dataNodeDiskSize: map['dataNodeDiskSize'] == null ? null : (map['dataNodeDiskSize']! as int).input(),
      dataNodeDiskType: map['dataNodeDiskType'] == null ? null : (map['dataNodeDiskType']! as String).input(),
      dataNodeSpec: map['dataNodeSpec'] == null ? null : (map['dataNodeSpec']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      enableKibanaPrivateNetwork: map['enableKibanaPrivateNetwork'] == null ? null : (map['enableKibanaPrivateNetwork']! as bool).input(),
      enableKibanaPublicNetwork: map['enableKibanaPublicNetwork'] == null ? null : (map['enableKibanaPublicNetwork']! as bool).input(),
      enablePublic: map['enablePublic'] == null ? null : (map['enablePublic']! as bool).input(),
      force: map['force'] == null ? null : (map['force']! as bool).input(),
      instanceCategory: map['instanceCategory'] == null ? null : (map['instanceCategory']! as String).input(),
      instanceChargeType: map['instanceChargeType'] == null ? null : (map['instanceChargeType']! as String).input(),
      kibanaConfiguration: map['kibanaConfiguration'] == null ? null : (InstanceKibanaConfiguration.fromMap((map['kibanaConfiguration']! as Map).cast<String, dynamic>())).input(),
      kibanaNodeSpec: map['kibanaNodeSpec'] == null ? null : (map['kibanaNodeSpec']! as String).input(),
      kibanaPrivateSecurityGroupId: map['kibanaPrivateSecurityGroupId'] == null ? null : (map['kibanaPrivateSecurityGroupId']! as String).input(),
      kibanaPrivateWhitelists: map['kibanaPrivateWhitelists'] == null ? null : ((map['kibanaPrivateWhitelists']! as List).cast<String>()).input(),
      kibanaWhitelists: map['kibanaWhitelists'] == null ? null : ((map['kibanaWhitelists']! as List).cast<String>()).input(),
      kmsEncryptedPassword: map['kmsEncryptedPassword'] == null ? null : (map['kmsEncryptedPassword']! as String).input(),
      kmsEncryptionContext: map['kmsEncryptionContext'] == null ? null : ((map['kmsEncryptionContext']! as Map).cast<String, String>()).input(),
      masterConfiguration: map['masterConfiguration'] == null ? null : (InstanceMasterConfiguration.fromMap((map['masterConfiguration']! as Map).cast<String, dynamic>())).input(),
      masterNodeDiskType: map['masterNodeDiskType'] == null ? null : (map['masterNodeDiskType']! as String).input(),
      masterNodeSpec: map['masterNodeSpec'] == null ? null : (map['masterNodeSpec']! as String).input(),
      orderActionType: map['orderActionType'] == null ? null : (map['orderActionType']! as String).input(),
      password: map['password'] == null ? null : (map['password']! as String).input(),
      paymentType: map['paymentType'] == null ? null : (map['paymentType']! as String).input(),
      period: map['period'] == null ? null : (map['period']! as int).input(),
      privateWhitelists: map['privateWhitelists'] == null ? null : ((map['privateWhitelists']! as List).cast<String>()).input(),
      protocol: map['protocol'] == null ? null : (map['protocol']! as String).input(),
      publicWhitelists: map['publicWhitelists'] == null ? null : ((map['publicWhitelists']! as List).cast<String>()).input(),
      renewStatus: map['renewStatus'] == null ? null : (map['renewStatus']! as String).input(),
      renewalDurationUnit: map['renewalDurationUnit'] == null ? null : (map['renewalDurationUnit']! as String).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId']! as String).input(),
      settingConfig: map['settingConfig'] == null ? null : ((map['settingConfig']! as Map).cast<String, String>()).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      updateStrategy: map['updateStrategy'] == null ? null : (map['updateStrategy']! as String).input(),
      version: (map['version'] as String).input(),
      vswitchId: (map['vswitchId'] as String).input(),
      warmNodeAmount: map['warmNodeAmount'] == null ? null : (map['warmNodeAmount']! as int).input(),
      warmNodeConfiguration: map['warmNodeConfiguration'] == null ? null : (InstanceWarmNodeConfiguration.fromMap((map['warmNodeConfiguration']! as Map).cast<String, dynamic>())).input(),
      warmNodeDiskEncrypted: map['warmNodeDiskEncrypted'] == null ? null : (map['warmNodeDiskEncrypted']! as bool).input(),
      warmNodeDiskSize: map['warmNodeDiskSize'] == null ? null : (map['warmNodeDiskSize']! as int).input(),
      warmNodeDiskType: map['warmNodeDiskType'] == null ? null : (map['warmNodeDiskType']! as String).input(),
      warmNodeSpec: map['warmNodeSpec'] == null ? null : (map['warmNodeSpec']! as String).input(),
      zoneCount: map['zoneCount'] == null ? null : (map['zoneCount']! as int).input(),
    );
  }
}

