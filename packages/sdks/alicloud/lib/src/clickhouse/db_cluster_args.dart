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
  final pulumi.Input<List<DbClusterDbClusterAccessWhiteList>>?
  dbClusterAccessWhiteLists;

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
  final pulumi.Input<List<DbClusterMultiZoneVswitchList>>?
  multiZoneVswitchLists;

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
    this.allocatePublicConnection,
    required this.category,
    this.coldStorage,
    this.dbClusterAccessWhiteLists,
    required this.dbClusterClass,
    this.dbClusterDescription,
    required this.dbClusterNetworkType,
    required this.dbClusterVersion,
    required this.dbNodeGroupCount,
    required this.dbNodeStorage,
    this.encryptionKey,
    this.encryptionType,
    this.maintainTime,
    this.multiZoneVswitchLists,
    required this.paymentType,
    this.period,
    this.renewalStatus,
    this.resourceGroupId,
    this.status,
    required this.storageType,
    this.usedTime,
    this.vpcId,
    this.vswitchId,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocatePublicConnection': ?allocatePublicConnection,
      'category': category,
      'coldStorage': ?coldStorage,
      'dbClusterAccessWhiteLists':
          ?pulumi.Input.mapOptionalInputValue<
            List<DbClusterDbClusterAccessWhiteList>,
            List<Map<String, dynamic>>
          >(
            dbClusterAccessWhiteLists,
            (value) =>
                pulumi.Input.encodeList<
                  DbClusterDbClusterAccessWhiteList,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'dbClusterClass': dbClusterClass,
      'dbClusterDescription': ?dbClusterDescription,
      'dbClusterNetworkType': dbClusterNetworkType,
      'dbClusterVersion': dbClusterVersion,
      'dbNodeGroupCount': dbNodeGroupCount,
      'dbNodeStorage': dbNodeStorage,
      'encryptionKey': ?encryptionKey,
      'encryptionType': ?encryptionType,
      'maintainTime': ?maintainTime,
      'multiZoneVswitchLists':
          ?pulumi.Input.mapOptionalInputValue<
            List<DbClusterMultiZoneVswitchList>,
            List<Map<String, dynamic>>
          >(
            multiZoneVswitchLists,
            (value) =>
                pulumi.Input.encodeList<
                  DbClusterMultiZoneVswitchList,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
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
      allocatePublicConnection: (() {
        final guardedValue = map['allocatePublicConnection'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      category: pulumi.Input.fromValue(map['category'] as String),
      coldStorage: (() {
        final guardedValue = map['coldStorage'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dbClusterAccessWhiteLists: (() {
        final guardedValue = map['dbClusterAccessWhiteLists'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<DbClusterDbClusterAccessWhiteList>(
            guardedValue,
            (value) => DbClusterDbClusterAccessWhiteList.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      dbClusterClass: pulumi.Input.fromValue(map['dbClusterClass'] as String),
      dbClusterDescription: (() {
        final guardedValue = map['dbClusterDescription'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dbClusterNetworkType: pulumi.Input.fromValue(
        map['dbClusterNetworkType'] as String,
      ),
      dbClusterVersion: pulumi.Input.fromValue(
        map['dbClusterVersion'] as String,
      ),
      dbNodeGroupCount: pulumi.Input.fromValue(map['dbNodeGroupCount'] as int),
      dbNodeStorage: pulumi.Input.fromValue(map['dbNodeStorage'] as String),
      encryptionKey: (() {
        final guardedValue = map['encryptionKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      encryptionType: (() {
        final guardedValue = map['encryptionType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      maintainTime: (() {
        final guardedValue = map['maintainTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      multiZoneVswitchLists: (() {
        final guardedValue = map['multiZoneVswitchLists'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<DbClusterMultiZoneVswitchList>(
            guardedValue,
            (value) => DbClusterMultiZoneVswitchList.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      paymentType: pulumi.Input.fromValue(map['paymentType'] as String),
      period: (() {
        final guardedValue = map['period'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      renewalStatus: (() {
        final guardedValue = map['renewalStatus'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupId: (() {
        final guardedValue = map['resourceGroupId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      storageType: pulumi.Input.fromValue(map['storageType'] as String),
      usedTime: (() {
        final guardedValue = map['usedTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      vpcId: (() {
        final guardedValue = map['vpcId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      vswitchId: (() {
        final guardedValue = map['vswitchId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      zoneId: (() {
        final guardedValue = map['zoneId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
