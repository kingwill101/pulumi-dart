// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_v2_manager_manager_node_system_disk.dart';

class ClusterV2ManagerManagerNode {
  /// Whether to automatically renew. This parameter takes effect only when the value of InstanceChargeType is PrePaid. Value range:
  /// - true: Automatic renewal.
  /// - false: Do not renew automatically (default).
  final pulumi.Input<bool>? autoRenew;
  /// The renewal duration of a single automatic renewal. Value range:
  /// - When PeriodUnit = Week: 1, 2, 3.
  /// - When PeriodUnit = Month: 1, 2, 3, 6, 12, 24, 36, 48, 60.
  ///
  /// Default value: 1.
  final pulumi.Input<int>? autoRenewPeriod;
  /// The duration of the preemptible instance, in hours. Value:
  /// - : After the instance is created, Alibaba Cloud will ensure that the instance will not be automatically released after one hour of operation. After one hour, the system will compare the bid price with the market price in real time and check the resource inventory to determine the holding and recycling of the instance.
  /// - 0: After creation, Alibaba Cloud does not guarantee the running time of the instance. The system compares the bid price with the market price in real time and checks the resource inventory to determine the holding and recycling of the instance.
  ///
  /// Default value: 1.
  final pulumi.Input<int>? duration;
  /// EnableHT
  final pulumi.Input<bool>? enableHt;
  /// The expiration time of the management node.
  final pulumi.Input<String>? expiredTime;
  /// ImageId
  final pulumi.Input<String>? imageId;
  /// The instance billing method of the management node. Valid values:
  ///
  /// - PostPaid: pay-as-you-go
  /// - PrePaid: subscription
  final pulumi.Input<String>? instanceChargeType;
  /// The instance ID of the management node.
  final pulumi.Input<String>? instanceId;
  /// The instance type of the management node.
  final pulumi.Input<String>? instanceType;
  /// The duration of the resource purchase. The unit is specified by PeriodUnit. The parameter InstanceChargeType takes effect only when the value is PrePaid and is a required value. Once DedicatedHostId is specified, the value range cannot exceed the subscription duration of the DDH. Value range:
  /// - When PeriodUnit = Week, the values of Period are 1, 2, 3, and 4.
  /// - When PeriodUnit = Month, the values of Period are 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 24, 36, 48, and 60.
  final pulumi.Input<int>? period;
  /// The unit of duration of the year-to-month billing method. Value range:
  /// - Week.
  /// - Month (default).
  final pulumi.Input<String>? periodUnit;
  /// Set the maximum price per hour for the instance. The maximum number of decimals is 3. It takes effect when the value of the SpotStrategy parameter is SpotWithPriceLimit.
  final pulumi.Input<double>? spotPriceLimit;
  /// The bidding strategy for pay-as-you-go instances. This parameter takes effect when the value of the InstanceChargeType parameter is PostPaid. Value range:
  /// - NoSpot: normal pay-as-you-go instances (default).
  /// - SpotWithPriceLimit: set the upper limit price for the preemptible instance.
  /// - SpotAsPriceGo: The system automatically bids, following the actual price of the current market.
  final pulumi.Input<String>? spotStrategy;
  /// System disk configuration of the management node. See `system_disk` below.
  final pulumi.Input<ClusterV2ManagerManagerNodeSystemDisk>? systemDisk;

  /// Creates a new [ClusterV2ManagerManagerNode].
  /// [autoRenew] Whether to automatically renew. This parameter takes effect only when the value of InstanceChargeType is PrePaid. Value range:
  /// [autoRenewPeriod] The renewal duration of a single automatic renewal. Value range:
  /// [duration] The duration of the preemptible instance, in hours. Value:
  /// [enableHt] EnableHT
  /// [expiredTime] The expiration time of the management node.
  /// [imageId] ImageId
  /// [instanceChargeType] The instance billing method of the management node. Valid values:
  /// [instanceId] The instance ID of the management node.
  /// [instanceType] The instance type of the management node.
  /// [period] The duration of the resource purchase. The unit is specified by PeriodUnit. The parameter InstanceChargeType takes effect only when the value is PrePaid and is a required value. Once DedicatedHostId is specified, the value range cannot exceed the subscription duration of the DDH. Value range:
  /// [periodUnit] The unit of duration of the year-to-month billing method. Value range:
  /// [spotPriceLimit] Set the maximum price per hour for the instance. The maximum number of decimals is 3. It takes effect when the value of the SpotStrategy parameter is SpotWithPriceLimit.
  /// [spotStrategy] The bidding strategy for pay-as-you-go instances. This parameter takes effect when the value of the InstanceChargeType parameter is PostPaid. Value range:
  /// [systemDisk] System disk configuration of the management node. See `system_disk` below.
  const ClusterV2ManagerManagerNode({
    this.autoRenew,
    this.autoRenewPeriod,
    this.duration,
    this.enableHt,
    this.expiredTime,
    this.imageId,
    this.instanceChargeType,
    this.instanceId,
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
      'expiredTime': ?expiredTime,
      'imageId': ?imageId,
      'instanceChargeType': ?instanceChargeType,
      'instanceId': ?instanceId,
      'instanceType': ?instanceType,
      'period': ?period,
      'periodUnit': ?periodUnit,
      'spotPriceLimit': ?spotPriceLimit,
      'spotStrategy': ?spotStrategy,
      'systemDisk': ?pulumi.Input.mapOptionalInputValue<ClusterV2ManagerManagerNodeSystemDisk, Map<String, dynamic>>(systemDisk, (value) => value.toMap()),
    };
  }

  factory ClusterV2ManagerManagerNode.fromMap(Map<String, dynamic> map) {
    return ClusterV2ManagerManagerNode(
      autoRenew: (() { final guardedValue = map['autoRenew']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      autoRenewPeriod: (() { final guardedValue = map['autoRenewPeriod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      duration: (() { final guardedValue = map['duration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      enableHt: (() { final guardedValue = map['enableHt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      expiredTime: (() { final guardedValue = map['expiredTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      imageId: (() { final guardedValue = map['imageId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceChargeType: (() { final guardedValue = map['instanceChargeType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceId: (() { final guardedValue = map['instanceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceType: (() { final guardedValue = map['instanceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      period: (() { final guardedValue = map['period']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      periodUnit: (() { final guardedValue = map['periodUnit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      spotPriceLimit: (() { final guardedValue = map['spotPriceLimit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      spotStrategy: (() { final guardedValue = map['spotStrategy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      systemDisk: (() { final guardedValue = map['systemDisk']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterV2ManagerManagerNodeSystemDisk.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

