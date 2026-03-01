// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_scaling_configurations_configuration_data_disk.dart';
import 'get_scaling_configurations_configuration_instance_pattern_info.dart';
import 'get_scaling_configurations_configuration_spot_price_limit.dart';

class GetScalingConfigurationsConfiguration {
  /// Creation time of the scaling configuration.
  final String creationTime;
  /// Performance mode of the t5 burstable instance.
  final String creditSpecification;
  /// Data disks of the scaling configuration.
  final List<GetScalingConfigurationsConfigurationDataDisk> dataDisks;
  /// (Optional,Available since v1.143.0) Hostname of an ECS instance.
  final String hostName;
  /// ID of the scaling rule.
  final String id;
  /// Image ID of the scaling configuration.
  final String imageId;
  /// (Optional,Available since v1.143.0) InstanceName of an ECS instance.
  final String instanceName;
  /// (Optional, Available since v1.240.0) intelligent configuration mode. In this mode, you only need to specify the number of vCPUs, memory size, instance family, and maximum price. The system selects an instance type that is provided at the lowest price based on your configurations to create ECS instances. This mode is available only for scaling groups that reside in virtual private clouds (VPCs). This mode helps reduce the failures of scale-out activities caused by insufficient inventory of instance types.
  final List<GetScalingConfigurationsConfigurationInstancePatternInfo> instancePatternInfos;
  /// Resource type of an ECS instance.
  final String instanceType;
  /// Internet charge type of the scaling configuration.
  final String internetChargeType;
  /// Internet max bandwidth in of the scaling configuration.
  final int internetMaxBandwidthIn;
  /// Internet max bandwidth of the scaling configuration.
  final int internetMaxBandwidthOut;
  /// Lifecycle state of the scaling configuration.
  final String lifecycleState;
  /// Name of the scaling configuration.
  final String name;
  /// Scaling group id the scaling configurations belong to.
  final String scalingGroupId;
  /// Security group ID of the scaling configuration.
  final String securityGroupId;
  /// (Optional, Available since v1.151.0) The maximum price hourly for instance types.
  final List<GetScalingConfigurationsConfigurationSpotPriceLimit> spotPriceLimits;
  /// (Optional, Available since v1.151.0) The spot strategy for a Pay-As-You-Go instance.
  final String spotStrategy;
  /// System disk category of the scaling configuration.
  final String systemDiskCategory;
  /// The performance level of the ESSD used as the system disk.
  final String systemDiskPerformanceLevel;
  /// System disk size of the scaling configuration.
  final int systemDiskSize;

