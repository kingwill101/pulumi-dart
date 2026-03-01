// ignore_for_file: unused_element, unnecessary_cast


class ClusterHostGroup {
  /// Auto renew for prepaid, ’true’ or ‘false’ . Default value: false.
  final bool? autoRenew;
  /// Charge Type for this cluster. Supported value: PostPaid or PrePaid. Default value: PostPaid.
  final String? chargeType;
  /// Graceful decommission timeout, unit: seconds.
  final int? decommissionTimeout;
  /// Data disk capacity.
  final String? diskCapacity;
  /// Data disk count.
  final String? diskCount;
  /// Data disk type. Supported value: cloud,cloud_efficiency,cloud_ssd,local_disk,cloud_essd.
  final String? diskType;
  /// Enable hadoop cluster of task node graceful decommission, ’true’ or ‘false’ . Default value: false.
  final bool? enableGracefulDecommission;
  final String? gpuDriver;
  /// host group name.
  final String? hostGroupName;
  /// host group type, supported value: MASTER, CORE or TASK, supported 'GATEWAY' available in 1.61.0+.
  final String? hostGroupType;
  /// Instance list for cluster scale down. This value follows the json format, e.g. ["instance_id1","instance_id2"]. escape character for " is \".
  final String? instanceList;
  /// Host Ecs instance type.
  final String? instanceType;
  /// Host number in this group.
  final String? nodeCount;
  /// If charge type is PrePaid, this should be specified, unit is month. Supported value: 1、2、3、4、5、6、7、8、9、12、24、36.
  final int? period;
  /// System disk capacity.
  final String? sysDiskCapacity;
  /// System disk type. Supported value: cloud,cloud_efficiency,cloud_ssd,cloud_essd.
  final String? sysDiskType;

  /// Creates a new [ClusterHostGroup].
  /// [autoRenew] Auto renew for prepaid, ’true’ or ‘false’ . Default value: false.
  /// [chargeType] Charge Type for this cluster. Supported value: PostPaid or PrePaid. Default value: PostPaid.
  /// [decommissionTimeout] Graceful decommission timeout, unit: seconds.
  /// [diskCapacity] Data disk capacity.
  /// [diskCount] Data disk count.
  /// [diskType] Data disk type. Supported value: cloud,cloud_efficiency,cloud_ssd,local_disk,cloud_essd.
  /// [enableGracefulDecommission] Enable hadoop cluster of task node graceful decommission, ’true’ or ‘false’ . Default value: false.
  /// [gpuDriver] Optional.
  /// [hostGroupName] host group name.
  /// [hostGroupType] host group type, supported value: MASTER, CORE or TASK, supported 'GATEWAY' available in 1.61.0+.
  /// [instanceList] Instance list for cluster scale down. This value follows the json format, e.g. ["instance_id1","instance_id2"]. escape character for " is \".
  /// [instanceType] Host Ecs instance type.
  /// [nodeCount] Host number in this group.
  /// [period] If charge type is PrePaid, this should be specified, unit is month. Supported value: 1、2、3、4、5、6、7、8、9、12、24、36.
  /// [sysDiskCapacity] System disk capacity.
  /// [sysDiskType] System disk type. Supported value: cloud,cloud_efficiency,cloud_ssd,cloud_essd.
  ClusterHostGroup({
    this.autoRenew,
    this.chargeType,
    this.decommissionTimeout,
    this.diskCapacity,
    this.diskCount,
    this.diskType,
    this.enableGracefulDecommission,
    this.gpuDriver,
    this.hostGroupName,
    this.hostGroupType,
    this.instanceList,
    this.instanceType,
    this.nodeCount,
    this.period,
    this.sysDiskCapacity,
    this.sysDiskType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoRenew': ?autoRenew,
      'chargeType': ?chargeType,
      'decommissionTimeout': ?decommissionTimeout,
      'diskCapacity': ?diskCapacity,
      'diskCount': ?diskCount,
      'diskType': ?diskType,
      'enableGracefulDecommission': ?enableGracefulDecommission,
      'gpuDriver': ?gpuDriver,
      'hostGroupName': ?hostGroupName,
      'hostGroupType': ?hostGroupType,
      'instanceList': ?instanceList,
      'instanceType': ?instanceType,
      'nodeCount': ?nodeCount,
      'period': ?period,
      'sysDiskCapacity': ?sysDiskCapacity,
      'sysDiskType': ?sysDiskType,
    };
  }

  factory ClusterHostGroup.fromMap(Map<String, dynamic> map) {
    return ClusterHostGroup(
      autoRenew: map['autoRenew'] == null ? null : map['autoRenew'] as bool,
      chargeType: map['chargeType'] == null ? null : map['chargeType'] as String,
      decommissionTimeout: map['decommissionTimeout'] == null ? null : map['decommissionTimeout'] as int,
      diskCapacity: map['diskCapacity'] == null ? null : map['diskCapacity'] as String,
      diskCount: map['diskCount'] == null ? null : map['diskCount'] as String,
      diskType: map['diskType'] == null ? null : map['diskType'] as String,
      enableGracefulDecommission: map['enableGracefulDecommission'] == null ? null : map['enableGracefulDecommission'] as bool,
      gpuDriver: map['gpuDriver'] == null ? null : map['gpuDriver'] as String,
      hostGroupName: map['hostGroupName'] == null ? null : map['hostGroupName'] as String,
      hostGroupType: map['hostGroupType'] == null ? null : map['hostGroupType'] as String,
      instanceList: map['instanceList'] == null ? null : map['instanceList'] as String,
      instanceType: map['instanceType'] == null ? null : map['instanceType'] as String,
      nodeCount: map['nodeCount'] == null ? null : map['nodeCount'] as String,
      period: map['period'] == null ? null : map['period'] as int,
      sysDiskCapacity: map['sysDiskCapacity'] == null ? null : map['sysDiskCapacity'] as String,
      sysDiskType: map['sysDiskType'] == null ? null : map['sysDiskType'] as String,
    );
  }
}

