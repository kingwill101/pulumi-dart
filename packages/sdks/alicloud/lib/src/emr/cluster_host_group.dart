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
  const ClusterHostGroup({
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
      autoRenew: (() { final guardedValue = map['autoRenew']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      chargeType: (() { final guardedValue = map['chargeType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      decommissionTimeout: (() { final guardedValue = map['decommissionTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      diskCapacity: (() { final guardedValue = map['diskCapacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      diskCount: (() { final guardedValue = map['diskCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      diskType: (() { final guardedValue = map['diskType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enableGracefulDecommission: (() { final guardedValue = map['enableGracefulDecommission']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      gpuDriver: (() { final guardedValue = map['gpuDriver']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hostGroupName: (() { final guardedValue = map['hostGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hostGroupType: (() { final guardedValue = map['hostGroupType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceList: (() { final guardedValue = map['instanceList']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceType: (() { final guardedValue = map['instanceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodeCount: (() { final guardedValue = map['nodeCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      period: (() { final guardedValue = map['period']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      sysDiskCapacity: (() { final guardedValue = map['sysDiskCapacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sysDiskType: (() { final guardedValue = map['sysDiskType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

