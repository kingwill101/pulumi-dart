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
    pulumi.Output<String>? backupSetId,
    pulumi.Output<String>? computeResource,
    pulumi.Output<String>? dbClusterDescription,
    required pulumi.Output<String> dbClusterVersion,
    pulumi.Output<bool>? diskEncryption,
    pulumi.Output<bool>? enableDefaultResourceGroup,
    pulumi.Output<bool>? enableSsl,
    pulumi.Output<String>? kmsId,
    required pulumi.Output<String> paymentType,
    pulumi.Output<int>? period,
    pulumi.Output<String>? productForm,
    pulumi.Output<String>? productVersion,
    pulumi.Output<int>? reservedNodeCount,
    pulumi.Output<String>? reservedNodeSize,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<String>? restoreToTime,
    pulumi.Output<String>? restoreType,
    pulumi.Output<String>? secondaryVswitchId,
    pulumi.Output<String>? secondaryZoneId,
    pulumi.Output<String>? securityIps,
    pulumi.Output<String>? sourceDbClusterId,
    pulumi.Output<String>? storageResource,
    required pulumi.Output<String> vpcId,
    required pulumi.Output<String> vswitchId,
    required pulumi.Output<String> zoneId,
  }) :
      backupSetId = pulumi.Input.asOptionalInput<String>(backupSetId),
      computeResource = pulumi.Input.asOptionalInput<String>(computeResource),
      dbClusterDescription = pulumi.Input.asOptionalInput<String>(dbClusterDescription),
      dbClusterVersion = pulumi.Input.asInput<String>(dbClusterVersion),
      diskEncryption = pulumi.Input.asOptionalInput<bool>(diskEncryption),
      enableDefaultResourceGroup = pulumi.Input.asOptionalInput<bool>(enableDefaultResourceGroup),
      enableSsl = pulumi.Input.asOptionalInput<bool>(enableSsl),
      kmsId = pulumi.Input.asOptionalInput<String>(kmsId),
      paymentType = pulumi.Input.asInput<String>(paymentType),
      period = pulumi.Input.asOptionalInput<int>(period),
      productForm = pulumi.Input.asOptionalInput<String>(productForm),
      productVersion = pulumi.Input.asOptionalInput<String>(productVersion),
      reservedNodeCount = pulumi.Input.asOptionalInput<int>(reservedNodeCount),
      reservedNodeSize = pulumi.Input.asOptionalInput<String>(reservedNodeSize),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      restoreToTime = pulumi.Input.asOptionalInput<String>(restoreToTime),
      restoreType = pulumi.Input.asOptionalInput<String>(restoreType),
      secondaryVswitchId = pulumi.Input.asOptionalInput<String>(secondaryVswitchId),
      secondaryZoneId = pulumi.Input.asOptionalInput<String>(secondaryZoneId),
      securityIps = pulumi.Input.asOptionalInput<String>(securityIps),
      sourceDbClusterId = pulumi.Input.asOptionalInput<String>(sourceDbClusterId),
      storageResource = pulumi.Input.asOptionalInput<String>(storageResource),
      vpcId = pulumi.Input.asInput<String>(vpcId),
      vswitchId = pulumi.Input.asInput<String>(vswitchId),
      zoneId = pulumi.Input.asInput<String>(zoneId);

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
      backupSetId: map['backupSetId'] == null ? null : pulumi.Output.create<String>(map['backupSetId'] as String),
      computeResource: map['computeResource'] == null ? null : pulumi.Output.create<String>(map['computeResource'] as String),
      dbClusterDescription: map['dbClusterDescription'] == null ? null : pulumi.Output.create<String>(map['dbClusterDescription'] as String),
      dbClusterVersion: pulumi.Output.create<String>(map['dbClusterVersion'] as String),
      diskEncryption: map['diskEncryption'] == null ? null : pulumi.Output.create<bool>(map['diskEncryption'] as bool),
      enableDefaultResourceGroup: map['enableDefaultResourceGroup'] == null ? null : pulumi.Output.create<bool>(map['enableDefaultResourceGroup'] as bool),
      enableSsl: map['enableSsl'] == null ? null : pulumi.Output.create<bool>(map['enableSsl'] as bool),
      kmsId: map['kmsId'] == null ? null : pulumi.Output.create<String>(map['kmsId'] as String),
      paymentType: pulumi.Output.create<String>(map['paymentType'] as String),
      period: map['period'] == null ? null : pulumi.Output.create<int>(map['period'] as int),
      productForm: map['productForm'] == null ? null : pulumi.Output.create<String>(map['productForm'] as String),
      productVersion: map['productVersion'] == null ? null : pulumi.Output.create<String>(map['productVersion'] as String),
      reservedNodeCount: map['reservedNodeCount'] == null ? null : pulumi.Output.create<int>(map['reservedNodeCount'] as int),
      reservedNodeSize: map['reservedNodeSize'] == null ? null : pulumi.Output.create<String>(map['reservedNodeSize'] as String),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      restoreToTime: map['restoreToTime'] == null ? null : pulumi.Output.create<String>(map['restoreToTime'] as String),
      restoreType: map['restoreType'] == null ? null : pulumi.Output.create<String>(map['restoreType'] as String),
      secondaryVswitchId: map['secondaryVswitchId'] == null ? null : pulumi.Output.create<String>(map['secondaryVswitchId'] as String),
      secondaryZoneId: map['secondaryZoneId'] == null ? null : pulumi.Output.create<String>(map['secondaryZoneId'] as String),
      securityIps: map['securityIps'] == null ? null : pulumi.Output.create<String>(map['securityIps'] as String),
      sourceDbClusterId: map['sourceDbClusterId'] == null ? null : pulumi.Output.create<String>(map['sourceDbClusterId'] as String),
      storageResource: map['storageResource'] == null ? null : pulumi.Output.create<String>(map['storageResource'] as String),
      vpcId: pulumi.Output.create<String>(map['vpcId'] as String),
      vswitchId: pulumi.Output.create<String>(map['vswitchId'] as String),
      zoneId: pulumi.Output.create<String>(map['zoneId'] as String),
    );
  }
}

