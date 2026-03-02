// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_ip_whitelist.dart';
import 'instance_parameter.dart';

/// {@template pulumi_gpdb_instance_instance_args_doc}
/// The set of arguments for Instance.
/// {@endtemplate}
/// {@macro pulumi_gpdb_instance_instance_args_doc}
class InstanceArgs {
  /// Field `availability_zone` has been deprecated from provider version 1.187.0. New field `zone_id` instead.
  final pulumi.Input<String>? availabilityZone;
  /// Whether to load the sample dataset after the instance is created. Valid values: `true`, `false`.
  final pulumi.Input<bool>? createSampleData;
  /// Specifies whether to enable or disable data sharing. Default value: `closed`. Valid values:
  final pulumi.Input<String>? dataShareStatus;
  /// The db instance category. Valid values: `Basic`, `HighAvailability`.
  /// > **NOTE:** This parameter must be passed in to create a storage reservation mode instance.
  final pulumi.Input<String>? dbInstanceCategory;
  /// The db instance class. see [Instance specifications](https://www.alibabacloud.com/help/en/analyticdb-for-postgresql/latest/instance-types).
  /// > **NOTE:** This parameter must be passed in to create a storage reservation mode instance.
  final pulumi.Input<String>? dbInstanceClass;
  /// The db instance mode. Valid values: `StorageElastic`, `Serverless`, `Classic`.
  final pulumi.Input<String> dbInstanceMode;
  /// The description of the instance.
  final pulumi.Input<String>? description;
  /// The ID of the encryption key.
  /// > **NOTE:** If `encryption_type` is set to `CloudDisk`, you must specify an encryption key that resides in the same region as the cloud disk that is specified by EncryptionType. Otherwise, leave this parameter empty.
  final pulumi.Input<String>? encryptionKey;
  /// The encryption type. Valid values: `CloudDisk`.
  /// > **NOTE:** Disk encryption cannot be disabled after it is enabled.
  final pulumi.Input<String>? encryptionType;
  /// The database engine used by the instance. Value options can refer to the latest docs [CreateDBInstance](https://www.alibabacloud.com/help/en/analyticdb-for-postgresql/latest/api-gpdb-2016-05-03-createdbinstance) `EngineVersion`.
  final pulumi.Input<String> engine;
  /// The version of the database engine used by the instance.
  final pulumi.Input<String> engineVersion;
  /// Field `instance_charge_type` has been deprecated from provider version 1.187.0. New field `payment_type` instead.
  final pulumi.Input<String>? instanceChargeType;
  /// The number of nodes. Valid values: `2`, `4`, `8`, `12`, `16`, `24`, `32`, `64`, `96`, `128`.
  final pulumi.Input<int>? instanceGroupCount;
  /// The network type of the instance. Valid values: `VPC`.
  final pulumi.Input<String>? instanceNetworkType;
  /// The specification of segment nodes. Valid values:
  /// - If `db_instance_category` is set to `HighAvailability`, and `db_instance_mode` is set to `StorageElastic`. Valid values: `2C16G`, `4C32G`, `16C128G`.
  /// - If `db_instance_category` is set to `Basic`, and `db_instance_mode` is set to `StorageElastic`. Valid values: `2C8G`, `4C16G`, `8C32G`, `16C64G`.
  /// - If `db_instance_mode` is set to `Serverless`. Valid values: `4C16G`, `8C32G`.
  /// > **NOTE:** This parameter must be passed to create a storage elastic mode instance and a serverless version instance.
  final pulumi.Input<String>? instanceSpec;
  /// The ip whitelist. See `ip_whitelist` below.
  /// Default to creating a whitelist group with the group name "default" and security_ip_list "127.0.0.1".
  final pulumi.Input<List<InstanceIpWhitelist>>? ipWhitelists;
  /// The end time of the maintenance window for the instance. in the format of HH:mmZ (UTC time), for example 03:00Z. start time should be later than end time.
  final pulumi.Input<String>? maintainEndTime;
  /// The start time of the maintenance window for the instance. in the format of HH:mmZ (UTC time), for example 02:00Z.
  final pulumi.Input<String>? maintainStartTime;
  /// The amount of coordinator node resources. Valid values: `2`, `4`, `8`, `16`, `32`.
  final pulumi.Input<int>? masterCu;
  /// The number of Master nodes. **NOTE:** Field `master_node_num` has been deprecated from provider version 1.213.0.
  final pulumi.Input<int>? masterNodeNum;
  /// The parameters. See `parameters` below.
  final pulumi.Input<List<InstanceParameter>>? parameters;
  /// The billing method of the instance. Valid values: `Subscription`, `PayAsYouGo`.
  final pulumi.Input<String>? paymentType;
  /// The duration that you will buy the resource, in month. required when `payment_type` is `Subscription`. Valid values: `Year`, `Month`.
  final pulumi.Input<String>? period;
  /// The private ip address. **NOTE:** Field `private_ip_address` has been deprecated from provider version 1.213.0.
  final pulumi.Input<String>? privateIpAddress;
  /// The type of the product. Default value: `standard`. Valid values: `standard`, `cost-effective`.
  final pulumi.Input<String>? prodType;
  /// The ID of the enterprise resource group to which the instance belongs.
  final pulumi.Input<String>? resourceGroupId;
  /// Resource management mode. Valid values: `resourceGroup`, `resourceQueue`.
  final pulumi.Input<String>? resourceManagementMode;
  /// Field `security_ip_list` has been deprecated from provider version 1.187.0. New field `ip_whitelist` instead.
  final pulumi.Input<List<String>>? securityIpLists;
  /// The ESSD cloud disk performance level. Valid values: `pl0`, `pl1`, `pl2`.
  final pulumi.Input<String>? segDiskPerformanceLevel;
  /// Calculate the number of nodes. Valid values: `2` to `512`. The value range of the high-availability version of the storage elastic mode is `4` to `512`, and the value must be a multiple of `4`. The value range of the basic version of the storage elastic mode is `2` to `512`, and the value must be a multiple of `2`. The-Serverless version has a value range of `2` to `512`. The value must be a multiple of `2`.
  /// > **NOTE:** This parameter must be passed in to create a storage elastic mode instance and a Serverless version instance. During the public beta of the Serverless version (from 0101, 2022 to 0131, 2022), a maximum of 12 compute nodes can be created.
  final pulumi.Input<int>? segNodeNum;
  /// The seg storage type. Valid values: `cloud_essd`. **NOTE:** If `db_instance_mode` is set to `StorageElastic`, `seg_storage_type` is required. From version 1.233.1, `seg_storage_type` cannot be modified, or set to `cloud_efficiency`. `seg_storage_type` can only be set to `cloud_essd`.
  final pulumi.Input<String>? segStorageType;
  /// The mode of the Serverless instance. Valid values: `Manual`, `Auto`. **NOTE:** `serverless_mode` is valid only when `db_instance_mode` is set to `Serverless`.
  final pulumi.Input<String>? serverlessMode;
  /// Enable or disable SSL. Valid values: `0` and `1`.
  final pulumi.Input<int>? sslEnabled;
  /// The storage capacity. Unit: GB. Valid values: `50` to `4000`.
  /// > **NOTE:** This parameter must be passed in to create a storage reservation mode instance.
  final pulumi.Input<int>? storageSize;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The used time. When the parameter `period` is `Year`, the `used_time` value is `1` to `3`. When the parameter `period` is `Month`, the `used_time` value is `1` to `9`.
  final pulumi.Input<String>? usedTime;
  /// Specifies whether to enable vector engine optimization. Default value: `disabled`. Valid values: `enabled` and `disabled`.
  final pulumi.Input<String>? vectorConfigurationStatus;
  /// The vpc ID of the resource.
  final pulumi.Input<String>? vpcId;
  /// The vswitch id.
  final pulumi.Input<String> vswitchId;
  /// The zone ID of the instance.
  final pulumi.Input<String>? zoneId;

