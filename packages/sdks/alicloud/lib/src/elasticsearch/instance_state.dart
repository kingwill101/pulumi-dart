// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_client_node_configuration.dart';
import 'instance_data_node_configuration.dart';
import 'instance_kibana_configuration.dart';
import 'instance_master_configuration.dart';
import 'instance_warm_node_configuration.dart';

/// Input properties used for looking up and filtering Instance resources.
class InstanceState {
  /// Schema Type:.
  final pulumi.Input<String>? archType;
  /// Renewal Period
  final pulumi.Input<int>? autoRenewDuration;
  /// The Elasticsearch cluster's client node quantity, between 2 and 25.
  final pulumi.Input<int>? clientNodeAmount;
  /// Elasticsearch cluster coordination node configuration See `client_node_configuration` below.
  final pulumi.Input<InstanceClientNodeConfiguration>? clientNodeConfiguration;
  /// The client node spec. If specified, client node will be created.
  final pulumi.Input<String>? clientNodeSpec;
  /// Instance creation time.
  final pulumi.Input<String>? createTime;
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
  /// Elasticsearch cluster private domain name.
  final pulumi.Input<String>? domain;
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
  /// Kibana address.
  final pulumi.Input<String>? kibanaDomain;
  /// The kibana node specifications of the Elasticsearch instance. Default is `elasticsearch.n4.small`.
  final pulumi.Input<String>? kibanaNodeSpec;
  /// The port assigned by the Kibana node.
  final pulumi.Input<int>? kibanaPort;
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
  /// Instance connection port.
  final pulumi.Input<int>? port;
  /// Elasticsearch private network whitelist. (Same as EsIpWhitelist)
  final pulumi.Input<List<String>>? privateWhitelists;
  /// Access protocol. Optional values: `HTTP` and **HTTPS * *.
  final pulumi.Input<String>? protocol;
  /// The public network address of the current instance.
  final pulumi.Input<String>? publicDomain;
  /// Elasticsearch cluster public network access port
  final pulumi.Input<int>? publicPort;
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
  /// Instance change status
  final pulumi.Input<String>? status;
  /// Collection of tag key-value pairs
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<String>? updateStrategy;
  /// Instance version
  final pulumi.Input<String>? version;
  /// The ID of VSwitch.
  final pulumi.Input<String>? vswitchId;
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

