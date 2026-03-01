// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering BaseInstance resources.
class BaseInstanceState {
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
  /// The product code of the OceanBase cluster._oceanbasepre_public_cn: Domestic station cloud database package Year-to-month package._oceanbasepost_public_cn: The domestic station cloud database is paid by the hour._obpre_public_intl: International Station Cloud Database Package Monthly Package.
  final pulumi.Input<String>? commodityCode;
  /// The number of CPU cores of the cluster.
  final pulumi.Input<int>? cpu;
  /// Cpu architecture, x86, arm. If no, the default value is x86
  final pulumi.Input<String>? cpuArch;
  /// The creation time of the resource
  final pulumi.Input<String>? createTime;
  /// The size of the storage space, in GB.
  ///
  /// The limits of storage space vary according to the cluster specifications, as follows:
  /// - 8C32GB:100GB ~ 10000GB
  /// - 14C70GB:200GB ~ 10000GB
  /// - 30C180GB:400GB ~ 10000GB
  /// - 62C400G:800GB ~ 10000GB.
  ///
  /// The default value of each package is its minimum value.
  final pulumi.Input<int>? diskSize;
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
  final pulumi.Input<String>? instanceClass;
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
  final pulumi.Input<String>? paymentType;
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
  final pulumi.Input<String>? series;
  /// The status of the resource
  final pulumi.Input<String>? status;
  /// Valid values:
  /// - false: migration and configuration change.
  /// - true: in-situ matching
  final pulumi.Input<bool>? upgradeSpecNative;
  /// Information about the zone where the cluster is deployed.
  final pulumi.Input<List<String>>? zones;