  /// Creates a new [InstanceArgs].
  /// [availabilityZone] Field `availability_zone` has been deprecated from provider version 1.187.0. New field `zone_id` instead.
  /// [createSampleData] Whether to load the sample dataset after the instance is created. Valid values: `true`, `false`.
  /// [dataShareStatus] Specifies whether to enable or disable data sharing. Default value: `closed`. Valid values:
  /// [dbInstanceCategory] The db instance category. Valid values: `Basic`, `HighAvailability`.
  /// [dbInstanceClass] The db instance class. see [Instance specifications](https://www.alibabacloud.com/help/en/analyticdb-for-postgresql/latest/instance-types).
  /// [dbInstanceMode] The db instance mode. Valid values: `StorageElastic`, `Serverless`, `Classic`.
  /// [description] The description of the instance.
  /// [encryptionKey] The ID of the encryption key.
  /// [encryptionType] The encryption type. Valid values: `CloudDisk`.
  /// [engine] The database engine used by the instance. Value options can refer to the latest docs [CreateDBInstance](https://www.alibabacloud.com/help/en/analyticdb-for-postgresql/latest/api-gpdb-2016-05-03-createdbinstance) `EngineVersion`.
  /// [engineVersion] The version of the database engine used by the instance.
  /// [instanceChargeType] Field `instance_charge_type` has been deprecated from provider version 1.187.0. New field `payment_type` instead.
  /// [instanceGroupCount] The number of nodes. Valid values: `2`, `4`, `8`, `12`, `16`, `24`, `32`, `64`, `96`, `128`.
  /// [instanceNetworkType] The network type of the instance. Valid values: `VPC`.
  /// [instanceSpec] The specification of segment nodes. Valid values:
  /// [ipWhitelists] The ip whitelist. See `ip_whitelist` below.
  /// [maintainEndTime] The end time of the maintenance window for the instance. in the format of HH:mmZ (UTC time), for example 03:00Z. start time should be later than end time.
  /// [maintainStartTime] The start time of the maintenance window for the instance. in the format of HH:mmZ (UTC time), for example 02:00Z.
  /// [masterCu] The amount of coordinator node resources. Valid values: `2`, `4`, `8`, `16`, `32`.
  /// [masterNodeNum] The number of Master nodes. **NOTE:** Field `master_node_num` has been deprecated from provider version 1.213.0.
  /// [parameters] The parameters. See `parameters` below.
  /// [paymentType] The billing method of the instance. Valid values: `Subscription`, `PayAsYouGo`.
  /// [period] The duration that you will buy the resource, in month. required when `payment_type` is `Subscription`. Valid values: `Year`, `Month`.
  /// [privateIpAddress] The private ip address. **NOTE:** Field `private_ip_address` has been deprecated from provider version 1.213.0.
  /// [prodType] The type of the product. Default value: `standard`. Valid values: `standard`, `cost-effective`.
  /// [resourceGroupId] The ID of the enterprise resource group to which the instance belongs.
  /// [resourceManagementMode] Resource management mode. Valid values: `resourceGroup`, `resourceQueue`.
  /// [securityIpLists] Field `security_ip_list` has been deprecated from provider version 1.187.0. New field `ip_whitelist` instead.
  /// [segDiskPerformanceLevel] The ESSD cloud disk performance level. Valid values: `pl0`, `pl1`, `pl2`.
  /// [segNodeNum] Calculate the number of nodes. Valid values: `2` to `512`. The value range of the high-availability version of the storage elastic mode is `4` to `512`, and the value must be a multiple of `4`. The value range of the basic version of the storage elastic mode is `2` to `512`, and the value must be a multiple of `2`. The-Serverless version has a value range of `2` to `512`. The value must be a multiple of `2`.
  /// [segStorageType] The seg storage type. Valid values: `cloud_essd`. **NOTE:** If `db_instance_mode` is set to `StorageElastic`, `seg_storage_type` is required. From version 1.233.1, `seg_storage_type` cannot be modified, or set to `cloud_efficiency`. `seg_storage_type` can only be set to `cloud_essd`.
  /// [serverlessMode] The mode of the Serverless instance. Valid values: `Manual`, `Auto`. **NOTE:** `serverless_mode` is valid only when `db_instance_mode` is set to `Serverless`.
  /// [sslEnabled] Enable or disable SSL. Valid values: `0` and `1`.
  /// [storageSize] The storage capacity. Unit: GB. Valid values: `50` to `4000`.
  /// [tags] A mapping of tags to assign to the resource.
  /// [usedTime] The used time. When the parameter `period` is `Year`, the `used_time` value is `1` to `3`. When the parameter `period` is `Month`, the `used_time` value is `1` to `9`.
  /// [vectorConfigurationStatus] Specifies whether to enable vector engine optimization. Default value: `disabled`. Valid values: `enabled` and `disabled`.
  /// [vpcId] The vpc ID of the resource.
  /// [vswitchId] The vswitch id.
  /// [zoneId] The zone ID of the instance.
  InstanceArgs({
    this.availabilityZone,
    this.createSampleData,
    this.dataShareStatus,
    this.dbInstanceCategory,
    this.dbInstanceClass,
    required this.dbInstanceMode,
    this.description,
    this.encryptionKey,
    this.encryptionType,
    required this.engine,
    required this.engineVersion,
    this.instanceChargeType,
    this.instanceGroupCount,
    this.instanceNetworkType,
    this.instanceSpec,
    this.ipWhitelists,
    this.maintainEndTime,
    this.maintainStartTime,
    this.masterCu,
    this.masterNodeNum,
    this.parameters,
    this.paymentType,
    this.period,
    this.privateIpAddress,
    this.prodType,
    this.resourceGroupId,
    this.resourceManagementMode,
    this.securityIpLists,
    this.segDiskPerformanceLevel,
    this.segNodeNum,
    this.segStorageType,
    this.serverlessMode,
    this.sslEnabled,
    this.storageSize,
    this.tags,
    this.usedTime,
    this.vectorConfigurationStatus,
    this.vpcId,
    required this.vswitchId,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityZone': ?availabilityZone,
      'createSampleData': ?createSampleData,
      'dataShareStatus': ?dataShareStatus,
      'dbInstanceCategory': ?dbInstanceCategory,
      'dbInstanceClass': ?dbInstanceClass,
      'dbInstanceMode': dbInstanceMode,
      'description': ?description,
      'encryptionKey': ?encryptionKey,
      'encryptionType': ?encryptionType,
      'engine': engine,
      'engineVersion': engineVersion,
      'instanceChargeType': ?instanceChargeType,
      'instanceGroupCount': ?instanceGroupCount,
      'instanceNetworkType': ?instanceNetworkType,
      'instanceSpec': ?instanceSpec,
      'ipWhitelists': ?pulumi.Input.mapOptionalInputValue<List<InstanceIpWhitelist>, List<Map<String, dynamic>>>(ipWhitelists, (value) => pulumi.Input.encodeList<InstanceIpWhitelist, Map<String, dynamic>>(value, (value) => value.toMap())),
      'maintainEndTime': ?maintainEndTime,
      'maintainStartTime': ?maintainStartTime,
      'masterCu': ?masterCu,
      'masterNodeNum': ?masterNodeNum,
      'parameters': ?pulumi.Input.mapOptionalInputValue<List<InstanceParameter>, List<Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeList<InstanceParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'paymentType': ?paymentType,
      'period': ?period,
      'privateIpAddress': ?privateIpAddress,
      'prodType': ?prodType,
      'resourceGroupId': ?resourceGroupId,
      'resourceManagementMode': ?resourceManagementMode,
      'securityIpLists': ?securityIpLists,
      'segDiskPerformanceLevel': ?segDiskPerformanceLevel,
      'segNodeNum': ?segNodeNum,
      'segStorageType': ?segStorageType,
      'serverlessMode': ?serverlessMode,
      'sslEnabled': ?sslEnabled,
      'storageSize': ?storageSize,
      'tags': ?tags,
      'usedTime': ?usedTime,
      'vectorConfigurationStatus': ?vectorConfigurationStatus,
      'vpcId': ?vpcId,
      'vswitchId': vswitchId,
      'zoneId': ?zoneId,
    };
  }

