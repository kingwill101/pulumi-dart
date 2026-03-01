// ignore_for_file: unused_element, unnecessary_cast


class GetInstancesInstance {
  /// The Backup Status of the instance.
  final String backupStatus;
  /// Core node disk size, unit:GB.
  final int coreDiskSize;
  /// Cloud_ssd or cloud_efficiency
  final String coreDiskType;
  /// Like hbase.sn2.2xlarge, hbase.sn2.4xlarge, hbase.sn2.8xlarge and so on.
  final String coreInstanceType;
  /// Same with "core_instance_quantity"
  final int coreNodeCount;
  /// The created time of the instance.
  final String createdTime;
  /// The switch of delete protection.
  final bool deletionProtection;
  /// The engine of the instance.
  final String engine;
  /// The engine_version of the instance.
  final String engineVersion;
  /// The expire time of the instance.
  final String expireTime;
  /// The ID of the HBase instance.
  final String id;
  /// Like hbase.sn2.2xlarge, hbase.sn2.4xlarge, hbase.sn2.8xlarge and so on.
  final String masterInstanceType;
  /// The node count of master
  final int masterNodeCount;
  /// The name of the HBase instance.
  final String name;
  /// Classic network or VPC.
  final String networkType;
  /// Billing method. Value options are `PostPaid` for  Pay-As-You-Go and `PrePaid` for yearly or monthly subscription.
  final String payType;
  /// Region ID the instance belongs to.
  final String regionId;
  /// Status of the instance.
  final String status;
  /// A mapping of tags to assign to the resource.
  final Map<String, String>? tags;
  /// VPC ID the instance belongs to.
  final String vpcId;
  /// VSwitch ID the instance belongs to.
  final String vswitchId;
  /// Zone ID the instance belongs to.
  final String zoneId;

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
      backupStatus: map['backupStatus'] as String,
      coreDiskSize: map['coreDiskSize'] as int,
      coreDiskType: map['coreDiskType'] as String,
      coreInstanceType: map['coreInstanceType'] as String,
      coreNodeCount: map['coreNodeCount'] as int,
      createdTime: map['createdTime'] as String,
      deletionProtection: map['deletionProtection'] as bool,
      engine: map['engine'] as String,
      engineVersion: map['engineVersion'] as String,
      expireTime: map['expireTime'] as String,
      id: map['id'] as String,
      masterInstanceType: map['masterInstanceType'] as String,
      masterNodeCount: map['masterNodeCount'] as int,
      name: map['name'] as String,
      networkType: map['networkType'] as String,
      payType: map['payType'] as String,
      regionId: map['regionId'] as String,
      status: map['status'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      vpcId: map['vpcId'] as String,
      vswitchId: map['vswitchId'] as String,
      zoneId: map['zoneId'] as String,
    );
  }
}

