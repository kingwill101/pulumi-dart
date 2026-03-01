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
    required pulumi.Output<String> dbInstanceCategory,
    pulumi.Output<String>? dbInstanceDescription,
    pulumi.Output<List<DbInstanceDbInstanceIpArray>>? dbInstanceIpArrays,
    required pulumi.Output<String> dbInstanceNetworkType,
    required pulumi.Output<String> dbInstanceStorageType,
    required pulumi.Output<String> dbNodeClass,
    required pulumi.Output<int> dbNodeStorage,
    required pulumi.Output<String> dbVersion,
    required pulumi.Output<String> paymentType,
    pulumi.Output<String>? vpcId,
    pulumi.Output<String>? vswitchId,
    pulumi.Output<String>? zoneId,
  }) :
      dbInstanceCategory = pulumi.Input.asInput<String>(dbInstanceCategory),
      dbInstanceDescription = pulumi.Input.asOptionalInput<String>(dbInstanceDescription),
      dbInstanceIpArrays = pulumi.Input.asOptionalInput<List<DbInstanceDbInstanceIpArray>>(dbInstanceIpArrays),
      dbInstanceNetworkType = pulumi.Input.asInput<String>(dbInstanceNetworkType),
      dbInstanceStorageType = pulumi.Input.asInput<String>(dbInstanceStorageType),
      dbNodeClass = pulumi.Input.asInput<String>(dbNodeClass),
      dbNodeStorage = pulumi.Input.asInput<int>(dbNodeStorage),
      dbVersion = pulumi.Input.asInput<String>(dbVersion),
      paymentType = pulumi.Input.asInput<String>(paymentType),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId),
      vswitchId = pulumi.Input.asOptionalInput<String>(vswitchId),
      zoneId = pulumi.Input.asOptionalInput<String>(zoneId);

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
      dbInstanceCategory: pulumi.Output.create<String>(map['dbInstanceCategory'] as String),
      dbInstanceDescription: map['dbInstanceDescription'] == null ? null : pulumi.Output.create<String>(map['dbInstanceDescription'] as String),
      dbInstanceIpArrays: map['dbInstanceIpArrays'] == null ? null : pulumi.Output.create<List<DbInstanceDbInstanceIpArray>>(pulumi.Input.decodeList<DbInstanceDbInstanceIpArray>(map['dbInstanceIpArrays'], (value) => DbInstanceDbInstanceIpArray.fromMap((value as Map).cast<String, dynamic>()))),
      dbInstanceNetworkType: pulumi.Output.create<String>(map['dbInstanceNetworkType'] as String),
      dbInstanceStorageType: pulumi.Output.create<String>(map['dbInstanceStorageType'] as String),
      dbNodeClass: pulumi.Output.create<String>(map['dbNodeClass'] as String),
      dbNodeStorage: pulumi.Output.create<int>(map['dbNodeStorage'] as int),
      dbVersion: pulumi.Output.create<String>(map['dbVersion'] as String),
      paymentType: pulumi.Output.create<String>(map['paymentType'] as String),
      vpcId: map['vpcId'] == null ? null : pulumi.Output.create<String>(map['vpcId'] as String),
      vswitchId: map['vswitchId'] == null ? null : pulumi.Output.create<String>(map['vswitchId'] as String),
      zoneId: map['zoneId'] == null ? null : pulumi.Output.create<String>(map['zoneId'] as String),
    );
  }
}

