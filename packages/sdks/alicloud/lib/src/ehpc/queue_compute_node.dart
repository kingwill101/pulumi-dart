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
      'systemDisk':
          ?pulumi.Input.mapOptionalInputValue<
            QueueComputeNodeSystemDisk,
            Map<String, dynamic>
          >(systemDisk, (value) => value.toMap()),
    };
  }

  factory QueueComputeNode.fromMap(Map<String, dynamic> map) {
    return QueueComputeNode(
      autoRenew: (() {
        final guardedValue = map['autoRenew'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      autoRenewPeriod: (() {
        final guardedValue = map['autoRenewPeriod'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      duration: (() {
        final guardedValue = map['duration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      enableHt: (() {
        final guardedValue = map['enableHt'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      imageId: (() {
        final guardedValue = map['imageId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      instanceChargeType: (() {
        final guardedValue = map['instanceChargeType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      instanceType: (() {
        final guardedValue = map['instanceType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      period: (() {
        final guardedValue = map['period'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      periodUnit: (() {
        final guardedValue = map['periodUnit'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      spotPriceLimit: (() {
        final guardedValue = map['spotPriceLimit'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      spotStrategy: (() {
        final guardedValue = map['spotStrategy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      systemDisk: (() {
        final guardedValue = map['systemDisk'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          QueueComputeNodeSystemDisk.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
