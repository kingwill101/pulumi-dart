// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering DBCluster resources.
class DBClusterState {
  /// Auto-renewal period of an cluster, in the unit of the month. It is valid when `payment_type` is `Subscription`. Valid values: `1`, `2`, `3`, `6`, `12`, `24`, `36`. Default Value: `1`.
  final pulumi.Input<int>? autoRenewPeriod;
  /// The specifications of computing resources in elastic mode. The increase of resources can speed up queries. AnalyticDB for MySQL automatically scales computing resources. For more information, see [ComputeResource](https://www.alibabacloud.com/help/en/analyticdb-for-mysql/developer-reference/api-adb-2019-03-15-describecomputeresource)
  final pulumi.Input<String>? computeResource;
  /// The connection string of the cluster.
  final pulumi.Input<String>? connectionString;
  /// The db cluster category. Valid values: `Basic`, `Cluster`, `MixedStorage`.
  final pulumi.Input<String>? dbClusterCategory;
  /// It duplicates with attribute db_node_class and is deprecated from 1.121.2.
  final pulumi.Input<String>? dbClusterClass;
  /// The db cluster version. Valid values: `3.0`. Default Value: `3.0`.
  final pulumi.Input<String>? dbClusterVersion;
  /// The db node class. For more information, see [DBClusterClass](https://help.aliyun.com/document_detail/190519.html)
  final pulumi.Input<String>? dbNodeClass;
  /// The db node count.
  final pulumi.Input<int>? dbNodeCount;
  /// The db node storage.
  final pulumi.Input<int>? dbNodeStorage;
  /// The description of DBCluster.
  final pulumi.Input<String>? description;
  /// Specifies whether to enable disk encryption. Default Value: `false`. Valid values: `true`, `false`.
  final pulumi.Input<bool>? diskEncryption;
  /// The ESSD performance level. Default Value: `PL1`. Valid values: `PL1`, `PL2`, `PL3`.
  final pulumi.Input<String>? diskPerformanceLevel;
  /// The elastic io resource.
  final pulumi.Input<int>? elasticIoResource;
  /// The specifications of a single elastic resource node. Default Value: `8Core64GB`. Valid values:
  /// - `8Core64GB`: If you set `elastic_io_resource_size` to `8Core64GB`, the specifications of an EIU are 24 cores and 192 GB memory.
  /// - `12Core96GB`: If you set `elastic_io_resource_size` to `12Core96GB`, the specifications of an EIU are 36 cores and 288 GB memory.
  /// - `16Core128GB`: (Available since v1.237.0)If you set `elastic_io_resource_size` to `16Core128GB`, the specifications of an EIU are 48 cores and 384 GB memory.
  final pulumi.Input<String>? elasticIoResourceSize;
  /// Specifies whether to enable SSL encryption. Default Value: `false`. Valid values: `true`, `false`.
  final pulumi.Input<bool>? enableSsl;
  /// The minor version to which you want to update.
  final pulumi.Input<String>? kernelVersion;
  /// The Key Management Service (KMS) ID that is used for disk encryption. `kms_id` is valid only when `disk_encryption` is set to `true`.
  final pulumi.Input<String>? kmsId;
  /// The maintenance window of the cluster. Format: hh:mmZ-hh:mmZ.
  final pulumi.Input<String>? maintainTime;
  /// The mode of the cluster. Valid values: `reserver`, `flexible`.
  final pulumi.Input<String>? mode;
  /// The modify type.
  final pulumi.Input<String>? modifyType;
  /// Field `pay_type` has been deprecated. New field `payment_type` instead.
  final pulumi.Input<String>? payType;
  /// The payment type of the resource. Valid values: `PayAsYouGo` and `Subscription`. Default Value: `PayAsYouGo`. **Note:** The `payment_type` supports updating from v1.166.0+.
  final pulumi.Input<String>? paymentType;
  /// The duration that you will buy DB cluster (in month). It is valid when `payment_type` is `Subscription`. Valid values: [1~9], 12, 24, 36.
  /// &gt; **NOTE:** The attribute `period` is only used to create Subscription instance or modify the PayAsYouGo instance to Subscription. Once effect, it will not be modified that means running `pulumi up` will not affect the resource.
  final pulumi.Input<int>? period;
  /// (Available since v1.196.0) The connection port of the ADB cluster.
  final pulumi.Input<String>? port;
  /// Valid values are `AutoRenewal`, `Normal`, `NotRenewal`, Default to `NotRenewal`.
  final pulumi.Input<String>? renewalStatus;
  /// The ID of the resource group.
  final pulumi.Input<String>? resourceGroupId;
  /// List of IP addresses allowed to access all databases of an cluster. The list contains up to 1,000 IP addresses, separated by commas. Supported formats include 0.0.0.0/0, 10.23.12.24 (IP), and 10.23.12.24/24 (Classless Inter-Domain Routing (CIDR) mode. /24 represents the length of the prefix in an IP address. The range of the prefix length is [1,32]).
  final pulumi.Input<List<String>>? securityIps;
  /// The status of the resource.
  final pulumi.Input<String>? status;
  /// The time when to perform the update. Valid values:
  final pulumi.Input<int>? switchMode;
  /// A mapping of tags to assign to the resource.
  /// - Key: It can be up to 64 characters in length. It cannot begin with "aliyun", "acs:", "http://", or "https://". It cannot be a null string.
  /// - Value: It can be up to 128 characters in length. It cannot begin with "aliyun", "acs:", "http://", or "https://". It can be a null string.
  ///
  /// &gt; **NOTE:** Because of data backup and migration, change DB cluster type and storage would cost 15~30 minutes. Please make full preparation before changing them.
  final pulumi.Input<Map<String, String>>? tags;
  /// The vpc ID of the resource.
  final pulumi.Input<String>? vpcId;
  /// The vswitch id.
  final pulumi.Input<String>? vswitchId;
  /// The zone ID of the resource.
  final pulumi.Input<String>? zoneId;

