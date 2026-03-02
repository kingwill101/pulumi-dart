// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ocean_base_instance_base_instance_args_doc}
/// The set of arguments for BaseInstance.
/// {@endtemplate}
/// {@macro pulumi_ocean_base_instance_base_instance_args_doc}
class BaseInstanceArgs {
  /// Whether to automatically renew.
  ///
  /// It takes effect when the parameter ChargeType is PrePaid. Value range:
  /// - true: automatic renewal.
  /// - false (default): no automatic renewal.
  final pulumi.Input<bool>? autoRenew;
  /// The duration of each auto-renewal. When the value of the AutoRenew parameter is True, this parameter is required.
  /// - PeriodUnit is Week, AutoRenewPeriod is {"1", "2", "3"}.
  /// - PeriodUnit is Month, AutoRenewPeriod is {"1", "2", "3", "6", "12"}.
  final pulumi.Input<int>? autoRenewPeriod;
  /// The backup retention policy after the cluster is deleted. The values are as follows:
  /// - receive_all: Keep all backup sets;
  /// - delete_all: delete all backup sets;
  /// - receive_last: Keep the last backup set.
  ///
  /// > **NOTE:**   The default value is delete_all.
  final pulumi.Input<String>? backupRetainMode;
  /// Cpu architecture, x86, arm. If no, the default value is x86
  final pulumi.Input<String>? cpuArch;
  /// The size of the storage space, in GB.
  ///
  /// The limits of storage space vary according to the cluster specifications, as follows:
  /// - 8C32GB:100GB ~ 10000GB
  /// - 14C70GB:200GB ~ 10000GB
  /// - 30C180GB:400GB ~ 10000GB
  /// - 62C400G:800GB ~ 10000GB.
  ///
  /// The default value of each package is its minimum value.
  final pulumi.Input<int> diskSize;
  /// The storage type of the cluster. Effective only in the standard cluster version (cloud disk).
  ///
  /// Two types are currently supported:
  /// - cloud_essd_pl1: cloud disk ESSD pl1.
  /// - cloud_essd_pl0: cloud disk ESSD pl0. The default value is cloud_essd_pl1.
  final pulumi.Input<String>? diskType;
  /// Cluster specification information. Note Please enter the shape as xCxxG, not xCxxGB
  ///
  /// The x86 cluster architecture currently supports the following packages:
  /// - 4C16G:4 core 16GB
  /// - 8C32G:8 core 32GB
  /// - 14C70G:14 core 70GB
  /// - 24C120G:24 core 120GB
  /// - 30C180G:30 core 180GB
  /// - 62C400G:62 core 400GB
  /// - 104C600G:104 core 600GB
  /// - 16C70G:16 core 70GB
  /// - 32C160G:32 core 160GB
  /// - 64C380G:64 core 380GB
  /// - 20C32G:20 core 32GB
  /// - 40C64G:40 core 64GB
  /// - 16C32G:16 core 32GB
  /// - 32C70G:32 core 70GB
  /// - 64C180G:64 core 180GB
  /// - 32C180G:32 core 180GB
  /// - 64C400G:64 core 400GB,
  ///
  /// The cluster architecture of arm currently supports the following packages:
  /// - 8C32G:8 core 32GB
  /// - 16C70G:16 core 70GB
  /// - 32C180G:32 core 180GB
  final pulumi.Input<String> instanceClass;
  /// OceanBase cluster name.
  ///
  /// The length is 1 to 20 English or Chinese characters.
  ///
  /// If this parameter is not specified, the default value is the InstanceId of the cluster.
  final pulumi.Input<String>? instanceName;
  /// The number of nodes in the cluster. If the deployment mode is n-n-n, the number of nodes is n * 3
  final pulumi.Input<String>? nodeNum;
  /// The OceanBase Server version number.
  final pulumi.Input<String>? obVersion;
  /// The payment method of the instance. Value range:
  /// - Subscription: Package year and month. When you select this type of payment method, you must make sure that your account supports balance payment or credit payment. Otherwise, an InvalidPayMethod error message will be returned.
  /// - PayAsYouGo (default): Pay-as-you-go (default hourly billing).
  final pulumi.Input<String> paymentType;
  /// The duration of the resource purchase. The unit is specified by the PeriodUnit. The parameter InstanceChargeType takes effect only when the value is PrePaid and is required. Once the DedicatedHostId is specified, the value cannot exceed the subscription duration of the dedicated host. When PeriodUnit = Week, Period values: {"1", "2", "3", "4"}. When PeriodUnit = Month, Period values: {"1", "2", "3", "4", "5", "6", "7", "8", "9", "12", "24", "36", "48", "60"}.
  final pulumi.Input<int>? period;
  /// The duration of the purchase of resources.
  ///
  /// Package year and Month value range: Month.
  ///
  /// Default value: Month of the package, which is billed by volume. The default period is Hour.
  final pulumi.Input<String>? periodUnit;
  /// The ID of the primary instance.
  final pulumi.Input<String>? primaryInstance;
  /// The primary instance Region.
  final pulumi.Input<String>? primaryRegion;
  /// The ID of the enterprise resource group to which the instance resides.
  final pulumi.Input<String>? resourceGroupId;
  /// Series of OceanBase cluster instances-normal (default): Standard cluster version (cloud disk)-normal_SSD: Standard cluster version (local disk)-history: history Library cluster version.
  final pulumi.Input<String> series;
  /// Valid values:
  /// - false: migration and configuration change.
  /// - true: in-situ matching
  final pulumi.Input<bool>? upgradeSpecNative;
  /// Information about the zone where the cluster is deployed.
  final pulumi.Input<List<String>> zones;

