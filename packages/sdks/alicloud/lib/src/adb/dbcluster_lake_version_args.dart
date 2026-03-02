// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_adb_d_bcluster_lake_version_dbcluster_lake_version_args_doc}
/// The set of arguments for DBClusterLakeVersion.
/// {@endtemplate}
/// {@macro pulumi_adb_d_bcluster_lake_version_dbcluster_lake_version_args_doc}
class DBClusterLakeVersionArgs {
  /// The ID of the backup set that you want to use to restore data.
  final pulumi.Input<String>? backupSetId;
  /// The computing resources of the cluster.
  final pulumi.Input<String>? computeResource;
  /// The description of the cluster.
  final pulumi.Input<String>? dbClusterDescription;
  /// The version of the cluster. Valid values: `5.0`.
  final pulumi.Input<String> dbClusterVersion;
  /// Specifies whether to enable disk encryption. Valid values: `true`, `false`.
  final pulumi.Input<bool>? diskEncryption;
  /// Whether to enable default allocation of resources to user_default resource groups.
  final pulumi.Input<bool>? enableDefaultResourceGroup;
  /// Specifies whether to enable SSL encryption. Valid values: `true`, `false`.
  final pulumi.Input<bool>? enableSsl;
  /// The ID of the key that is used to encrypt disk data. `kms_id` is valid only when `disk_encryption` is set to `true`.
  final pulumi.Input<String>? kmsId;
  /// The payment type of the resource. Valid values: `PayAsYouGo`, `Subscription`. **NOTE:** From version 1.245.0, `payment_type` can be set to `Subscription`.
  final pulumi.Input<String> paymentType;
  /// The subscription period of the subscription cluster. Valid values: `1` to `9`, `12`, `24`, `36`.
  final pulumi.Input<int>? period;
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
  /// The storage resources of the cluster.
  final pulumi.Input<String>? storageResource;
  /// The vpc ID of the resource.
  final pulumi.Input<String> vpcId;
  /// The ID of the vSwitch.
  final pulumi.Input<String> vswitchId;
  /// The zone ID of the resource.
  final pulumi.Input<String> zoneId;

  /// Creates a new [DBClusterLakeVersionArgs].
  /// [backupSetId] The ID of the backup set that you want to use to restore data.
  /// [computeResource] The computing resources of the cluster.
  /// [dbClusterDescription] The description of the cluster.
  /// [dbClusterVersion] The version of the cluster. Valid values: `5.0`.
  /// [diskEncryption] Specifies whether to enable disk encryption. Valid values: `true`, `false`.
  /// [enableDefaultResourceGroup] Whether to enable default allocation of resources to user_default resource groups.
  /// [enableSsl] Specifies whether to enable SSL encryption. Valid values: `true`, `false`.
  /// [kmsId] The ID of the key that is used to encrypt disk data. `kms_id` is valid only when `disk_encryption` is set to `true`.
  /// [paymentType] The payment type of the resource. Valid values: `PayAsYouGo`, `Subscription`. **NOTE:** From version 1.245.0, `payment_type` can be set to `Subscription`.
  /// [period] The subscription period of the subscription cluster. Valid values: `1` to `9`, `12`, `24`, `36`.
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
  /// [storageResource] The storage resources of the cluster.
  /// [vpcId] The vpc ID of the resource.
  /// [vswitchId] The ID of the vSwitch.
  /// [zoneId] The zone ID of the resource.
  DBClusterLakeVersionArgs({
    this.backupSetId,
    this.computeResource,
    this.dbClusterDescription,
    required this.dbClusterVersion,
    this.diskEncryption,
    this.enableDefaultResourceGroup,
    this.enableSsl,
    this.kmsId,
    required this.paymentType,
    this.period,
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
    this.storageResource,
    required this.vpcId,
    required this.vswitchId,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupSetId': ?backupSetId,
      'computeResource': ?computeResource,
      'dbClusterDescription': ?dbClusterDescription,
      'dbClusterVersion': dbClusterVersion,
      'diskEncryption': ?diskEncryption,
      'enableDefaultResourceGroup': ?enableDefaultResourceGroup,
      'enableSsl': ?enableSsl,
      'kmsId': ?kmsId,
      'paymentType': paymentType,
      'period': ?period,
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
      'storageResource': ?storageResource,
      'vpcId': vpcId,
      'vswitchId': vswitchId,
      'zoneId': zoneId,
    };
  }

  factory DBClusterLakeVersionArgs.fromMap(Map<String, dynamic> map) {
    return DBClusterLakeVersionArgs(
      backupSetId: map['backupSetId'] == null ? null : (map['backupSetId']! as String).input(),
      computeResource: map['computeResource'] == null ? null : (map['computeResource']! as String).input(),
      dbClusterDescription: map['dbClusterDescription'] == null ? null : (map['dbClusterDescription']! as String).input(),
      dbClusterVersion: (map['dbClusterVersion'] as String).input(),
      diskEncryption: map['diskEncryption'] == null ? null : (map['diskEncryption']! as bool).input(),
      enableDefaultResourceGroup: map['enableDefaultResourceGroup'] == null ? null : (map['enableDefaultResourceGroup']! as bool).input(),
      enableSsl: map['enableSsl'] == null ? null : (map['enableSsl']! as bool).input(),
      kmsId: map['kmsId'] == null ? null : (map['kmsId']! as String).input(),
      paymentType: (map['paymentType'] as String).input(),
      period: map['period'] == null ? null : (map['period']! as int).input(),
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
      storageResource: map['storageResource'] == null ? null : (map['storageResource']! as String).input(),
      vpcId: (map['vpcId'] as String).input(),
      vswitchId: (map['vswitchId'] as String).input(),
      zoneId: (map['zoneId'] as String).input(),
    );
  }
}

