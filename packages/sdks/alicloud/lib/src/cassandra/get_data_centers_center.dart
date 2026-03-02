// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDataCentersCenter {
  /// The cluster id of dataCenters belongs to.
  final pulumi.Input<String> clusterId;
  /// The commodity ID of the Cassandra dataCenter.
  final pulumi.Input<String> commodityInstance;
  final pulumi.Input<String> createdTime;
  /// The id of the Cassandra dataCenter.
  final pulumi.Input<String> dataCenterId;
  /// The name of the Cassandra dataCenter.
  final pulumi.Input<String> dataCenterName;
  /// One node disk size, unit:GB.
  final pulumi.Input<int> diskSize;
  /// Cloud_ssd or cloud_efficiency.
  final pulumi.Input<String> diskType;
  /// The expire time of the dataCenter.
  final pulumi.Input<String> expireTime;
  /// The instance type of the Cassandra dataCenter, eg: cassandra.c.large.
  final pulumi.Input<String> instanceType;
  /// The lock mode of the dataCenter.
  final pulumi.Input<String> lockMode;
  /// The node count of dataCenter.
  final pulumi.Input<int> nodeCount;
  /// Billing method. Value options are `Subscription` for Pay-As-You-Go and `PayAsYouGo` for yearly or monthly subscription.
  final pulumi.Input<String> payType;
  /// Status of the dataCenter.
  final pulumi.Input<String> status;
  /// VPC ID the dataCenter belongs to.
  final pulumi.Input<String> vpcId;
  /// VSwitch ID the dataCenter belongs to.
  final pulumi.Input<String> vswitchId;
  /// Zone ID the dataCenter belongs to.
  final pulumi.Input<String> zoneId;

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
      clusterId: (map['clusterId'] as String).input(),
      commodityInstance: (map['commodityInstance'] as String).input(),
      createdTime: (map['createdTime'] as String).input(),
      dataCenterId: (map['dataCenterId'] as String).input(),
      dataCenterName: (map['dataCenterName'] as String).input(),
      diskSize: (map['diskSize'] as int).input(),
      diskType: (map['diskType'] as String).input(),
      expireTime: (map['expireTime'] as String).input(),
      instanceType: (map['instanceType'] as String).input(),
      lockMode: (map['lockMode'] as String).input(),
      nodeCount: (map['nodeCount'] as int).input(),
      payType: (map['payType'] as String).input(),
      status: (map['status'] as String).input(),
      vpcId: (map['vpcId'] as String).input(),
      vswitchId: (map['vswitchId'] as String).input(),
      zoneId: (map['zoneId'] as String).input(),
    );
  }
}

