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
    pulumi.Output<String>? backupSetId,
    pulumi.Output<String>? commodityCode,
    pulumi.Output<String>? computeResource,
    pulumi.Output<String>? connectionString,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? dbClusterDescription,
    pulumi.Output<String>? dbClusterVersion,
    pulumi.Output<bool>? diskEncryption,
    pulumi.Output<bool>? enableDefaultResourceGroup,
    pulumi.Output<bool>? enableSsl,
    pulumi.Output<String>? engine,
    pulumi.Output<String>? engineVersion,
    pulumi.Output<String>? expireTime,
    pulumi.Output<bool>? expired,
    pulumi.Output<String>? kmsId,
    pulumi.Output<String>? lockMode,
    pulumi.Output<String>? lockReason,
    pulumi.Output<String>? paymentType,
    pulumi.Output<int>? period,
    pulumi.Output<String>? port,
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
    pulumi.Output<String>? status,
    pulumi.Output<String>? storageResource,
    pulumi.Output<String>? vpcId,
    pulumi.Output<String>? vswitchId,
    pulumi.Output<String>? zoneId,
  }) :
      backupSetId = pulumi.Input.asOptionalInput<String>(backupSetId),
      commodityCode = pulumi.Input.asOptionalInput<String>(commodityCode),
      computeResource = pulumi.Input.asOptionalInput<String>(computeResource),
      connectionString = pulumi.Input.asOptionalInput<String>(connectionString),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      dbClusterDescription = pulumi.Input.asOptionalInput<String>(dbClusterDescription),
      dbClusterVersion = pulumi.Input.asOptionalInput<String>(dbClusterVersion),
      diskEncryption = pulumi.Input.asOptionalInput<bool>(diskEncryption),
      enableDefaultResourceGroup = pulumi.Input.asOptionalInput<bool>(enableDefaultResourceGroup),
      enableSsl = pulumi.Input.asOptionalInput<bool>(enableSsl),
      engine = pulumi.Input.asOptionalInput<String>(engine),
      engineVersion = pulumi.Input.asOptionalInput<String>(engineVersion),
      expireTime = pulumi.Input.asOptionalInput<String>(expireTime),
      expired = pulumi.Input.asOptionalInput<bool>(expired),
      kmsId = pulumi.Input.asOptionalInput<String>(kmsId),
      lockMode = pulumi.Input.asOptionalInput<String>(lockMode),
      lockReason = pulumi.Input.asOptionalInput<String>(lockReason),
      paymentType = pulumi.Input.asOptionalInput<String>(paymentType),
      period = pulumi.Input.asOptionalInput<int>(period),
      port = pulumi.Input.asOptionalInput<String>(port),
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
      status = pulumi.Input.asOptionalInput<String>(status),
      storageResource = pulumi.Input.asOptionalInput<String>(storageResource),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId),
      vswitchId = pulumi.Input.asOptionalInput<String>(vswitchId),
      zoneId = pulumi.Input.asOptionalInput<String>(zoneId);

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
      backupSetId: map['backupSetId'] == null ? null : pulumi.Output.create<String>(map['backupSetId'] as String),
      commodityCode: map['commodityCode'] == null ? null : pulumi.Output.create<String>(map['commodityCode'] as String),
      computeResource: map['computeResource'] == null ? null : pulumi.Output.create<String>(map['computeResource'] as String),
      connectionString: map['connectionString'] == null ? null : pulumi.Output.create<String>(map['connectionString'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      dbClusterDescription: map['dbClusterDescription'] == null ? null : pulumi.Output.create<String>(map['dbClusterDescription'] as String),
      dbClusterVersion: map['dbClusterVersion'] == null ? null : pulumi.Output.create<String>(map['dbClusterVersion'] as String),
      diskEncryption: map['diskEncryption'] == null ? null : pulumi.Output.create<bool>(map['diskEncryption'] as bool),
      enableDefaultResourceGroup: map['enableDefaultResourceGroup'] == null ? null : pulumi.Output.create<bool>(map['enableDefaultResourceGroup'] as bool),
      enableSsl: map['enableSsl'] == null ? null : pulumi.Output.create<bool>(map['enableSsl'] as bool),
      engine: map['engine'] == null ? null : pulumi.Output.create<String>(map['engine'] as String),
      engineVersion: map['engineVersion'] == null ? null : pulumi.Output.create<String>(map['engineVersion'] as String),
      expireTime: map['expireTime'] == null ? null : pulumi.Output.create<String>(map['expireTime'] as String),
      expired: map['expired'] == null ? null : pulumi.Output.create<bool>(map['expired'] as bool),
      kmsId: map['kmsId'] == null ? null : pulumi.Output.create<String>(map['kmsId'] as String),
      lockMode: map['lockMode'] == null ? null : pulumi.Output.create<String>(map['lockMode'] as String),
      lockReason: map['lockReason'] == null ? null : pulumi.Output.create<String>(map['lockReason'] as String),
      paymentType: map['paymentType'] == null ? null : pulumi.Output.create<String>(map['paymentType'] as String),
      period: map['period'] == null ? null : pulumi.Output.create<int>(map['period'] as int),
      port: map['port'] == null ? null : pulumi.Output.create<String>(map['port'] as String),
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
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      storageResource: map['storageResource'] == null ? null : pulumi.Output.create<String>(map['storageResource'] as String),
      vpcId: map['vpcId'] == null ? null : pulumi.Output.create<String>(map['vpcId'] as String),
      vswitchId: map['vswitchId'] == null ? null : pulumi.Output.create<String>(map['vswitchId'] as String),
      zoneId: map['zoneId'] == null ? null : pulumi.Output.create<String>(map['zoneId'] as String),
    );
  }
}