  /// Creates a new [InstanceState].
  /// [archType] Schema Type:.
  /// [autoRenewDuration] Renewal Period
  /// [clientNodeAmount] The Elasticsearch cluster's client node quantity, between 2 and 25.
  /// [clientNodeConfiguration] Elasticsearch cluster coordination node configuration See `client_node_configuration` below.
  /// [clientNodeSpec] The client node spec. If specified, client node will be created.
  /// [createTime] Instance creation time.
  /// [dataNodeAmount] The Elasticsearch cluster's data node quantity, between 2 and 50.
  /// [dataNodeConfiguration] Elasticsearch data node information See `data_node_configuration` below.
  /// [dataNodeDiskEncrypted] If encrypt the data node disk. Valid values are `true`, `false`. Default to `false`.
  /// [dataNodeDiskPerformanceLevel] Cloud disk performance level. Valid values are `PL0`, `PL1`, `PL2`, `PL3`. The `data_node_disk_type` muse be `cloud_essd`.
  /// [dataNodeDiskSize] The single data node storage space.
  /// [dataNodeDiskType] The data node disk type. Supported values: cloud_ssd, cloud_efficiency.
  /// [dataNodeSpec] The data node specifications of the Elasticsearch instance.
  /// [description] Instance name
  /// [domain] Elasticsearch cluster private domain name.
  /// [enableKibanaPrivateNetwork] Whether to enable Kibana private network access.
  /// [enableKibanaPublicNetwork] Does Kibana enable public access
  /// [enablePublic] Whether to enable Kibana public network access.
  /// [force] Optional.
  /// [instanceCategory] Version type.
  /// [instanceChargeType] Valid values are `PrePaid`, `PostPaid`. Default to `PostPaid`. From version 1.69.0, the Elasticsearch cluster allows you to update your instance_charge_ype from `PostPaid` to `PrePaid`, the following attributes are required: `period`.
  /// [kibanaConfiguration] Elasticsearch Kibana node settings See `kibana_configuration` below.
  /// [kibanaDomain] Kibana address.
  /// [kibanaNodeSpec] The kibana node specifications of the Elasticsearch instance. Default is `elasticsearch.n4.small`.
  /// [kibanaPort] The port assigned by the Kibana node.
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
  /// [port] Instance connection port.
  /// [privateWhitelists] Elasticsearch private network whitelist. (Same as EsIpWhitelist)
  /// [protocol] Access protocol. Optional values: `HTTP` and **HTTPS * *.
  /// [publicDomain] The public network address of the current instance.
  /// [publicPort] Elasticsearch cluster public network access port
  /// [publicWhitelists] Elasticseach public network access whitelist IP list
  /// [renewStatus] Renewal Status
  /// [renewalDurationUnit] Renewal Period Unit
  /// [resourceGroupId] Resource group to which the instance belongs
  /// [settingConfig] Configuration information
  /// [status] Instance change status
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
  InstanceState({
    this.archType,
    this.autoRenewDuration,
    this.clientNodeAmount,
    this.clientNodeConfiguration,
    this.clientNodeSpec,
    this.createTime,
    this.dataNodeAmount,
    this.dataNodeConfiguration,
    this.dataNodeDiskEncrypted,
    this.dataNodeDiskPerformanceLevel,
    this.dataNodeDiskSize,
    this.dataNodeDiskType,
    this.dataNodeSpec,
    this.description,
    this.domain,
    this.enableKibanaPrivateNetwork,
    this.enableKibanaPublicNetwork,
    this.enablePublic,
    this.force,
    this.instanceCategory,
    this.instanceChargeType,
    this.kibanaConfiguration,
    this.kibanaDomain,
    this.kibanaNodeSpec,
    this.kibanaPort,
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
    this.port,
    this.privateWhitelists,
    this.protocol,
    this.publicDomain,
    this.publicPort,
    this.publicWhitelists,
    this.renewStatus,
    this.renewalDurationUnit,
    this.resourceGroupId,
    this.settingConfig,
    this.status,
    this.tags,
    this.updateStrategy,
    this.version,
    this.vswitchId,
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
      'archType': ?archType,
      'autoRenewDuration': ?autoRenewDuration,
      'clientNodeAmount': ?clientNodeAmount,
      'clientNodeConfiguration': ?pulumi.Input.mapOptionalInputValue<InstanceClientNodeConfiguration, Map<String, dynamic>>(clientNodeConfiguration, (value) => value.toMap()),
      'clientNodeSpec': ?clientNodeSpec,
      'createTime': ?createTime,
      'dataNodeAmount': ?dataNodeAmount,
      'dataNodeConfiguration': ?pulumi.Input.mapOptionalInputValue<InstanceDataNodeConfiguration, Map<String, dynamic>>(dataNodeConfiguration, (value) => value.toMap()),
      'dataNodeDiskEncrypted': ?dataNodeDiskEncrypted,
      'dataNodeDiskPerformanceLevel': ?dataNodeDiskPerformanceLevel,
      'dataNodeDiskSize': ?dataNodeDiskSize,
      'dataNodeDiskType': ?dataNodeDiskType,
      'dataNodeSpec': ?dataNodeSpec,
      'description': ?description,
      'domain': ?domain,
      'enableKibanaPrivateNetwork': ?enableKibanaPrivateNetwork,
      'enableKibanaPublicNetwork': ?enableKibanaPublicNetwork,
      'enablePublic': ?enablePublic,
      'force': ?force,
      'instanceCategory': ?instanceCategory,
      'instanceChargeType': ?instanceChargeType,
      'kibanaConfiguration': ?pulumi.Input.mapOptionalInputValue<InstanceKibanaConfiguration, Map<String, dynamic>>(kibanaConfiguration, (value) => value.toMap()),
      'kibanaDomain': ?kibanaDomain,
      'kibanaNodeSpec': ?kibanaNodeSpec,
      'kibanaPort': ?kibanaPort,
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
      'port': ?port,
      'privateWhitelists': ?privateWhitelists,
      'protocol': ?protocol,
      'publicDomain': ?publicDomain,
      'publicPort': ?publicPort,
      'publicWhitelists': ?publicWhitelists,
      'renewStatus': ?renewStatus,
      'renewalDurationUnit': ?renewalDurationUnit,
      'resourceGroupId': ?resourceGroupId,
      'settingConfig': ?settingConfig,
      'status': ?status,
      'tags': ?tags,
      'updateStrategy': ?updateStrategy,
      'version': ?version,
      'vswitchId': ?vswitchId,
      'warmNodeAmount': ?warmNodeAmount,
      'warmNodeConfiguration': ?pulumi.Input.mapOptionalInputValue<InstanceWarmNodeConfiguration, Map<String, dynamic>>(warmNodeConfiguration, (value) => value.toMap()),
      'warmNodeDiskEncrypted': ?warmNodeDiskEncrypted,
      'warmNodeDiskSize': ?warmNodeDiskSize,
      'warmNodeDiskType': ?warmNodeDiskType,
      'warmNodeSpec': ?warmNodeSpec,
      'zoneCount': ?zoneCount,
    };
  }

