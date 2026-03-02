// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'queue_compute_node_system_disk.dart';

class QueueComputeNode {
  /// AutoRenew
  final pulumi.Input<bool>? autoRenew;
  /// AutoRenewPeriod
  final pulumi.Input<int>? autoRenewPeriod;
  /// Duration
  final pulumi.Input<int>? duration;
  /// Whether HT is enabled for the computing node.
  final pulumi.Input<bool>? enableHt;
  /// ImageId
  final pulumi.Input<String>? imageId;
  /// InstanceChargeType
  final pulumi.Input<String>? instanceChargeType;
  /// InstanceTypes
  final pulumi.Input<String>? instanceType;
  /// Period
  final pulumi.Input<int>? period;
  /// PeriodUnit
  final pulumi.Input<String>? periodUnit;
  /// SpotPriceLimit
  final pulumi.Input<double>? spotPriceLimit;
  /// SpotStrategy
  final pulumi.Input<String>? spotStrategy;
  /// SystemDisk See `system_disk` below.
  final pulumi.Input<QueueComputeNodeSystemDisk>? systemDisk;

  /// Creates a new [QueueComputeNode].
  /// [autoRenew] AutoRenew
  /// [autoRenewPeriod] AutoRenewPeriod
  /// [duration] Duration
  /// [enableHt] Whether HT is enabled for the computing node.
  /// [imageId] ImageId
  /// [instanceChargeType] InstanceChargeType
  /// [instanceType] InstanceTypes
  /// [period] Period
  /// [periodUnit] PeriodUnit
  /// [spotPriceLimit] SpotPriceLimit
  /// [spotStrategy] SpotStrategy
  /// [systemDisk] SystemDisk See `system_disk` below.
  QueueComputeNode({
    this.autoRenew,
    this.autoRenewPeriod,
    this.duration,
    this.enableHt,
    this.imageId,
    this.instanceChargeType,
    this.instanceType,
    this.period,
    this.periodUnit,
    this.spotPriceLimit,
    this.spotStrategy,
    this.systemDisk,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoRenew': ?autoRenew,
      'autoRenewPeriod': ?autoRenewPeriod,
      'duration': ?duration,
      'enableHt': ?enableHt,
      'imageId': ?imageId,
      'instanceChargeType': ?instanceChargeType,
      'instanceType': ?instanceType,
      'period': ?period,
      'periodUnit': ?periodUnit,
      'spotPriceLimit': ?spotPriceLimit,
      'spotStrategy': ?spotStrategy,
      'systemDisk': ?pulumi.Input.mapOptionalInputValue<QueueComputeNodeSystemDisk, Map<String, dynamic>>(systemDisk, (value) => value.toMap()),
    };
  }

  factory QueueComputeNode.fromMap(Map<String, dynamic> map) {
    return QueueComputeNode(
      autoRenew: map['autoRenew'] == null ? null : (map['autoRenew']! as bool).input(),
      autoRenewPeriod: map['autoRenewPeriod'] == null ? null : (map['autoRenewPeriod']! as int).input(),
      duration: map['duration'] == null ? null : (map['duration']! as int).input(),
      enableHt: map['enableHt'] == null ? null : (map['enableHt']! as bool).input(),
      imageId: map['imageId'] == null ? null : (map['imageId']! as String).input(),
      instanceChargeType: map['instanceChargeType'] == null ? null : (map['instanceChargeType']! as String).input(),
      instanceType: map['instanceType'] == null ? null : (map['instanceType']! as String).input(),
      period: map['period'] == null ? null : (map['period']! as int).input(),
      periodUnit: map['periodUnit'] == null ? null : (map['periodUnit']! as String).input(),
      spotPriceLimit: map['spotPriceLimit'] == null ? null : (map['spotPriceLimit']! as double).input(),
      spotStrategy: map['spotStrategy'] == null ? null : (map['spotStrategy']! as String).input(),
      systemDisk: map['systemDisk'] == null ? null : (QueueComputeNodeSystemDisk.fromMap((map['systemDisk']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

