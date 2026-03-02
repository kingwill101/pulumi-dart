// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering DBClusterLakeVersion resources.
class DBClusterLakeVersionState {
  /// The ID of the backup set that you want to use to restore data.
  final pulumi.Input<String>? backupSetId;
  /// The name of the service.
  final pulumi.Input<String>? commodityCode;
  /// The computing resources of the cluster.
  final pulumi.Input<String>? computeResource;
  /// The endpoint of the cluster.
  final pulumi.Input<String>? connectionString;
  /// The createTime of the cluster.
  final pulumi.Input<String>? createTime;
  /// The description of the cluster.
  final pulumi.Input<String>? dbClusterDescription;
  /// The version of the cluster. Valid values: `5.0`.
  final pulumi.Input<String>? dbClusterVersion;
  /// Specifies whether to enable disk encryption. Valid values: `true`, `false`.
  final pulumi.Input<bool>? diskEncryption;
  /// Whether to enable default allocation of resources to user_default resource groups.
  final pulumi.Input<bool>? enableDefaultResourceGroup;
  /// Specifies whether to enable SSL encryption. Valid values: `true`, `false`.
  final pulumi.Input<bool>? enableSsl;
  /// The engine of the database.
  final pulumi.Input<String>? engine;
  /// The engine version of the database.
  final pulumi.Input<String>? engineVersion;
  /// The time when the cluster expires.
  final pulumi.Input<String>? expireTime;
  /// Indicates whether the cluster has expired.
  final pulumi.Input<bool>? expired;
  /// The ID of the key that is used to encrypt disk data. `kms_id` is valid only when `disk_encryption` is set to `true`.
  final pulumi.Input<String>? kmsId;
  /// The lock mode of the cluster.
  final pulumi.Input<String>? lockMode;
  /// The reason why the cluster is locked.
  final pulumi.Input<String>? lockReason;
  /// The payment type of the resource. Valid values: `PayAsYouGo`, `Subscription`. **NOTE:** From version 1.245.0, `payment_type` can be set to `Subscription`.
  final pulumi.Input<String>? paymentType;
  /// The subscription period of the subscription cluster. Valid values: `1` to `9`, `12`, `24`, `36`.
  final pulumi.Input<int>? period;
  /// The port that is used to access the cluster.
  final pulumi.Input<String>? port;
  /// The product form of the cluster. Valid values:
  /// - `IntegrationForm`: Integrated.
  /// - `LegacyForm`: Data Lakehouse Edition.
  final pulumi.Input<String>? productForm;
  /// The edition of the cluster. Valid values:
  /// - `BasicVersion`: Basic Edition.
  /// - `EnterpriseVersion`: Enterprise Edition.
  /// > **NOTE:** `product_version` must be specified only when `product_form` is set to `IntegrationForm`.
  final pulumi.Input<String>? productVersion;
  /// The number of reserved resource nodes.
  final pulumi.Input<int>? reservedNodeCount;
  /// The specifications of reserved resource nodes.
  final pulumi.Input<String>? reservedNodeSize;
  /// The ID of the resource group.
  final pulumi.Input<String>? resourceGroupId;
  /// The point in time to which you want to restore data from the backup set.
  final pulumi.Input<String>? restoreToTime;
  /// The method that you want to use to restore data. Valid values:
  final pulumi.Input<String>? restoreType;
  /// The ID of the secondary zone.
  final pulumi.Input<String>? secondaryVswitchId;
  /// The ID of the secondary vSwitch.
  final pulumi.Input<String>? secondaryZoneId;
  /// The IP addresses in an IP address whitelist of a cluster. Separate multiple IP addresses with commas (,). You can add a maximum of 500 different IP addresses to a whitelist. The entries in the IP address whitelist must be in one of the following formats:
  /// - IP addresses, such as 10.23.XX.XX.
  /// - CIDR blocks, such as 10.23.xx.xx/24. In this example, 24 indicates that the prefix of each IP address in the IP whitelist is 24 bits in length. You can replace 24 with a value within the range of 1 to 32.
  final pulumi.Input<String>? securityIps;
  /// The ID of the source AnalyticDB for MySQL Data Warehouse Edition cluster.
  final pulumi.Input<String>? sourceDbClusterId;
  /// The status of the resource.
  final pulumi.Input<String>? status;
  /// The storage resources of the cluster.
  final pulumi.Input<String>? storageResource;
  /// The vpc ID of the resource.
  final pulumi.Input<String>? vpcId;
  /// The ID of the vSwitch.
  final pulumi.Input<String>? vswitchId;
  /// The zone ID of the resource.
  final pulumi.Input<String>? zoneId;

