// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'db_instance_db_instance_ip_array.dart';

/// {@template pulumi_graphdatabase_db_instance_db_instance_args_doc}
/// The set of arguments for DbInstance.
/// {@endtemplate}
/// {@macro pulumi_graphdatabase_db_instance_db_instance_args_doc}
class DbInstanceArgs {
  /// The category of the db instance. Valid values: `HA`, `SINGLE`(Available in 1.173.0+).
  final pulumi.Input<String> dbInstanceCategory;
  /// According to the practical example or notes.
  final pulumi.Input<String>? dbInstanceDescription;
  /// IP ADDRESS whitelist for the instance group list. See `db_instance_ip_array` below.
  final pulumi.Input<List<DbInstanceDbInstanceIpArray>>? dbInstanceIpArrays;
  /// The network type of the db instance. Valid values: `vpc`.
  final pulumi.Input<String> dbInstanceNetworkType;
  /// Disk storage type. Valid values: `cloud_essd`, `cloud_ssd`. Modification is not supported.
  final pulumi.Input<String> dbInstanceStorageType;
  /// The class of the db node. Valid values: `gdb.r.xlarge`, `gdb.r.2xlarge`, `gdb.r.4xlarge`, `gdb.r.8xlarge`, `gdb.r.16xlarge`, `gdb.r.xlarge_basic`, `gdb.r.2xlarge_basic`, `gdb.r.4xlarge_basic`, `gdb.r.8xlarge_basic`, `gdb.r.16xlarge_basic`.
  final pulumi.Input<String> dbNodeClass;
  /// Instance storage space, which is measured in GB.
  final pulumi.Input<int> dbNodeStorage;
  /// Kernel Version. Valid values: `1.0` or `1.0-OpenCypher`. `1.0`: represented as gremlin, `1.0-OpenCypher`: said opencypher.
  final pulumi.Input<String> dbVersion;
  /// The paymen type of the resource. Valid values: `PayAsYouGo`.
  final pulumi.Input<String> paymentType;
  /// ID of the VPC.
  final pulumi.Input<String>? vpcId;
  /// The ID of attaching vswitch to instance.
  final pulumi.Input<String>? vswitchId;
  /// The zone ID of the resource.
  final pulumi.Input<String>? zoneId;

  /// Creates a new [DbInstanceArgs].
  /// [dbInstanceCategory] The category of the db instance. Valid values: `HA`, `SINGLE`(Available in 1.173.0+).
  /// [dbInstanceDescription] According to the practical example or notes.
  /// [dbInstanceIpArrays] IP ADDRESS whitelist for the instance group list. See `db_instance_ip_array` below.
  /// [dbInstanceNetworkType] The network type of the db instance. Valid values: `vpc`.
  /// [dbInstanceStorageType] Disk storage type. Valid values: `cloud_essd`, `cloud_ssd`. Modification is not supported.
  /// [dbNodeClass] The class of the db node. Valid values: `gdb.r.xlarge`, `gdb.r.2xlarge`, `gdb.r.4xlarge`, `gdb.r.8xlarge`, `gdb.r.16xlarge`, `gdb.r.xlarge_basic`, `gdb.r.2xlarge_basic`, `gdb.r.4xlarge_basic`, `gdb.r.8xlarge_basic`, `gdb.r.16xlarge_basic`.
  /// [dbNodeStorage] Instance storage space, which is measured in GB.
  /// [dbVersion] Kernel Version. Valid values: `1.0` or `1.0-OpenCypher`. `1.0`: represented as gremlin, `1.0-OpenCypher`: said opencypher.
  /// [paymentType] The paymen type of the resource. Valid values: `PayAsYouGo`.
  /// [vpcId] ID of the VPC.
  /// [vswitchId] The ID of attaching vswitch to instance.
  /// [zoneId] The zone ID of the resource.
  DbInstanceArgs({
    required this.dbInstanceCategory,
    this.dbInstanceDescription,
    this.dbInstanceIpArrays,
    required this.dbInstanceNetworkType,
    required this.dbInstanceStorageType,
    required this.dbNodeClass,
    required this.dbNodeStorage,
    required this.dbVersion,
    required this.paymentType,
    this.vpcId,
    this.vswitchId,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dbInstanceCategory': dbInstanceCategory,
      'dbInstanceDescription': ?dbInstanceDescription,
      'dbInstanceIpArrays': ?pulumi.Input.mapOptionalInputValue<List<DbInstanceDbInstanceIpArray>, List<Map<String, dynamic>>>(dbInstanceIpArrays, (value) => pulumi.Input.encodeList<DbInstanceDbInstanceIpArray, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dbInstanceNetworkType': dbInstanceNetworkType,
      'dbInstanceStorageType': dbInstanceStorageType,
      'dbNodeClass': dbNodeClass,
      'dbNodeStorage': dbNodeStorage,
      'dbVersion': dbVersion,
      'paymentType': paymentType,
      'vpcId': ?vpcId,
      'vswitchId': ?vswitchId,
      'zoneId': ?zoneId,
    };
  }

  factory DbInstanceArgs.fromMap(Map<String, dynamic> map) {
    return DbInstanceArgs(
      dbInstanceCategory: pulumi.Input.fromValue(map['dbInstanceCategory'] as String),
      dbInstanceDescription: (() { final guardedValue = map['dbInstanceDescription']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dbInstanceIpArrays: (() { final guardedValue = map['dbInstanceIpArrays']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DbInstanceDbInstanceIpArray>(guardedValue, (value) => DbInstanceDbInstanceIpArray.fromMap((value as Map).cast<String, dynamic>()))); })(),
      dbInstanceNetworkType: pulumi.Input.fromValue(map['dbInstanceNetworkType'] as String),
      dbInstanceStorageType: pulumi.Input.fromValue(map['dbInstanceStorageType'] as String),
      dbNodeClass: pulumi.Input.fromValue(map['dbNodeClass'] as String),
      dbNodeStorage: pulumi.Input.fromValue(map['dbNodeStorage'] as int),
      dbVersion: pulumi.Input.fromValue(map['dbVersion'] as String),
      paymentType: pulumi.Input.fromValue(map['paymentType'] as String),
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vswitchId: (() { final guardedValue = map['vswitchId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