  /// Creates a new [DBClusterState].
  /// [autoRenewPeriod] Auto-renewal period of an cluster, in the unit of the month. It is valid when `payment_type` is `Subscription`. Valid values: `1`, `2`, `3`, `6`, `12`, `24`, `36`. Default Value: `1`.
  /// [computeResource] The specifications of computing resources in elastic mode. The increase of resources can speed up queries. AnalyticDB for MySQL automatically scales computing resources. For more information, see [ComputeResource](https://www.alibabacloud.com/help/en/analyticdb-for-mysql/developer-reference/api-adb-2019-03-15-describecomputeresource)
  /// [connectionString] The connection string of the cluster.
  /// [dbClusterCategory] The db cluster category. Valid values: `Basic`, `Cluster`, `MixedStorage`.
  /// [dbClusterClass] It duplicates with attribute db_node_class and is deprecated from 1.121.2.
  /// [dbClusterVersion] The db cluster version. Valid values: `3.0`. Default Value: `3.0`.
  /// [dbNodeClass] The db node class. For more information, see [DBClusterClass](https://help.aliyun.com/document_detail/190519.html)
  /// [dbNodeCount] The db node count.
  /// [dbNodeStorage] The db node storage.
  /// [description] The description of DBCluster.
  /// [diskEncryption] Specifies whether to enable disk encryption. Default Value: `false`. Valid values: `true`, `false`.
  /// [diskPerformanceLevel] The ESSD performance level. Default Value: `PL1`. Valid values: `PL1`, `PL2`, `PL3`.
  /// [elasticIoResource] The elastic io resource.
  /// [elasticIoResourceSize] The specifications of a single elastic resource node. Default Value: `8Core64GB`. Valid values:
  /// [enableSsl] Specifies whether to enable SSL encryption. Default Value: `false`. Valid values: `true`, `false`.
  /// [kernelVersion] The minor version to which you want to update.
  /// [kmsId] The Key Management Service (KMS) ID that is used for disk encryption. `kms_id` is valid only when `disk_encryption` is set to `true`.
  /// [maintainTime] The maintenance window of the cluster. Format: hh:mmZ-hh:mmZ.
  /// [mode] The mode of the cluster. Valid values: `reserver`, `flexible`.
  /// [modifyType] The modify type.
  /// [payType] Field `pay_type` has been deprecated. New field `payment_type` instead.
  /// [paymentType] The payment type of the resource. Valid values: `PayAsYouGo` and `Subscription`. Default Value: `PayAsYouGo`. **Note:** The `payment_type` supports updating from v1.166.0+.
  /// [period] The duration that you will buy DB cluster (in month). It is valid when `payment_type` is `Subscription`. Valid values: [1~9], 12, 24, 36.
  /// [port] (Available since v1.196.0) The connection port of the ADB cluster.
  /// [renewalStatus] Valid values are `AutoRenewal`, `Normal`, `NotRenewal`, Default to `NotRenewal`.
  /// [resourceGroupId] The ID of the resource group.
  /// [securityIps] List of IP addresses allowed to access all databases of an cluster. The list contains up to 1,000 IP addresses, separated by commas. Supported formats include 0.0.0.0/0, 10.23.12.24 (IP), and 10.23.12.24/24 (Classless Inter-Domain Routing (CIDR) mode. /24 represents the length of the prefix in an IP address. The range of the prefix length is [1,32]).
  /// [status] The status of the resource.
  /// [switchMode] The time when to perform the update. Valid values:
  /// [tags] A mapping of tags to assign to the resource.
  /// [vpcId] The vpc ID of the resource.
  /// [vswitchId] The vswitch id.
  /// [zoneId] The zone ID of the resource.
  DBClusterState({
    this.autoRenewPeriod,
    this.computeResource,
    this.connectionString,
    this.dbClusterCategory,
    this.dbClusterClass,
    this.dbClusterVersion,
    this.dbNodeClass,
    this.dbNodeCount,
    this.dbNodeStorage,
    this.description,
    this.diskEncryption,
    this.diskPerformanceLevel,
    this.elasticIoResource,
    this.elasticIoResourceSize,
    this.enableSsl,
    this.kernelVersion,
    this.kmsId,
    this.maintainTime,
    this.mode,
    this.modifyType,
    this.payType,
    this.paymentType,
    this.period,
    this.port,
    this.renewalStatus,
    this.resourceGroupId,
    this.securityIps,
    this.status,
    this.switchMode,
    this.tags,
    this.vpcId,
    this.vswitchId,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoRenewPeriod': ?autoRenewPeriod,
      'computeResource': ?computeResource,
      'connectionString': ?connectionString,
      'dbClusterCategory': ?dbClusterCategory,
      'dbClusterClass': ?dbClusterClass,
      'dbClusterVersion': ?dbClusterVersion,
      'dbNodeClass': ?dbNodeClass,
      'dbNodeCount': ?dbNodeCount,
      'dbNodeStorage': ?dbNodeStorage,
      'description': ?description,
      'diskEncryption': ?diskEncryption,
      'diskPerformanceLevel': ?diskPerformanceLevel,
      'elasticIoResource': ?elasticIoResource,
      'elasticIoResourceSize': ?elasticIoResourceSize,
      'enableSsl': ?enableSsl,
      'kernelVersion': ?kernelVersion,
      'kmsId': ?kmsId,
      'maintainTime': ?maintainTime,
      'mode': ?mode,
      'modifyType': ?modifyType,
      'payType': ?payType,
      'paymentType': ?paymentType,
      'period': ?period,
      'port': ?port,
      'renewalStatus': ?renewalStatus,
      'resourceGroupId': ?resourceGroupId,
      'securityIps': ?securityIps,
      'status': ?status,
      'switchMode': ?switchMode,
      'tags': ?tags,
      'vpcId': ?vpcId,
      'vswitchId': ?vswitchId,
      'zoneId': ?zoneId,
    };
  }

