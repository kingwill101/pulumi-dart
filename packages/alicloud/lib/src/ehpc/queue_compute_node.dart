// ignore_for_file: unused_element, unnecessary_cast

import 'queue_compute_node_system_disk.dart';

class QueueComputeNode {
  /// AutoRenew
  final bool? autoRenew;
  /// AutoRenewPeriod
  final int? autoRenewPeriod;
  /// Duration
  final int? duration;
  /// Whether HT is enabled for the computing node.
  final bool? enableHt;
  /// ImageId
  final String? imageId;
  /// InstanceChargeType
  final String? instanceChargeType;
  /// InstanceTypes
  final String? instanceType;
  /// Period
  final int? period;
  /// PeriodUnit
  final String? periodUnit;
  /// SpotPriceLimit
  final double? spotPriceLimit;
  /// SpotStrategy
  final String? spotStrategy;
  /// SystemDisk See `system_disk` below.
  final QueueComputeNodeSystemDisk? systemDisk;

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
      'systemDisk': ?systemDisk == null ? null : systemDisk!.toMap(),
    };
  }

  factory QueueComputeNode.fromMap(Map<String, dynamic> map) {
    return QueueComputeNode(
      autoRenew: map['autoRenew'] == null ? null : map['autoRenew'] as bool,
      autoRenewPeriod: map['autoRenewPeriod'] == null ? null : map['autoRenewPeriod'] as int,
      duration: map['duration'] == null ? null : map['duration'] as int,
      enableHt: map['enableHt'] == null ? null : map['enableHt'] as bool,
      imageId: map['imageId'] == null ? null : map['imageId'] as String,
      instanceChargeType: map['instanceChargeType'] == null ? null : map['instanceChargeType'] as String,
      instanceType: map['instanceType'] == null ? null : map['instanceType'] as String,
      period: map['period'] == null ? null : map['period'] as int,
      periodUnit: map['periodUnit'] == null ? null : map['periodUnit'] as String,
      spotPriceLimit: map['spotPriceLimit'] == null ? null : map['spotPriceLimit'] as double,
      spotStrategy: map['spotStrategy'] == null ? null : map['spotStrategy'] as String,
      systemDisk: map['systemDisk'] == null ? null : QueueComputeNodeSystemDisk.fromMap((map['systemDisk'] as Map).cast<String, dynamic>()),
    );
  }
}