  /// Creates a new [DBClusterLakeVersionState].
  /// [backupSetId] The ID of the backup set that you want to use to restore data.
  /// [commodityCode] The name of the service.
  /// [computeResource] The computing resources of the cluster.
  /// [connectionString] The endpoint of the cluster.
  /// [createTime] The createTime of the cluster.
  /// [dbClusterDescription] The description of the cluster.
  /// [dbClusterVersion] The version of the cluster. Valid values: `5.0`.
  /// [diskEncryption] Specifies whether to enable disk encryption. Valid values: `true`, `false`.
  /// [enableDefaultResourceGroup] Whether to enable default allocation of resources to user_default resource groups.
  /// [enableSsl] Specifies whether to enable SSL encryption. Valid values: `true`, `false`.
  /// [engine] The engine of the database.
  /// [engineVersion] The engine version of the database.
  /// [expireTime] The time when the cluster expires.
  /// [expired] Indicates whether the cluster has expired.
  /// [kmsId] The ID of the key that is used to encrypt disk data. `kms_id` is valid only when `disk_encryption` is set to `true`.
  /// [lockMode] The lock mode of the cluster.
  /// [lockReason] The reason why the cluster is locked.
  /// [paymentType] The payment type of the resource. Valid values: `PayAsYouGo`, `Subscription`. **NOTE:** From version 1.245.0, `payment_type` can be set to `Subscription`.
  /// [period] The subscription period of the subscription cluster. Valid values: `1` to `9`, `12`, `24`, `36`.
  /// [port] The port that is used to access the cluster.
  /// [productForm] The product form of the cluster. Valid values:
  /// [productVersion] The edition of the cluster. Valid values:
  /// [reservedNodeCount] The number of reserved resource nodes.
  /// [reservedNodeSize] The specifications of reserved resource nodes.
  /// [resourceGroupId] The ID of the resource group.
  /// [restoreToTime] The point in time to which you want to restore data from the backup set.
  /// [restoreType] The method that you want to use to restore data. Valid values:
  /// [secondaryVswitchId] The ID of the secondary zone.
  /// [secondaryZoneId] The ID of the secondary vSwitch.
  /// [securityIps] The IP addresses in an IP address whitelist of a cluster. Separate multiple IP addresses with commas (,). You can add a maximum of 500 different IP addresses to a whitelist. The entries in the IP address whitelist must be in one of the following formats:
  /// [sourceDbClusterId] The ID of the source AnalyticDB for MySQL Data Warehouse Edition cluster.
  /// [status] The status of the resource.
  /// [storageResource] The storage resources of the cluster.
  /// [vpcId] The vpc ID of the resource.
  /// [vswitchId] The ID of the vSwitch.
  /// [zoneId] The zone ID of the resource.
  DBClusterLakeVersionState({
    this.backupSetId,
    this.commodityCode,
    this.computeResource,
    this.connectionString,
    this.createTime,
    this.dbClusterDescription,
    this.dbClusterVersion,
    this.diskEncryption,
    this.enableDefaultResourceGroup,
    this.enableSsl,
    this.engine,
    this.engineVersion,
    this.expireTime,
    this.expired,
    this.kmsId,
    this.lockMode,
    this.lockReason,
    this.paymentType,
    this.period,
    this.port,
    this.productForm,
    this.productVersion,
    this.reservedNodeCount,
    this.reservedNodeSize,
    this.resourceGroupId,
    this.restoreToTime,
    this.restoreType,
    this.secondaryVswitchId,
    this.secondaryZoneId,
    this.securityIps,
    this.sourceDbClusterId,
    this.status,
    this.storageResource,
    this.vpcId,
    this.vswitchId,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupSetId': ?backupSetId,
      'commodityCode': ?commodityCode,
      'computeResource': ?computeResource,
      'connectionString': ?connectionString,
      'createTime': ?createTime,
      'dbClusterDescription': ?dbClusterDescription,
      'dbClusterVersion': ?dbClusterVersion,
      'diskEncryption': ?diskEncryption,
      'enableDefaultResourceGroup': ?enableDefaultResourceGroup,
      'enableSsl': ?enableSsl,
      'engine': ?engine,
      'engineVersion': ?engineVersion,
      'expireTime': ?expireTime,
      'expired': ?expired,
      'kmsId': ?kmsId,
      'lockMode': ?lockMode,
      'lockReason': ?lockReason,
      'paymentType': ?paymentType,
      'period': ?period,
      'port': ?port,
      'productForm': ?productForm,
      'productVersion': ?productVersion,
      'reservedNodeCount': ?reservedNodeCount,
      'reservedNodeSize': ?reservedNodeSize,
      'resourceGroupId': ?resourceGroupId,
      'restoreToTime': ?restoreToTime,
      'restoreType': ?restoreType,
      'secondaryVswitchId': ?secondaryVswitchId,
      'secondaryZoneId': ?secondaryZoneId,
      'securityIps': ?securityIps,
      'sourceDbClusterId': ?sourceDbClusterId,
      'status': ?status,
      'storageResource': ?storageResource,
      'vpcId': ?vpcId,
      'vswitchId': ?vswitchId,
      'zoneId': ?zoneId,
    };
  }