  /// Creates a new [BaseInstanceState].
  /// [autoRenew] Whether to automatically renew.
  /// [autoRenewPeriod] The duration of each auto-renewal. When the value of the AutoRenew parameter is True, this parameter is required.
  /// [backupRetainMode] The backup retention policy after the cluster is deleted. The values are as follows:
  /// [commodityCode] The product code of the OceanBase cluster._oceanbasepre_public_cn: Domestic station cloud database package Year-to-month package._oceanbasepost_public_cn: The domestic station cloud database is paid by the hour._obpre_public_intl: International Station Cloud Database Package Monthly Package.
  /// [cpu] The number of CPU cores of the cluster.
  /// [cpuArch] Cpu architecture, x86, arm. If no, the default value is x86
  /// [createTime] The creation time of the resource
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
  /// [status] The status of the resource
  /// [upgradeSpecNative] Valid values:
  /// [zones] Information about the zone where the cluster is deployed.
  BaseInstanceState({
    pulumi.Output<bool>? autoRenew,
    pulumi.Output<int>? autoRenewPeriod,
    pulumi.Output<String>? backupRetainMode,
    pulumi.Output<String>? commodityCode,
    pulumi.Output<int>? cpu,
    pulumi.Output<String>? cpuArch,
    pulumi.Output<String>? createTime,
    pulumi.Output<int>? diskSize,
    pulumi.Output<String>? diskType,
    pulumi.Output<String>? instanceClass,
    pulumi.Output<String>? instanceName,
    pulumi.Output<String>? nodeNum,
    pulumi.Output<String>? obVersion,
    pulumi.Output<String>? paymentType,
    pulumi.Output<int>? period,
    pulumi.Output<String>? periodUnit,
    pulumi.Output<String>? primaryInstance,
    pulumi.Output<String>? primaryRegion,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<String>? series,
    pulumi.Output<String>? status,
    pulumi.Output<bool>? upgradeSpecNative,
    pulumi.Output<List<String>>? zones,
  }) :
      autoRenew = pulumi.Input.asOptionalInput<bool>(autoRenew),
      autoRenewPeriod = pulumi.Input.asOptionalInput<int>(autoRenewPeriod),
      backupRetainMode = pulumi.Input.asOptionalInput<String>(backupRetainMode),
      commodityCode = pulumi.Input.asOptionalInput<String>(commodityCode),
      cpu = pulumi.Input.asOptionalInput<int>(cpu),
      cpuArch = pulumi.Input.asOptionalInput<String>(cpuArch),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      diskSize = pulumi.Input.asOptionalInput<int>(diskSize),
      diskType = pulumi.Input.asOptionalInput<String>(diskType),
      instanceClass = pulumi.Input.asOptionalInput<String>(instanceClass),
      instanceName = pulumi.Input.asOptionalInput<String>(instanceName),
      nodeNum = pulumi.Input.asOptionalInput<String>(nodeNum),
      obVersion = pulumi.Input.asOptionalInput<String>(obVersion),
      paymentType = pulumi.Input.asOptionalInput<String>(paymentType),
      period = pulumi.Input.asOptionalInput<int>(period),
      periodUnit = pulumi.Input.asOptionalInput<String>(periodUnit),
      primaryInstance = pulumi.Input.asOptionalInput<String>(primaryInstance),
      primaryRegion = pulumi.Input.asOptionalInput<String>(primaryRegion),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      series = pulumi.Input.asOptionalInput<String>(series),
      status = pulumi.Input.asOptionalInput<String>(status),
      upgradeSpecNative = pulumi.Input.asOptionalInput<bool>(upgradeSpecNative),
      zones = pulumi.Input.asOptionalInput<List<String>>(zones);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoRenew': ?autoRenew,
      'autoRenewPeriod': ?autoRenewPeriod,
      'backupRetainMode': ?backupRetainMode,
      'commodityCode': ?commodityCode,
      'cpu': ?cpu,
      'cpuArch': ?cpuArch,
      'createTime': ?createTime,
      'diskSize': ?diskSize,
      'diskType': ?diskType,
      'instanceClass': ?instanceClass,
      'instanceName': ?instanceName,
      'nodeNum': ?nodeNum,
      'obVersion': ?obVersion,
      'paymentType': ?paymentType,
      'period': ?period,
      'periodUnit': ?periodUnit,
      'primaryInstance': ?primaryInstance,
      'primaryRegion': ?primaryRegion,
      'resourceGroupId': ?resourceGroupId,
      'series': ?series,
      'status': ?status,
      'upgradeSpecNative': ?upgradeSpecNative,
      'zones': ?zones,
    };
  }

  factory BaseInstanceState.fromMap(Map<String, dynamic> map) {
    return BaseInstanceState(
      autoRenew: map['autoRenew'] == null ? null : pulumi.Output.create<bool>(map['autoRenew'] as bool),
      autoRenewPeriod: map['autoRenewPeriod'] == null ? null : pulumi.Output.create<int>(map['autoRenewPeriod'] as int),
      backupRetainMode: map['backupRetainMode'] == null ? null : pulumi.Output.create<String>(map['backupRetainMode'] as String),
      commodityCode: map['commodityCode'] == null ? null : pulumi.Output.create<String>(map['commodityCode'] as String),
      cpu: map['cpu'] == null ? null : pulumi.Output.create<int>(map['cpu'] as int),
      cpuArch: map['cpuArch'] == null ? null : pulumi.Output.create<String>(map['cpuArch'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      diskSize: map['diskSize'] == null ? null : pulumi.Output.create<int>(map['diskSize'] as int),
      diskType: map['diskType'] == null ? null : pulumi.Output.create<String>(map['diskType'] as String),
      instanceClass: map['instanceClass'] == null ? null : pulumi.Output.create<String>(map['instanceClass'] as String),
      instanceName: map['instanceName'] == null ? null : pulumi.Output.create<String>(map['instanceName'] as String),
      nodeNum: map['nodeNum'] == null ? null : pulumi.Output.create<String>(map['nodeNum'] as String),
      obVersion: map['obVersion'] == null ? null : pulumi.Output.create<String>(map['obVersion'] as String),
      paymentType: map['paymentType'] == null ? null : pulumi.Output.create<String>(map['paymentType'] as String),
      period: map['period'] == null ? null : pulumi.Output.create<int>(map['period'] as int),
      periodUnit: map['periodUnit'] == null ? null : pulumi.Output.create<String>(map['periodUnit'] as String),
      primaryInstance: map['primaryInstance'] == null ? null : pulumi.Output.create<String>(map['primaryInstance'] as String),
      primaryRegion: map['primaryRegion'] == null ? null : pulumi.Output.create<String>(map['primaryRegion'] as String),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      series: map['series'] == null ? null : pulumi.Output.create<String>(map['series'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      upgradeSpecNative: map['upgradeSpecNative'] == null ? null : pulumi.Output.create<bool>(map['upgradeSpecNative'] as bool),
      zones: map['zones'] == null ? null : pulumi.Output.create<List<String>>((map['zones'] as List).cast<String>()),
    );
  }
}