  factory InstanceState.fromMap(Map<String, dynamic> map) {
    return InstanceState(
      archType: (() { final guardedValue = map['archType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      autoRenewDuration: (() { final guardedValue = map['autoRenewDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      clientNodeAmount: (() { final guardedValue = map['clientNodeAmount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      clientNodeConfiguration: (() { final guardedValue = map['clientNodeConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceClientNodeConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      clientNodeSpec: (() { final guardedValue = map['clientNodeSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataNodeAmount: (() { final guardedValue = map['dataNodeAmount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      dataNodeConfiguration: (() { final guardedValue = map['dataNodeConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceDataNodeConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dataNodeDiskEncrypted: (() { final guardedValue = map['dataNodeDiskEncrypted']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      dataNodeDiskPerformanceLevel: (() { final guardedValue = map['dataNodeDiskPerformanceLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataNodeDiskSize: (() { final guardedValue = map['dataNodeDiskSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      dataNodeDiskType: (() { final guardedValue = map['dataNodeDiskType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataNodeSpec: (() { final guardedValue = map['dataNodeSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      domain: (() { final guardedValue = map['domain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enableKibanaPrivateNetwork: (() { final guardedValue = map['enableKibanaPrivateNetwork']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableKibanaPublicNetwork: (() { final guardedValue = map['enableKibanaPublicNetwork']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enablePublic: (() { final guardedValue = map['enablePublic']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      force: (() { final guardedValue = map['force']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      instanceCategory: (() { final guardedValue = map['instanceCategory']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceChargeType: (() { final guardedValue = map['instanceChargeType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kibanaConfiguration: (() { final guardedValue = map['kibanaConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceKibanaConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      kibanaDomain: (() { final guardedValue = map['kibanaDomain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kibanaNodeSpec: (() { final guardedValue = map['kibanaNodeSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kibanaPort: (() { final guardedValue = map['kibanaPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      kibanaPrivateSecurityGroupId: (() { final guardedValue = map['kibanaPrivateSecurityGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kibanaPrivateWhitelists: (() { final guardedValue = map['kibanaPrivateWhitelists']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      kibanaWhitelists: (() { final guardedValue = map['kibanaWhitelists']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      kmsEncryptedPassword: (() { final guardedValue = map['kmsEncryptedPassword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kmsEncryptionContext: (() { final guardedValue = map['kmsEncryptionContext']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      masterConfiguration: (() { final guardedValue = map['masterConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceMasterConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      masterNodeDiskType: (() { final guardedValue = map['masterNodeDiskType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      masterNodeSpec: (() { final guardedValue = map['masterNodeSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      orderActionType: (() { final guardedValue = map['orderActionType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      paymentType: (() { final guardedValue = map['paymentType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      period: (() { final guardedValue = map['period']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      privateWhitelists: (() { final guardedValue = map['privateWhitelists']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      protocol: (() { final guardedValue = map['protocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicDomain: (() { final guardedValue = map['publicDomain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicPort: (() { final guardedValue = map['publicPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      publicWhitelists: (() { final guardedValue = map['publicWhitelists']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      renewStatus: (() { final guardedValue = map['renewStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      renewalDurationUnit: (() { final guardedValue = map['renewalDurationUnit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupId: (() { final guardedValue = map['resourceGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      settingConfig: (() { final guardedValue = map['settingConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      updateStrategy: (() { final guardedValue = map['updateStrategy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vswitchId: (() { final guardedValue = map['vswitchId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      warmNodeAmount: (() { final guardedValue = map['warmNodeAmount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      warmNodeConfiguration: (() { final guardedValue = map['warmNodeConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceWarmNodeConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      warmNodeDiskEncrypted: (() { final guardedValue = map['warmNodeDiskEncrypted']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      warmNodeDiskSize: (() { final guardedValue = map['warmNodeDiskSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      warmNodeDiskType: (() { final guardedValue = map['warmNodeDiskType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      warmNodeSpec: (() { final guardedValue = map['warmNodeSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneCount: (() { final guardedValue = map['zoneCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