  /// Creates a new [BaseInstanceArgs].
  /// [autoRenew] Whether to automatically renew.
  /// [autoRenewPeriod] The duration of each auto-renewal. When the value of the AutoRenew parameter is True, this parameter is required.
  /// [backupRetainMode] The backup retention policy after the cluster is deleted. The values are as follows:
  /// [cpuArch] Cpu architecture, x86, arm. If no, the default value is x86
  /// [diskSize] The size of the storage space, in GB.
  /// [diskType] The storage type of the cluster. Effective only in the standard cluster version (cloud disk).
  /// [instanceClass] Cluster specification information. Note Please enter the shape as xCxxG, not xCxxGB
  /// [instanceName] OceanBase cluster name.
  /// [nodeNum] The number of nodes in the cluster. If the deployment mode is n-n-n, the number of nodes is n * 3
  /// [obVersion] The OceanBase Server version number.
  /// [paymentType] The payment method of the instance. Value range:
  /// [period] The duration of the resource purchase. The unit is specified by the PeriodUnit. The parameter InstanceChargeType takes effect only when the value is PrePaid and is required. Once the DedicatedHostId is specified, the value cannot exceed the subscription duration of the dedicated host. When PeriodUnit = Week, Period values: {"1", "2", "3", "4"}. When PeriodUnit = Month, Period values: {"1", "2", "3", "4", "5", "6", "7", "8", "9", "12", "24", "36", "48", "60"}.
  /// [periodUnit] The duration of the purchase of resources.
  /// [primaryInstance] The ID of the primary instance.
  /// [primaryRegion] The primary instance Region.
  /// [resourceGroupId] The ID of the enterprise resource group to which the instance resides.
  /// [series] Series of OceanBase cluster instances-normal (default): Standard cluster version (cloud disk)-normal_SSD: Standard cluster version (local disk)-history: history Library cluster version.
  /// [upgradeSpecNative] Valid values:
  /// [zones] Information about the zone where the cluster is deployed.
  BaseInstanceArgs({
    this.autoRenew,
    this.autoRenewPeriod,
    this.backupRetainMode,
    this.cpuArch,
    required this.diskSize,
    this.diskType,
    required this.instanceClass,
    this.instanceName,
    this.nodeNum,
    this.obVersion,
    required this.paymentType,
    this.period,
    this.periodUnit,
    this.primaryInstance,
    this.primaryRegion,
    this.resourceGroupId,
    required this.series,
    this.upgradeSpecNative,
    required this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoRenew': ?autoRenew,
      'autoRenewPeriod': ?autoRenewPeriod,
      'backupRetainMode': ?backupRetainMode,
      'cpuArch': ?cpuArch,
      'diskSize': diskSize,
      'diskType': ?diskType,
      'instanceClass': instanceClass,
      'instanceName': ?instanceName,
      'nodeNum': ?nodeNum,
      'obVersion': ?obVersion,
      'paymentType': paymentType,
      'period': ?period,
      'periodUnit': ?periodUnit,
      'primaryInstance': ?primaryInstance,
      'primaryRegion': ?primaryRegion,
      'resourceGroupId': ?resourceGroupId,
      'series': series,
      'upgradeSpecNative': ?upgradeSpecNative,
      'zones': zones,
    };
  }

  factory BaseInstanceArgs.fromMap(Map<String, dynamic> map) {
    return BaseInstanceArgs(
      autoRenew: map['autoRenew'] == null ? null : (map['autoRenew'] as bool).input(),
      autoRenewPeriod: map['autoRenewPeriod'] == null ? null : (map['autoRenewPeriod'] as int).input(),
      backupRetainMode: map['backupRetainMode'] == null ? null : (map['backupRetainMode'] as String).input(),
      cpuArch: map['cpuArch'] == null ? null : (map['cpuArch'] as String).input(),
      diskSize: (map['diskSize'] as int).input(),
      diskType: map['diskType'] == null ? null : (map['diskType'] as String).input(),
      instanceClass: (map['instanceClass'] as String).input(),
      instanceName: map['instanceName'] == null ? null : (map['instanceName'] as String).input(),
      nodeNum: map['nodeNum'] == null ? null : (map['nodeNum'] as String).input(),
      obVersion: map['obVersion'] == null ? null : (map['obVersion'] as String).input(),
      paymentType: (map['paymentType'] as String).input(),
      period: map['period'] == null ? null : (map['period'] as int).input(),
      periodUnit: map['periodUnit'] == null ? null : (map['periodUnit'] as String).input(),
      primaryInstance: map['primaryInstance'] == null ? null : (map['primaryInstance'] as String).input(),
      primaryRegion: map['primaryRegion'] == null ? null : (map['primaryRegion'] as String).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId'] as String).input(),
      series: (map['series'] as String).input(),
      upgradeSpecNative: map['upgradeSpecNative'] == null ? null : (map['upgradeSpecNative'] as bool).input(),
      zones: ((map['zones'] as List).cast<String>()).input(),
    );
  }
}

