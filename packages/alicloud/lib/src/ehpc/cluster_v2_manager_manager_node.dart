// ignore_for_file: unused_element, unnecessary_cast

import 'cluster_v2_manager_manager_node_system_disk.dart';

class ClusterV2ManagerManagerNode {
  /// Whether to automatically renew. This parameter takes effect only when the value of InstanceChargeType is PrePaid. Value range:
  /// - true: Automatic renewal.
  /// - false: Do not renew automatically (default).
  final bool? autoRenew;
  /// The renewal duration of a single automatic renewal. Value range:
  /// - When PeriodUnit = Week: 1, 2, 3.
  /// - When PeriodUnit = Month: 1, 2, 3, 6, 12, 24, 36, 48, 60.
  ///
  /// Default value: 1.
  final int? autoRenewPeriod;
  /// The duration of the preemptible instance, in hours. Value:
  /// - : After the instance is created, Alibaba Cloud will ensure that the instance will not be automatically released after one hour of operation. After one hour, the system will compare the bid price with the market price in real time and check the resource inventory to determine the holding and recycling of the instance.
  /// - 0: After creation, Alibaba Cloud does not guarantee the running time of the instance. The system compares the bid price with the market price in real time and checks the resource inventory to determine the holding and recycling of the instance.
  ///
  /// Default value: 1.
  final int? duration;
  /// EnableHT
  final bool? enableHt;
  /// The expiration time of the management node.
  final String? expiredTime;
  /// ImageId
  final String? imageId;
  /// The instance billing method of the management node. Valid values:
  ///
  /// - PostPaid: pay-as-you-go
  /// - PrePaid: subscription
  final String? instanceChargeType;
  /// The instance ID of the management node.
  final String? instanceId;
  /// The instance type of the management node.
  final String? instanceType;
  /// The duration of the resource purchase. The unit is specified by PeriodUnit. The parameter InstanceChargeType takes effect only when the value is PrePaid and is a required value. Once DedicatedHostId is specified, the value range cannot exceed the subscription duration of the DDH. Value range:
  /// - When PeriodUnit = Week, the values of Period are 1, 2, 3, and 4.
  /// - When PeriodUnit = Month, the values of Period are 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 24, 36, 48, and 60.
  final int? period;
  /// The unit of duration of the year-to-month billing method. Value range:
  /// - Week.
  /// - Month (default).
  final String? periodUnit;
  /// Set the maximum price per hour for the instance. The maximum number of decimals is 3. It takes effect when the value of the SpotStrategy parameter is SpotWithPriceLimit.
  final double? spotPriceLimit;
  /// The bidding strategy for pay-as-you-go instances. This parameter takes effect when the value of the InstanceChargeType parameter is PostPaid. Value range:
  /// - NoSpot: normal pay-as-you-go instances (default).
  /// - SpotWithPriceLimit: set the upper limit price for the preemptible instance.
  /// - SpotAsPriceGo: The system automatically bids, following the actual price of the current market.
  final String? spotStrategy;
  /// System disk configuration of the management node. See `system_disk` below.
  final ClusterV2ManagerManagerNodeSystemDisk? systemDisk;

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
  ClusterV2ManagerManagerNode({
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
      'systemDisk': ?systemDisk == null ? null : systemDisk!.toMap(),
    };
  }

  factory ClusterV2ManagerManagerNode.fromMap(Map<String, dynamic> map) {
    return ClusterV2ManagerManagerNode(
      autoRenew: map['autoRenew'] == null ? null : map['autoRenew'] as bool,
      autoRenewPeriod: map['autoRenewPeriod'] == null ? null : map['autoRenewPeriod'] as int,
      duration: map['duration'] == null ? null : map['duration'] as int,
      enableHt: map['enableHt'] == null ? null : map['enableHt'] as bool,
      expiredTime: map['expiredTime'] == null ? null : map['expiredTime'] as String,
      imageId: map['imageId'] == null ? null : map['imageId'] as String,
      instanceChargeType: map['instanceChargeType'] == null ? null : map['instanceChargeType'] as String,
      instanceId: map['instanceId'] == null ? null : map['instanceId'] as String,
      instanceType: map['instanceType'] == null ? null : map['instanceType'] as String,
      period: map['period'] == null ? null : map['period'] as int,
      periodUnit: map['periodUnit'] == null ? null : map['periodUnit'] as String,
      spotPriceLimit: map['spotPriceLimit'] == null ? null : map['spotPriceLimit'] as double,
      spotStrategy: map['spotStrategy'] == null ? null : map['spotStrategy'] as String,
      systemDisk: map['systemDisk'] == null ? null : ClusterV2ManagerManagerNodeSystemDisk.fromMap((map['systemDisk'] as Map).cast<String, dynamic>()),
    );
  }
}