  /// Creates a new [GetScalingConfigurationsConfiguration].
  /// [creationTime] Creation time of the scaling configuration.
  /// [creditSpecification] Performance mode of the t5 burstable instance.
  /// [dataDisks] Data disks of the scaling configuration.
  /// [hostName] (Optional,Available since v1.143.0) Hostname of an ECS instance.
  /// [id] ID of the scaling rule.
  /// [imageId] Image ID of the scaling configuration.
  /// [instanceName] (Optional,Available since v1.143.0) InstanceName of an ECS instance.
  /// [instancePatternInfos] (Optional, Available since v1.240.0) intelligent configuration mode. In this mode, you only need to specify the number of vCPUs, memory size, instance family, and maximum price. The system selects an instance type that is provided at the lowest price based on your configurations to create ECS instances. This mode is available only for scaling groups that reside in virtual private clouds (VPCs). This mode helps reduce the failures of scale-out activities caused by insufficient inventory of instance types.
  /// [instanceType] Resource type of an ECS instance.
  /// [internetChargeType] Internet charge type of the scaling configuration.
  /// [internetMaxBandwidthIn] Internet max bandwidth in of the scaling configuration.
  /// [internetMaxBandwidthOut] Internet max bandwidth of the scaling configuration.
  /// [lifecycleState] Lifecycle state of the scaling configuration.
  /// [name] Name of the scaling configuration.
  /// [scalingGroupId] Scaling group id the scaling configurations belong to.
  /// [securityGroupId] Security group ID of the scaling configuration.
  /// [spotPriceLimits] (Optional, Available since v1.151.0) The maximum price hourly for instance types.
  /// [spotStrategy] (Optional, Available since v1.151.0) The spot strategy for a Pay-As-You-Go instance.
  /// [systemDiskCategory] System disk category of the scaling configuration.
  /// [systemDiskPerformanceLevel] The performance level of the ESSD used as the system disk.
  /// [systemDiskSize] System disk size of the scaling configuration.
  GetScalingConfigurationsConfiguration({
    required this.creationTime,
    required this.creditSpecification,
    required this.dataDisks,
    required this.hostName,
    required this.id,
    required this.imageId,
    required this.instanceName,
    required this.instancePatternInfos,
    required this.instanceType,
    required this.internetChargeType,
    required this.internetMaxBandwidthIn,
    required this.internetMaxBandwidthOut,
    required this.lifecycleState,
    required this.name,
    required this.scalingGroupId,
    required this.securityGroupId,
    required this.spotPriceLimits,
    required this.spotStrategy,
    required this.systemDiskCategory,
    required this.systemDiskPerformanceLevel,
    required this.systemDiskSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'creationTime': creationTime,
      'creditSpecification': creditSpecification,
      'dataDisks': pulumi.Input.encodeList<GetScalingConfigurationsConfigurationDataDisk, Map<String, dynamic>>(dataDisks, (value) => value.toMap()),
      'hostName': hostName,
      'id': id,
      'imageId': imageId,
      'instanceName': instanceName,
      'instancePatternInfos': pulumi.Input.encodeList<GetScalingConfigurationsConfigurationInstancePatternInfo, Map<String, dynamic>>(instancePatternInfos, (value) => value.toMap()),
      'instanceType': instanceType,
      'internetChargeType': internetChargeType,
      'internetMaxBandwidthIn': internetMaxBandwidthIn,
      'internetMaxBandwidthOut': internetMaxBandwidthOut,
      'lifecycleState': lifecycleState,
      'name': name,
      'scalingGroupId': scalingGroupId,
      'securityGroupId': securityGroupId,
      'spotPriceLimits': pulumi.Input.encodeList<GetScalingConfigurationsConfigurationSpotPriceLimit, Map<String, dynamic>>(spotPriceLimits, (value) => value.toMap()),
      'spotStrategy': spotStrategy,
      'systemDiskCategory': systemDiskCategory,
      'systemDiskPerformanceLevel': systemDiskPerformanceLevel,
      'systemDiskSize': systemDiskSize,
    };
  }

  factory GetScalingConfigurationsConfiguration.fromMap(Map<String, dynamic> map) {
    return GetScalingConfigurationsConfiguration(
      creationTime: map['creationTime'] as String,
      creditSpecification: map['creditSpecification'] as String,
      dataDisks: pulumi.Input.decodeList<GetScalingConfigurationsConfigurationDataDisk>(map['dataDisks'], (value) => GetScalingConfigurationsConfigurationDataDisk.fromMap((value as Map).cast<String, dynamic>())),
      hostName: map['hostName'] as String,
      id: map['id'] as String,
      imageId: map['imageId'] as String,
      instanceName: map['instanceName'] as String,
      instancePatternInfos: pulumi.Input.decodeList<GetScalingConfigurationsConfigurationInstancePatternInfo>(map['instancePatternInfos'], (value) => GetScalingConfigurationsConfigurationInstancePatternInfo.fromMap((value as Map).cast<String, dynamic>())),
      instanceType: map['instanceType'] as String,
      internetChargeType: map['internetChargeType'] as String,
      internetMaxBandwidthIn: map['internetMaxBandwidthIn'] as int,
      internetMaxBandwidthOut: map['internetMaxBandwidthOut'] as int,
      lifecycleState: map['lifecycleState'] as String,
      name: map['name'] as String,
      scalingGroupId: map['scalingGroupId'] as String,
      securityGroupId: map['securityGroupId'] as String,
      spotPriceLimits: pulumi.Input.decodeList<GetScalingConfigurationsConfigurationSpotPriceLimit>(map['spotPriceLimits'], (value) => GetScalingConfigurationsConfigurationSpotPriceLimit.fromMap((value as Map).cast<String, dynamic>())),
      spotStrategy: map['spotStrategy'] as String,
      systemDiskCategory: map['systemDiskCategory'] as String,
      systemDiskPerformanceLevel: map['systemDiskPerformanceLevel'] as String,
      systemDiskSize: map['systemDiskSize'] as int,
    );
  }
}

