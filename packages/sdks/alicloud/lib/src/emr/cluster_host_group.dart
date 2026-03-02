// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterHostGroup {
  /// Auto renew for prepaid, ’true’ or ‘false’ . Default value: false.
  final pulumi.Input<bool>? autoRenew;
  /// Charge Type for this cluster. Supported value: PostPaid or PrePaid. Default value: PostPaid.
  final pulumi.Input<String>? chargeType;
  /// Graceful decommission timeout, unit: seconds.
  final pulumi.Input<int>? decommissionTimeout;
  /// Data disk capacity.
  final pulumi.Input<String>? diskCapacity;
  /// Data disk count.
  final pulumi.Input<String>? diskCount;
  /// Data disk type. Supported value: cloud,cloud_efficiency,cloud_ssd,local_disk,cloud_essd.
  final pulumi.Input<String>? diskType;
  /// Enable hadoop cluster of task node graceful decommission, ’true’ or ‘false’ . Default value: false.
  final pulumi.Input<bool>? enableGracefulDecommission;
  final pulumi.Input<String>? gpuDriver;
  /// host group name.
  final pulumi.Input<String>? hostGroupName;
  /// host group type, supported value: MASTER, CORE or TASK, supported 'GATEWAY' available in 1.61.0+.
  final pulumi.Input<String>? hostGroupType;
  /// Instance list for cluster scale down. This value follows the json format, e.g. ["instance_id1","instance_id2"]. escape character for " is \".
  final pulumi.Input<String>? instanceList;
  /// Host Ecs instance type.
  final pulumi.Input<String>? instanceType;
  /// Host number in this group.
  final pulumi.Input<String>? nodeCount;
  /// If charge type is PrePaid, this should be specified, unit is month. Supported value: 1、2、3、4、5、6、7、8、9、12、24、36.
  final pulumi.Input<int>? period;
  /// System disk capacity.
  final pulumi.Input<String>? sysDiskCapacity;
  /// System disk type. Supported value: cloud,cloud_efficiency,cloud_ssd,cloud_essd.
  final pulumi.Input<String>? sysDiskType;

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
      autoRenew: map['autoRenew'] == null ? null : (map['autoRenew'] as bool).input(),
      chargeType: map['chargeType'] == null ? null : (map['chargeType'] as String).input(),
      decommissionTimeout: map['decommissionTimeout'] == null ? null : (map['decommissionTimeout'] as int).input(),
      diskCapacity: map['diskCapacity'] == null ? null : (map['diskCapacity'] as String).input(),
      diskCount: map['diskCount'] == null ? null : (map['diskCount'] as String).input(),
      diskType: map['diskType'] == null ? null : (map['diskType'] as String).input(),
      enableGracefulDecommission: map['enableGracefulDecommission'] == null ? null : (map['enableGracefulDecommission'] as bool).input(),
      gpuDriver: map['gpuDriver'] == null ? null : (map['gpuDriver'] as String).input(),
      hostGroupName: map['hostGroupName'] == null ? null : (map['hostGroupName'] as String).input(),
      hostGroupType: map['hostGroupType'] == null ? null : (map['hostGroupType'] as String).input(),
      instanceList: map['instanceList'] == null ? null : (map['instanceList'] as String).input(),
      instanceType: map['instanceType'] == null ? null : (map['instanceType'] as String).input(),
      nodeCount: map['nodeCount'] == null ? null : (map['nodeCount'] as String).input(),
      period: map['period'] == null ? null : (map['period'] as int).input(),
      sysDiskCapacity: map['sysDiskCapacity'] == null ? null : (map['sysDiskCapacity'] as String).input(),
      sysDiskType: map['sysDiskType'] == null ? null : (map['sysDiskType'] as String).input(),
    );
  }
}

