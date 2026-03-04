// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'db_instance_db_instance_ip_array.dart';

/// Input properties used for looking up and filtering DbInstance resources.
class DbInstanceState {
  /// (Available in 1.196.0+)  The connection string of the instance.
  final pulumi.Input<String>? connectionString;

  /// The category of the db instance. Valid values: `HA`, `SINGLE`(Available in 1.173.0+).
  final pulumi.Input<String>? dbInstanceCategory;

  /// According to the practical example or notes.
  final pulumi.Input<String>? dbInstanceDescription;

  /// IP ADDRESS whitelist for the instance group list. See `db_instance_ip_array` below.
  final pulumi.Input<List<DbInstanceDbInstanceIpArray>>? dbInstanceIpArrays;

  /// The network type of the db instance. Valid values: `vpc`.
  final pulumi.Input<String>? dbInstanceNetworkType;

  /// Disk storage type. Valid values: `cloud_essd`, `cloud_ssd`. Modification is not supported.
  final pulumi.Input<String>? dbInstanceStorageType;

  /// The class of the db node. Valid values: `gdb.r.xlarge`, `gdb.r.2xlarge`, `gdb.r.4xlarge`, `gdb.r.8xlarge`, `gdb.r.16xlarge`, `gdb.r.xlarge_basic`, `gdb.r.2xlarge_basic`, `gdb.r.4xlarge_basic`, `gdb.r.8xlarge_basic`, `gdb.r.16xlarge_basic`.
  final pulumi.Input<String>? dbNodeClass;

  /// Instance storage space, which is measured in GB.
  final pulumi.Input<int>? dbNodeStorage;

  /// Kernel Version. Valid values: `1.0` or `1.0-OpenCypher`. `1.0`: represented as gremlin, `1.0-OpenCypher`: said opencypher.
  final pulumi.Input<String>? dbVersion;

  /// The paymen type of the resource. Valid values: `PayAsYouGo`.
  final pulumi.Input<String>? paymentType;

  /// (Available in 1.196.0+) The connection port of the instance.
  final pulumi.Input<String>? port;

  /// Instance status. Value range: `Creating`, `Running`, `Deleting`, `Rebooting`, `DBInstanceClassChanging`, `NetAddressCreating` and `NetAddressDeleting`.
  final pulumi.Input<String>? status;

  /// ID of the VPC.
  final pulumi.Input<String>? vpcId;

  /// The ID of attaching vswitch to instance.
  final pulumi.Input<String>? vswitchId;

  /// The zone ID of the resource.
  final pulumi.Input<String>? zoneId;

  /// Creates a new [DbInstanceState].
  /// [connectionString] (Available in 1.196.0+)  The connection string of the instance.
  /// [dbInstanceCategory] The category of the db instance. Valid values: `HA`, `SINGLE`(Available in 1.173.0+).
  /// [dbInstanceDescription] According to the practical example or notes.
  /// [dbInstanceIpArrays] IP ADDRESS whitelist for the instance group list. See `db_instance_ip_array` below.
  /// [dbInstanceNetworkType] The network type of the db instance. Valid values: `vpc`.
  /// [dbInstanceStorageType] Disk storage type. Valid values: `cloud_essd`, `cloud_ssd`. Modification is not supported.
  /// [dbNodeClass] The class of the db node. Valid values: `gdb.r.xlarge`, `gdb.r.2xlarge`, `gdb.r.4xlarge`, `gdb.r.8xlarge`, `gdb.r.16xlarge`, `gdb.r.xlarge_basic`, `gdb.r.2xlarge_basic`, `gdb.r.4xlarge_basic`, `gdb.r.8xlarge_basic`, `gdb.r.16xlarge_basic`.
  /// [dbNodeStorage] Instance storage space, which is measured in GB.
  /// [dbVersion] Kernel Version. Valid values: `1.0` or `1.0-OpenCypher`. `1.0`: represented as gremlin, `1.0-OpenCypher`: said opencypher.
  /// [paymentType] The paymen type of the resource. Valid values: `PayAsYouGo`.
  /// [port] (Available in 1.196.0+) The connection port of the instance.
  /// [status] Instance status. Value range: `Creating`, `Running`, `Deleting`, `Rebooting`, `DBInstanceClassChanging`, `NetAddressCreating` and `NetAddressDeleting`.
  /// [vpcId] ID of the VPC.
  /// [vswitchId] The ID of attaching vswitch to instance.
  /// [zoneId] The zone ID of the resource.
  DbInstanceState({
    this.connectionString,
    this.dbInstanceCategory,
    this.dbInstanceDescription,
    this.dbInstanceIpArrays,
    this.dbInstanceNetworkType,
    this.dbInstanceStorageType,
    this.dbNodeClass,
    this.dbNodeStorage,
    this.dbVersion,
    this.paymentType,
    this.port,
    this.status,
    this.vpcId,
    this.vswitchId,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionString': ?connectionString,
      'dbInstanceCategory': ?dbInstanceCategory,
      'dbInstanceDescription': ?dbInstanceDescription,
      'dbInstanceIpArrays':
          ?pulumi.Input.mapOptionalInputValue<
            List<DbInstanceDbInstanceIpArray>,
            List<Map<String, dynamic>>
          >(
            dbInstanceIpArrays,
            (value) =>
                pulumi.Input.encodeList<
                  DbInstanceDbInstanceIpArray,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'dbInstanceNetworkType': ?dbInstanceNetworkType,
      'dbInstanceStorageType': ?dbInstanceStorageType,
      'dbNodeClass': ?dbNodeClass,
      'dbNodeStorage': ?dbNodeStorage,
      'dbVersion': ?dbVersion,
      'paymentType': ?paymentType,
      'port': ?port,
      'status': ?status,
      'vpcId': ?vpcId,
      'vswitchId': ?vswitchId,
      'zoneId': ?zoneId,
    };
  }

  factory DbInstanceState.fromMap(Map<String, dynamic> map) {
    return DbInstanceState(
      connectionString: (() {
        final guardedValue = map['connectionString'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dbInstanceCategory: (() {
        final guardedValue = map['dbInstanceCategory'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dbInstanceDescription: (() {
        final guardedValue = map['dbInstanceDescription'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dbInstanceIpArrays: (() {
        final guardedValue = map['dbInstanceIpArrays'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<DbInstanceDbInstanceIpArray>(
            guardedValue,
            (value) => DbInstanceDbInstanceIpArray.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      dbInstanceNetworkType: (() {
        final guardedValue = map['dbInstanceNetworkType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dbInstanceStorageType: (() {
        final guardedValue = map['dbInstanceStorageType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dbNodeClass: (() {
        final guardedValue = map['dbNodeClass'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dbNodeStorage: (() {
        final guardedValue = map['dbNodeStorage'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      dbVersion: (() {
        final guardedValue = map['dbVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      paymentType: (() {
        final guardedValue = map['paymentType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      port: (() {
        final guardedValue = map['port'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: (() {
        final guardedValue = map['status'];
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
