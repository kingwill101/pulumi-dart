// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstancesInstance {
  /// The Backup Status of the instance.
  final pulumi.Input<String> backupStatus;
  /// Core node disk size, unit:GB.
  final pulumi.Input<int> coreDiskSize;
  /// Cloud_ssd or cloud_efficiency
  final pulumi.Input<String> coreDiskType;
  /// Like hbase.sn2.2xlarge, hbase.sn2.4xlarge, hbase.sn2.8xlarge and so on.
  final pulumi.Input<String> coreInstanceType;
  /// Same with "core_instance_quantity"
  final pulumi.Input<int> coreNodeCount;
  /// The created time of the instance.
  final pulumi.Input<String> createdTime;
  /// The switch of delete protection.
  final pulumi.Input<bool> deletionProtection;
  /// The engine of the instance.
  final pulumi.Input<String> engine;
  /// The engine_version of the instance.
  final pulumi.Input<String> engineVersion;
  /// The expire time of the instance.
  final pulumi.Input<String> expireTime;
  /// The ID of the HBase instance.
  final pulumi.Input<String> id;
  /// Like hbase.sn2.2xlarge, hbase.sn2.4xlarge, hbase.sn2.8xlarge and so on.
  final pulumi.Input<String> masterInstanceType;
  /// The node count of master
  final pulumi.Input<int> masterNodeCount;
  /// The name of the HBase instance.
  final pulumi.Input<String> name;
  /// Classic network or VPC.
  final pulumi.Input<String> networkType;
  /// Billing method. Value options are `PostPaid` for  Pay-As-You-Go and `PrePaid` for yearly or monthly subscription.
  final pulumi.Input<String> payType;
  /// Region ID the instance belongs to.
  final pulumi.Input<String> regionId;
  /// Status of the instance.
  final pulumi.Input<String> status;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// VPC ID the instance belongs to.
  final pulumi.Input<String> vpcId;
  /// VSwitch ID the instance belongs to.
  final pulumi.Input<String> vswitchId;
  /// Zone ID the instance belongs to.
  final pulumi.Input<String> zoneId;

  /// Creates a new [GetInstancesInstance].
  /// [backupStatus] The Backup Status of the instance.
  /// [coreDiskSize] Core node disk size, unit:GB.
  /// [coreDiskType] Cloud_ssd or cloud_efficiency
  /// [coreInstanceType] Like hbase.sn2.2xlarge, hbase.sn2.4xlarge, hbase.sn2.8xlarge and so on.
  /// [coreNodeCount] Same with "core_instance_quantity"
  /// [createdTime] The created time of the instance.
  /// [deletionProtection] The switch of delete protection.
  /// [engine] The engine of the instance.
  /// [engineVersion] The engine_version of the instance.
  /// [expireTime] The expire time of the instance.
  /// [id] The ID of the HBase instance.
  /// [masterInstanceType] Like hbase.sn2.2xlarge, hbase.sn2.4xlarge, hbase.sn2.8xlarge and so on.
  /// [masterNodeCount] The node count of master
  /// [name] The name of the HBase instance.
  /// [networkType] Classic network or VPC.
  /// [payType] Billing method. Value options are `PostPaid` for  Pay-As-You-Go and `PrePaid` for yearly or monthly subscription.
  /// [regionId] Region ID the instance belongs to.
  /// [status] Status of the instance.
  /// [tags] A mapping of tags to assign to the resource.
  /// [vpcId] VPC ID the instance belongs to.
  /// [vswitchId] VSwitch ID the instance belongs to.
  /// [zoneId] Zone ID the instance belongs to.
  GetInstancesInstance({
    required this.backupStatus,
    required this.coreDiskSize,
    required this.coreDiskType,
    required this.coreInstanceType,
    required this.coreNodeCount,
    required this.createdTime,
    required this.deletionProtection,
    required this.engine,
    required this.engineVersion,
    required this.expireTime,
    required this.id,
    required this.masterInstanceType,
    required this.masterNodeCount,
    required this.name,
    required this.networkType,
    required this.payType,
    required this.regionId,
    required this.status,
    this.tags,
    required this.vpcId,
    required this.vswitchId,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupStatus': backupStatus,
      'coreDiskSize': coreDiskSize,
      'coreDiskType': coreDiskType,
      'coreInstanceType': coreInstanceType,
      'coreNodeCount': coreNodeCount,
      'createdTime': createdTime,
      'deletionProtection': deletionProtection,
      'engine': engine,
      'engineVersion': engineVersion,
      'expireTime': expireTime,
      'id': id,
      'masterInstanceType': masterInstanceType,
      'masterNodeCount': masterNodeCount,
      'name': name,
      'networkType': networkType,
      'payType': payType,
      'regionId': regionId,
      'status': status,
      'tags': ?tags,
      'vpcId': vpcId,
      'vswitchId': vswitchId,
      'zoneId': zoneId,
    };
  }

  factory GetInstancesInstance.fromMap(Map<String, dynamic> map) {
    return GetInstancesInstance(
      backupStatus: (map['backupStatus'] as String).input(),
      coreDiskSize: (map['coreDiskSize'] as int).input(),
      coreDiskType: (map['coreDiskType'] as String).input(),
      coreInstanceType: (map['coreInstanceType'] as String).input(),
      coreNodeCount: (map['coreNodeCount'] as int).input(),
      createdTime: (map['createdTime'] as String).input(),
      deletionProtection: (map['deletionProtection'] as bool).input(),
      engine: (map['engine'] as String).input(),
      engineVersion: (map['engineVersion'] as String).input(),
      expireTime: (map['expireTime'] as String).input(),
      id: (map['id'] as String).input(),
      masterInstanceType: (map['masterInstanceType'] as String).input(),
      masterNodeCount: (map['masterNodeCount'] as int).input(),
      name: (map['name'] as String).input(),
      networkType: (map['networkType'] as String).input(),
      payType: (map['payType'] as String).input(),
      regionId: (map['regionId'] as String).input(),
      status: (map['status'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      vpcId: (map['vpcId'] as String).input(),
      vswitchId: (map['vswitchId'] as String).input(),
      zoneId: (map['zoneId'] as String).input(),
    );
  }
}

