// ignore_for_file: unused_element, unnecessary_cast


class GetDataCentersCenter {
  /// The cluster id of dataCenters belongs to.
  final String clusterId;
  /// The commodity ID of the Cassandra dataCenter.
  final String commodityInstance;
  final String createdTime;
  /// The id of the Cassandra dataCenter.
  final String dataCenterId;
  /// The name of the Cassandra dataCenter.
  final String dataCenterName;
  /// One node disk size, unit:GB.
  final int diskSize;
  /// Cloud_ssd or cloud_efficiency.
  final String diskType;
  /// The expire time of the dataCenter.
  final String expireTime;
  /// The instance type of the Cassandra dataCenter, eg: cassandra.c.large.
  final String instanceType;
  /// The lock mode of the dataCenter.
  final String lockMode;
  /// The node count of dataCenter.
  final int nodeCount;
  /// Billing method. Value options are `Subscription` for Pay-As-You-Go and `PayAsYouGo` for yearly or monthly subscription.
  final String payType;
  /// Status of the dataCenter.
  final String status;
  /// VPC ID the dataCenter belongs to.
  final String vpcId;
  /// VSwitch ID the dataCenter belongs to.
  final String vswitchId;
  /// Zone ID the dataCenter belongs to.
  final String zoneId;

  /// Creates a new [GetDataCentersCenter].
  /// [clusterId] The cluster id of dataCenters belongs to.
  /// [commodityInstance] The commodity ID of the Cassandra dataCenter.
  /// [createdTime] Required.
  /// [dataCenterId] The id of the Cassandra dataCenter.
  /// [dataCenterName] The name of the Cassandra dataCenter.
  /// [diskSize] One node disk size, unit:GB.
  /// [diskType] Cloud_ssd or cloud_efficiency.
  /// [expireTime] The expire time of the dataCenter.
  /// [instanceType] The instance type of the Cassandra dataCenter, eg: cassandra.c.large.
  /// [lockMode] The lock mode of the dataCenter.
  /// [nodeCount] The node count of dataCenter.
  /// [payType] Billing method. Value options are `Subscription` for Pay-As-You-Go and `PayAsYouGo` for yearly or monthly subscription.
  /// [status] Status of the dataCenter.
  /// [vpcId] VPC ID the dataCenter belongs to.
  /// [vswitchId] VSwitch ID the dataCenter belongs to.
  /// [zoneId] Zone ID the dataCenter belongs to.
  GetDataCentersCenter({
    required this.clusterId,
    required this.commodityInstance,
    required this.createdTime,
    required this.dataCenterId,
    required this.dataCenterName,
    required this.diskSize,
    required this.diskType,
    required this.expireTime,
    required this.instanceType,
    required this.lockMode,
    required this.nodeCount,
    required this.payType,
    required this.status,
    required this.vpcId,
    required this.vswitchId,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': clusterId,
      'commodityInstance': commodityInstance,
      'createdTime': createdTime,
      'dataCenterId': dataCenterId,
      'dataCenterName': dataCenterName,
      'diskSize': diskSize,
      'diskType': diskType,
      'expireTime': expireTime,
      'instanceType': instanceType,
      'lockMode': lockMode,
      'nodeCount': nodeCount,
      'payType': payType,
      'status': status,
      'vpcId': vpcId,
      'vswitchId': vswitchId,
      'zoneId': zoneId,
    };
  }

  factory GetDataCentersCenter.fromMap(Map<String, dynamic> map) {
    return GetDataCentersCenter(
      clusterId: map['clusterId'] as String,
      commodityInstance: map['commodityInstance'] as String,
      createdTime: map['createdTime'] as String,
      dataCenterId: map['dataCenterId'] as String,
      dataCenterName: map['dataCenterName'] as String,
      diskSize: map['diskSize'] as int,
      diskType: map['diskType'] as String,
      expireTime: map['expireTime'] as String,
      instanceType: map['instanceType'] as String,
      lockMode: map['lockMode'] as String,
      nodeCount: map['nodeCount'] as int,
      payType: map['payType'] as String,
      status: map['status'] as String,
      vpcId: map['vpcId'] as String,
      vswitchId: map['vswitchId'] as String,
      zoneId: map['zoneId'] as String,
    );
  }
}

