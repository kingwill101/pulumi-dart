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
    pulumi.Output<String>? connectionString,
    pulumi.Output<String>? dbInstanceCategory,
    pulumi.Output<String>? dbInstanceDescription,
    pulumi.Output<List<DbInstanceDbInstanceIpArray>>? dbInstanceIpArrays,
    pulumi.Output<String>? dbInstanceNetworkType,
    pulumi.Output<String>? dbInstanceStorageType,
    pulumi.Output<String>? dbNodeClass,
    pulumi.Output<int>? dbNodeStorage,
    pulumi.Output<String>? dbVersion,
    pulumi.Output<String>? paymentType,
    pulumi.Output<String>? port,
    pulumi.Output<String>? status,
    pulumi.Output<String>? vpcId,
    pulumi.Output<String>? vswitchId,
    pulumi.Output<String>? zoneId,
  }) :
      connectionString = pulumi.Input.asOptionalInput<String>(connectionString),
      dbInstanceCategory = pulumi.Input.asOptionalInput<String>(dbInstanceCategory),
      dbInstanceDescription = pulumi.Input.asOptionalInput<String>(dbInstanceDescription),
      dbInstanceIpArrays = pulumi.Input.asOptionalInput<List<DbInstanceDbInstanceIpArray>>(dbInstanceIpArrays),
      dbInstanceNetworkType = pulumi.Input.asOptionalInput<String>(dbInstanceNetworkType),
      dbInstanceStorageType = pulumi.Input.asOptionalInput<String>(dbInstanceStorageType),
      dbNodeClass = pulumi.Input.asOptionalInput<String>(dbNodeClass),
      dbNodeStorage = pulumi.Input.asOptionalInput<int>(dbNodeStorage),
      dbVersion = pulumi.Input.asOptionalInput<String>(dbVersion),
      paymentType = pulumi.Input.asOptionalInput<String>(paymentType),
      port = pulumi.Input.asOptionalInput<String>(port),
      status = pulumi.Input.asOptionalInput<String>(status),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId),
      vswitchId = pulumi.Input.asOptionalInput<String>(vswitchId),
      zoneId = pulumi.Input.asOptionalInput<String>(zoneId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionString': ?connectionString,
      'dbInstanceCategory': ?dbInstanceCategory,
      'dbInstanceDescription': ?dbInstanceDescription,
      'dbInstanceIpArrays': ?pulumi.Input.mapOptionalInputValue<List<DbInstanceDbInstanceIpArray>, List<Map<String, dynamic>>>(dbInstanceIpArrays, (value) => pulumi.Input.encodeList<DbInstanceDbInstanceIpArray, Map<String, dynamic>>(value, (value) => value.toMap())),
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
      connectionString: map['connectionString'] == null ? null : pulumi.Output.create<String>(map['connectionString'] as String),
      dbInstanceCategory: map['dbInstanceCategory'] == null ? null : pulumi.Output.create<String>(map['dbInstanceCategory'] as String),
      dbInstanceDescription: map['dbInstanceDescription'] == null ? null : pulumi.Output.create<String>(map['dbInstanceDescription'] as String),
      dbInstanceIpArrays: map['dbInstanceIpArrays'] == null ? null : pulumi.Output.create<List<DbInstanceDbInstanceIpArray>>(pulumi.Input.decodeList<DbInstanceDbInstanceIpArray>(map['dbInstanceIpArrays'], (value) => DbInstanceDbInstanceIpArray.fromMap((value as Map).cast<String, dynamic>()))),
      dbInstanceNetworkType: map['dbInstanceNetworkType'] == null ? null : pulumi.Output.create<String>(map['dbInstanceNetworkType'] as String),
      dbInstanceStorageType: map['dbInstanceStorageType'] == null ? null : pulumi.Output.create<String>(map['dbInstanceStorageType'] as String),
      dbNodeClass: map['dbNodeClass'] == null ? null : pulumi.Output.create<String>(map['dbNodeClass'] as String),
      dbNodeStorage: map['dbNodeStorage'] == null ? null : pulumi.Output.create<int>(map['dbNodeStorage'] as int),
      dbVersion: map['dbVersion'] == null ? null : pulumi.Output.create<String>(map['dbVersion'] as String),
      paymentType: map['paymentType'] == null ? null : pulumi.Output.create<String>(map['paymentType'] as String),
      port: map['port'] == null ? null : pulumi.Output.create<String>(map['port'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      vpcId: map['vpcId'] == null ? null : pulumi.Output.create<String>(map['vpcId'] as String),
      vswitchId: map['vswitchId'] == null ? null : pulumi.Output.create<String>(map['vswitchId'] as String),
      zoneId: map['zoneId'] == null ? null : pulumi.Output.create<String>(map['zoneId'] as String),
    );
  }
}