  factory DBClusterLakeVersionState.fromMap(Map<String, dynamic> map) {
    return DBClusterLakeVersionState(
      backupSetId: map['backupSetId'] == null ? null : (map['backupSetId']! as String).input(),
      commodityCode: map['commodityCode'] == null ? null : (map['commodityCode']! as String).input(),
      computeResource: map['computeResource'] == null ? null : (map['computeResource']! as String).input(),
      connectionString: map['connectionString'] == null ? null : (map['connectionString']! as String).input(),
      createTime: map['createTime'] == null ? null : (map['createTime']! as String).input(),
      dbClusterDescription: map['dbClusterDescription'] == null ? null : (map['dbClusterDescription']! as String).input(),
      dbClusterVersion: map['dbClusterVersion'] == null ? null : (map['dbClusterVersion']! as String).input(),
      diskEncryption: map['diskEncryption'] == null ? null : (map['diskEncryption']! as bool).input(),
      enableDefaultResourceGroup: map['enableDefaultResourceGroup'] == null ? null : (map['enableDefaultResourceGroup']! as bool).input(),
      enableSsl: map['enableSsl'] == null ? null : (map['enableSsl']! as bool).input(),
      engine: map['engine'] == null ? null : (map['engine']! as String).input(),
      engineVersion: map['engineVersion'] == null ? null : (map['engineVersion']! as String).input(),
      expireTime: map['expireTime'] == null ? null : (map['expireTime']! as String).input(),
      expired: map['expired'] == null ? null : (map['expired']! as bool).input(),
      kmsId: map['kmsId'] == null ? null : (map['kmsId']! as String).input(),
      lockMode: map['lockMode'] == null ? null : (map['lockMode']! as String).input(),
      lockReason: map['lockReason'] == null ? null : (map['lockReason']! as String).input(),
      paymentType: map['paymentType'] == null ? null : (map['paymentType']! as String).input(),
      period: map['period'] == null ? null : (map['period']! as int).input(),
      port: map['port'] == null ? null : (map['port']! as String).input(),
      productForm: map['productForm'] == null ? null : (map['productForm']! as String).input(),
      productVersion: map['productVersion'] == null ? null : (map['productVersion']! as String).input(),
      reservedNodeCount: map['reservedNodeCount'] == null ? null : (map['reservedNodeCount']! as int).input(),
      reservedNodeSize: map['reservedNodeSize'] == null ? null : (map['reservedNodeSize']! as String).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId']! as String).input(),
      restoreToTime: map['restoreToTime'] == null ? null : (map['restoreToTime']! as String).input(),
      restoreType: map['restoreType'] == null ? null : (map['restoreType']! as String).input(),
      secondaryVswitchId: map['secondaryVswitchId'] == null ? null : (map['secondaryVswitchId']! as String).input(),
      secondaryZoneId: map['secondaryZoneId'] == null ? null : (map['secondaryZoneId']! as String).input(),
      securityIps: map['securityIps'] == null ? null : (map['securityIps']! as String).input(),
      sourceDbClusterId: map['sourceDbClusterId'] == null ? null : (map['sourceDbClusterId']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
      storageResource: map['storageResource'] == null ? null : (map['storageResource']! as String).input(),
      vpcId: map['vpcId'] == null ? null : (map['vpcId']! as String).input(),
      vswitchId: map['vswitchId'] == null ? null : (map['vswitchId']! as String).input(),
      zoneId: map['zoneId'] == null ? null : (map['zoneId']! as String).input(),
    );
  }
}