  factory DBClusterState.fromMap(Map<String, dynamic> map) {
    return DBClusterState(
      autoRenewPeriod: (() { final guardedValue = map['autoRenewPeriod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      computeResource: (() { final guardedValue = map['computeResource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      connectionString: (() { final guardedValue = map['connectionString']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dbClusterCategory: (() { final guardedValue = map['dbClusterCategory']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dbClusterClass: (() { final guardedValue = map['dbClusterClass']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dbClusterVersion: (() { final guardedValue = map['dbClusterVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dbNodeClass: (() { final guardedValue = map['dbNodeClass']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dbNodeCount: (() { final guardedValue = map['dbNodeCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      dbNodeStorage: (() { final guardedValue = map['dbNodeStorage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      diskEncryption: (() { final guardedValue = map['diskEncryption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      diskPerformanceLevel: (() { final guardedValue = map['diskPerformanceLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      elasticIoResource: (() { final guardedValue = map['elasticIoResource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      elasticIoResourceSize: (() { final guardedValue = map['elasticIoResourceSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enableSsl: (() { final guardedValue = map['enableSsl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      kernelVersion: (() { final guardedValue = map['kernelVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kmsId: (() { final guardedValue = map['kmsId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maintainTime: (() { final guardedValue = map['maintainTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      modifyType: (() { final guardedValue = map['modifyType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      payType: (() { final guardedValue = map['payType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      paymentType: (() { final guardedValue = map['paymentType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      period: (() { final guardedValue = map['period']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      renewalStatus: (() { final guardedValue = map['renewalStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupId: (() { final guardedValue = map['resourceGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securityIps: (() { final guardedValue = map['securityIps']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      switchMode: (() { final guardedValue = map['switchMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vswitchId: (() { final guardedValue = map['vswitchId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

