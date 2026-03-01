// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'db_cluster_db_cluster_access_white_list.dart';
import 'db_cluster_multi_zone_vswitch_list.dart';

/// {@template pulumi_clickhouse_db_cluster_db_cluster_args_doc}
/// The set of arguments for DbCluster.
/// {@endtemplate}
/// {@macro pulumi_clickhouse_db_cluster_db_cluster_args_doc}
class DbClusterArgs {
  /// Whether to enable public connection. Value options: `true`, `false`.
  final pulumi.Input<bool>? allocatePublicConnection;
  /// The Category of DBCluster. Valid values: `Basic`,`HighAvailability`.
  final pulumi.Input<String> category;
  /// Whether to use cold storage. Valid values: `ENABLE`, `DISABLE`, default to `DISABLE`. When it's set to `ENABLE`, cold storage will be used, and `cold_storage` cannot be set to `DISABLE` again.
  final pulumi.Input<String>? coldStorage;
  /// The db cluster access white list. See `db_cluster_access_white_list` below.
  final pulumi.Input<List<DbClusterDbClusterAccessWhiteList>>? dbClusterAccessWhiteLists;
  /// The DBCluster class. According to the category, db_cluster_class has two value ranges:
  /// * Under the condition that the category is the `Basic`, Valid values: `LS20`, `LS40`, `LS80`,`S8`, `S16`, `S32`, `S64`,`S80`, `S104`.
  /// * Under the condition that the category is the `HighAvailability`, Valid values: `LC20`, `LC40`, `LC80`,`C8`, `C16`, `C32`, `C64`, `C80`, `C104`.
  final pulumi.Input<String> dbClusterClass;
  /// The DBCluster description.
  final pulumi.Input<String>? dbClusterDescription;
  /// The DBCluster network type. Valid values: `vpc`.
  final pulumi.Input<String> dbClusterNetworkType;
  /// The DBCluster version. Valid values: `20.3.10.75`, `20.8.7.15`, `21.8.10.19`, `22.8.5.29`, `23.8`. **NOTE:** `19.15.2.2` is no longer supported. From version 1.191.0, `db_cluster_version` can be set to `22.8.5.29`.
  final pulumi.Input<String> dbClusterVersion;
  /// The db node group count. The number should between 1 and 48.
  final pulumi.Input<int> dbNodeGroupCount;
  /// The db node storage.
  final pulumi.Input<String> dbNodeStorage;
  /// Key management service KMS key ID. It is valid and required when encryption_type is `CloudDisk`.
  final pulumi.Input<String>? encryptionKey;
  /// Currently only supports ECS disk encryption, with a value of CloudDisk, not encrypted when empty.
  final pulumi.Input<String>? encryptionType;
  /// The maintenance window of DBCluster. Valid format: `hh:mmZ-hh:mm Z`.
  final pulumi.Input<String>? maintainTime;
  /// The zone IDs and
  /// corresponding vswitch IDs and zone IDs of multi-zone setup. if set, a multi-zone DBCluster will be created. Currently only support 2 available zones, primary zone not included. See `multi_zone_vswitch_list` below.
  final pulumi.Input<List<DbClusterMultiZoneVswitchList>>? multiZoneVswitchLists;
  /// The payment type of the resource. Valid values: `PayAsYouGo`,`Subscription`.
  final pulumi.Input<String> paymentType;
  /// Pre-paid cluster of the pay-as-you-go cycle. It is valid and required when payment_type is `Subscription`. Valid values: `Month`, `Year`.
  final pulumi.Input<String>? period;
  /// The renewal status of the resource. Valid values: `AutoRenewal`,`Normal`. It is valid and required when payment_type is `Subscription`. When `renewal_status` is set to `AutoRenewal`, the resource is renewed automatically.
  final pulumi.Input<String>? renewalStatus;
  /// The ID of the resource group.
  final pulumi.Input<String>? resourceGroupId;
  /// The status of the resource. Valid values: `Running`,`Creating`,`Deleting`,`Restarting`,`Preparing`.
  final pulumi.Input<String>? status;
  /// Storage type of DBCluster. Valid values: `cloud_essd`, `cloud_efficiency`, `cloud_essd_pl2`, `cloud_essd_pl3`.
  final pulumi.Input<String> storageType;
  /// The used time of DBCluster. It is valid and required when payment_type is `Subscription`. item choices: [1-9] when period is `Month`, [1-3] when period is `Year`.
  final pulumi.Input<String>? usedTime;
  /// The id of the VPC.
  final pulumi.Input<String>? vpcId;
  /// The vswitch id of DBCluster.
  final pulumi.Input<String>? vswitchId;
  /// The zone ID of the instance.
  final pulumi.Input<String>? zoneId;