  factory InstanceArgs.fromMap(Map<String, dynamic> map) {
    return InstanceArgs(
      availabilityZone: map['availabilityZone'] == null ? null : (map['availabilityZone'] as String).input(),
      createSampleData: map['createSampleData'] == null ? null : (map['createSampleData'] as bool).input(),
      dataShareStatus: map['dataShareStatus'] == null ? null : (map['dataShareStatus'] as String).input(),
      dbInstanceCategory: map['dbInstanceCategory'] == null ? null : (map['dbInstanceCategory'] as String).input(),
      dbInstanceClass: map['dbInstanceClass'] == null ? null : (map['dbInstanceClass'] as String).input(),
      dbInstanceMode: (map['dbInstanceMode'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      encryptionKey: map['encryptionKey'] == null ? null : (map['encryptionKey'] as String).input(),
      encryptionType: map['encryptionType'] == null ? null : (map['encryptionType'] as String).input(),
      engine: (map['engine'] as String).input(),
      engineVersion: (map['engineVersion'] as String).input(),
      instanceChargeType: map['instanceChargeType'] == null ? null : (map['instanceChargeType'] as String).input(),
      instanceGroupCount: map['instanceGroupCount'] == null ? null : (map['instanceGroupCount'] as int).input(),
      instanceNetworkType: map['instanceNetworkType'] == null ? null : (map['instanceNetworkType'] as String).input(),
      instanceSpec: map['instanceSpec'] == null ? null : (map['instanceSpec'] as String).input(),
      ipWhitelists: map['ipWhitelists'] == null ? null : (pulumi.Input.decodeList<InstanceIpWhitelist>(map['ipWhitelists'], (value) => InstanceIpWhitelist.fromMap((value as Map).cast<String, dynamic>()))).input(),
      maintainEndTime: map['maintainEndTime'] == null ? null : (map['maintainEndTime'] as String).input(),
      maintainStartTime: map['maintainStartTime'] == null ? null : (map['maintainStartTime'] as String).input(),
      masterCu: map['masterCu'] == null ? null : (map['masterCu'] as int).input(),
      masterNodeNum: map['masterNodeNum'] == null ? null : (map['masterNodeNum'] as int).input(),
      parameters: map['parameters'] == null ? null : (pulumi.Input.decodeList<InstanceParameter>(map['parameters'], (value) => InstanceParameter.fromMap((value as Map).cast<String, dynamic>()))).input(),
      paymentType: map['paymentType'] == null ? null : (map['paymentType'] as String).input(),
      period: map['period'] == null ? null : (map['period'] as String).input(),
      privateIpAddress: map['privateIpAddress'] == null ? null : (map['privateIpAddress'] as String).input(),
      prodType: map['prodType'] == null ? null : (map['prodType'] as String).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId'] as String).input(),
      resourceManagementMode: map['resourceManagementMode'] == null ? null : (map['resourceManagementMode'] as String).input(),
      securityIpLists: map['securityIpLists'] == null ? null : ((map['securityIpLists'] as List).cast<String>()).input(),
      segDiskPerformanceLevel: map['segDiskPerformanceLevel'] == null ? null : (map['segDiskPerformanceLevel'] as String).input(),
      segNodeNum: map['segNodeNum'] == null ? null : (map['segNodeNum'] as int).input(),
      segStorageType: map['segStorageType'] == null ? null : (map['segStorageType'] as String).input(),
      serverlessMode: map['serverlessMode'] == null ? null : (map['serverlessMode'] as String).input(),
      sslEnabled: map['sslEnabled'] == null ? null : (map['sslEnabled'] as int).input(),
      storageSize: map['storageSize'] == null ? null : (map['storageSize'] as int).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      usedTime: map['usedTime'] == null ? null : (map['usedTime'] as String).input(),
      vectorConfigurationStatus: map['vectorConfigurationStatus'] == null ? null : (map['vectorConfigurationStatus'] as String).input(),
      vpcId: map['vpcId'] == null ? null : (map['vpcId'] as String).input(),
      vswitchId: (map['vswitchId'] as String).input(),
      zoneId: map['zoneId'] == null ? null : (map['zoneId'] as String).input(),
    );
  }
}