  /// Creates a new [DbClusterArgs].
  /// [allocatePublicConnection] Whether to enable public connection. Value options: `true`, `false`.
  /// [category] The Category of DBCluster. Valid values: `Basic`,`HighAvailability`.
  /// [coldStorage] Whether to use cold storage. Valid values: `ENABLE`, `DISABLE`, default to `DISABLE`. When it's set to `ENABLE`, cold storage will be used, and `cold_storage` cannot be set to `DISABLE` again.
  /// [dbClusterAccessWhiteLists] The db cluster access white list. See `db_cluster_access_white_list` below.
  /// [dbClusterClass] The DBCluster class. According to the category, db_cluster_class has two value ranges:
  /// [dbClusterDescription] The DBCluster description.
  /// [dbClusterNetworkType] The DBCluster network type. Valid values: `vpc`.
  /// [dbClusterVersion] The DBCluster version. Valid values: `20.3.10.75`, `20.8.7.15`, `21.8.10.19`, `22.8.5.29`, `23.8`. **NOTE:** `19.15.2.2` is no longer supported. From version 1.191.0, `db_cluster_version` can be set to `22.8.5.29`.
  /// [dbNodeGroupCount] The db node group count. The number should between 1 and 48.
  /// [dbNodeStorage] The db node storage.
  /// [encryptionKey] Key management service KMS key ID. It is valid and required when encryption_type is `CloudDisk`.
  /// [encryptionType] Currently only supports ECS disk encryption, with a value of CloudDisk, not encrypted when empty.
  /// [maintainTime] The maintenance window of DBCluster. Valid format: `hh:mmZ-hh:mm Z`.
  /// [multiZoneVswitchLists] The zone IDs and
  /// [paymentType] The payment type of the resource. Valid values: `PayAsYouGo`,`Subscription`.
  /// [period] Pre-paid cluster of the pay-as-you-go cycle. It is valid and required when payment_type is `Subscription`. Valid values: `Month`, `Year`.
  /// [renewalStatus] The renewal status of the resource. Valid values: `AutoRenewal`,`Normal`. It is valid and required when payment_type is `Subscription`. When `renewal_status` is set to `AutoRenewal`, the resource is renewed automatically.
  /// [resourceGroupId] The ID of the resource group.
  /// [status] The status of the resource. Valid values: `Running`,`Creating`,`Deleting`,`Restarting`,`Preparing`.
  /// [storageType] Storage type of DBCluster. Valid values: `cloud_essd`, `cloud_efficiency`, `cloud_essd_pl2`, `cloud_essd_pl3`.
  /// [usedTime] The used time of DBCluster. It is valid and required when payment_type is `Subscription`. item choices: [1-9] when period is `Month`, [1-3] when period is `Year`.
  /// [vpcId] The id of the VPC.
  /// [vswitchId] The vswitch id of DBCluster.
  /// [zoneId] The zone ID of the instance.
  DbClusterArgs({
    pulumi.Output<bool>? allocatePublicConnection,
    required pulumi.Output<String> category,
    pulumi.Output<String>? coldStorage,
    pulumi.Output<List<DbClusterDbClusterAccessWhiteList>>? dbClusterAccessWhiteLists,
    required pulumi.Output<String> dbClusterClass,
    pulumi.Output<String>? dbClusterDescription,
    required pulumi.Output<String> dbClusterNetworkType,
    required pulumi.Output<String> dbClusterVersion,
    required pulumi.Output<int> dbNodeGroupCount,
    required pulumi.Output<String> dbNodeStorage,
    pulumi.Output<String>? encryptionKey,
    pulumi.Output<String>? encryptionType,
    pulumi.Output<String>? maintainTime,
    pulumi.Output<List<DbClusterMultiZoneVswitchList>>? multiZoneVswitchLists,
    required pulumi.Output<String> paymentType,
    pulumi.Output<String>? period,
    pulumi.Output<String>? renewalStatus,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<String>? status,
    required pulumi.Output<String> storageType,
    pulumi.Output<String>? usedTime,
    pulumi.Output<String>? vpcId,
    pulumi.Output<String>? vswitchId,
    pulumi.Output<String>? zoneId,
  }) :
      allocatePublicConnection = pulumi.Input.asOptionalInput<bool>(allocatePublicConnection),
      category = pulumi.Input.asInput<String>(category),
      coldStorage = pulumi.Input.asOptionalInput<String>(coldStorage),
      dbClusterAccessWhiteLists = pulumi.Input.asOptionalInput<List<DbClusterDbClusterAccessWhiteList>>(dbClusterAccessWhiteLists),
      dbClusterClass = pulumi.Input.asInput<String>(dbClusterClass),
      dbClusterDescription = pulumi.Input.asOptionalInput<String>(dbClusterDescription),
      dbClusterNetworkType = pulumi.Input.asInput<String>(dbClusterNetworkType),
      dbClusterVersion = pulumi.Input.asInput<String>(dbClusterVersion),
      dbNodeGroupCount = pulumi.Input.asInput<int>(dbNodeGroupCount),
      dbNodeStorage = pulumi.Input.asInput<String>(dbNodeStorage),
      encryptionKey = pulumi.Input.asOptionalInput<String>(encryptionKey),
      encryptionType = pulumi.Input.asOptionalInput<String>(encryptionType),
      maintainTime = pulumi.Input.asOptionalInput<String>(maintainTime),
      multiZoneVswitchLists = pulumi.Input.asOptionalInput<List<DbClusterMultiZoneVswitchList>>(multiZoneVswitchLists),
      paymentType = pulumi.Input.asInput<String>(paymentType),
      period = pulumi.Input.asOptionalInput<String>(period),
      renewalStatus = pulumi.Input.asOptionalInput<String>(renewalStatus),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      status = pulumi.Input.asOptionalInput<String>(status),
      storageType = pulumi.Input.asInput<String>(storageType),
      usedTime = pulumi.Input.asOptionalInput<String>(usedTime),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId),
      vswitchId = pulumi.Input.asOptionalInput<String>(vswitchId),
      zoneId = pulumi.Input.asOptionalInput<String>(zoneId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocatePublicConnection': ?allocatePublicConnection,
      'category': category,
      'coldStorage': ?coldStorage,
      'dbClusterAccessWhiteLists': ?pulumi.Input.mapOptionalInputValue<List<DbClusterDbClusterAccessWhiteList>, List<Map<String, dynamic>>>(dbClusterAccessWhiteLists, (value) => pulumi.Input.encodeList<DbClusterDbClusterAccessWhiteList, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dbClusterClass': dbClusterClass,
      'dbClusterDescription': ?dbClusterDescription,
      'dbClusterNetworkType': dbClusterNetworkType,
      'dbClusterVersion': dbClusterVersion,
      'dbNodeGroupCount': dbNodeGroupCount,
      'dbNodeStorage': dbNodeStorage,
      'encryptionKey': ?encryptionKey,
      'encryptionType': ?encryptionType,
      'maintainTime': ?maintainTime,
      'multiZoneVswitchLists': ?pulumi.Input.mapOptionalInputValue<List<DbClusterMultiZoneVswitchList>, List<Map<String, dynamic>>>(multiZoneVswitchLists, (value) => pulumi.Input.encodeList<DbClusterMultiZoneVswitchList, Map<String, dynamic>>(value, (value) => value.toMap())),
      'paymentType': paymentType,
      'period': ?period,
      'renewalStatus': ?renewalStatus,
      'resourceGroupId': ?resourceGroupId,
      'status': ?status,
      'storageType': storageType,
      'usedTime': ?usedTime,
      'vpcId': ?vpcId,
      'vswitchId': ?vswitchId,
      'zoneId': ?zoneId,
    };
  }

  factory DbClusterArgs.fromMap(Map<String, dynamic> map) {
    return DbClusterArgs(
      allocatePublicConnection: map['allocatePublicConnection'] == null ? null : pulumi.Output.create<bool>(map['allocatePublicConnection'] as bool),
      category: pulumi.Output.create<String>(map['category'] as String),
      coldStorage: map['coldStorage'] == null ? null : pulumi.Output.create<String>(map['coldStorage'] as String),
      dbClusterAccessWhiteLists: map['dbClusterAccessWhiteLists'] == null ? null : pulumi.Output.create<List<DbClusterDbClusterAccessWhiteList>>(pulumi.Input.decodeList<DbClusterDbClusterAccessWhiteList>(map['dbClusterAccessWhiteLists'], (value) => DbClusterDbClusterAccessWhiteList.fromMap((value as Map).cast<String, dynamic>()))),
      dbClusterClass: pulumi.Output.create<String>(map['dbClusterClass'] as String),
      dbClusterDescription: map['dbClusterDescription'] == null ? null : pulumi.Output.create<String>(map['dbClusterDescription'] as String),
      dbClusterNetworkType: pulumi.Output.create<String>(map['dbClusterNetworkType'] as String),
      dbClusterVersion: pulumi.Output.create<String>(map['dbClusterVersion'] as String),
      dbNodeGroupCount: pulumi.Output.create<int>(map['dbNodeGroupCount'] as int),
      dbNodeStorage: pulumi.Output.create<String>(map['dbNodeStorage'] as String),
      encryptionKey: map['encryptionKey'] == null ? null : pulumi.Output.create<String>(map['encryptionKey'] as String),
      encryptionType: map['encryptionType'] == null ? null : pulumi.Output.create<String>(map['encryptionType'] as String),
      maintainTime: map['maintainTime'] == null ? null : pulumi.Output.create<String>(map['maintainTime'] as String),
      multiZoneVswitchLists: map['multiZoneVswitchLists'] == null ? null : pulumi.Output.create<List<DbClusterMultiZoneVswitchList>>(pulumi.Input.decodeList<DbClusterMultiZoneVswitchList>(map['multiZoneVswitchLists'], (value) => DbClusterMultiZoneVswitchList.fromMap((value as Map).cast<String, dynamic>()))),
      paymentType: pulumi.Output.create<String>(map['paymentType'] as String),
      period: map['period'] == null ? null : pulumi.Output.create<String>(map['period'] as String),
      renewalStatus: map['renewalStatus'] == null ? null : pulumi.Output.create<String>(map['renewalStatus'] as String),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      storageType: pulumi.Output.create<String>(map['storageType'] as String),
      usedTime: map['usedTime'] == null ? null : pulumi.Output.create<String>(map['usedTime'] as String),
      vpcId: map['vpcId'] == null ? null : pulumi.Output.create<String>(map['vpcId'] as String),
      vswitchId: map['vswitchId'] == null ? null : pulumi.Output.create<String>(map['vswitchId'] as String),
      zoneId: map['zoneId'] == null ? null : pulumi.Output.create<String>(map['zoneId'] as String),
    );
  }
}

