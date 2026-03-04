// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_scaling_configurations_configuration_data_disk.dart';
import 'get_scaling_configurations_configuration_instance_pattern_info.dart';
import 'get_scaling_configurations_configuration_spot_price_limit.dart';

class GetScalingConfigurationsConfiguration {
  /// Creation time of the scaling configuration.
  final pulumi.Input<String> creationTime;

  /// Performance mode of the t5 burstable instance.
  final pulumi.Input<String> creditSpecification;

  /// Data disks of the scaling configuration.
  final pulumi.Input<List<GetScalingConfigurationsConfigurationDataDisk>>
  dataDisks;

  /// (Optional,Available since v1.143.0) Hostname of an ECS instance.
  final pulumi.Input<String> hostName;

  /// ID of the scaling rule.
  final pulumi.Input<String> id;

  /// Image ID of the scaling configuration.
  final pulumi.Input<String> imageId;

  /// (Optional,Available since v1.143.0) InstanceName of an ECS instance.
  final pulumi.Input<String> instanceName;

  /// (Optional, Available since v1.240.0) intelligent configuration mode. In this mode, you only need to specify the number of vCPUs, memory size, instance family, and maximum price. The system selects an instance type that is provided at the lowest price based on your configurations to create ECS instances. This mode is available only for scaling groups that reside in virtual private clouds (VPCs). This mode helps reduce the failures of scale-out activities caused by insufficient inventory of instance types.
  final pulumi.Input<
    List<GetScalingConfigurationsConfigurationInstancePatternInfo>
  >
  instancePatternInfos;

  /// Resource type of an ECS instance.
  final pulumi.Input<String> instanceType;

  /// Internet charge type of the scaling configuration.
  final pulumi.Input<String> internetChargeType;

  /// Internet max bandwidth in of the scaling configuration.
  final pulumi.Input<int> internetMaxBandwidthIn;

  /// Internet max bandwidth of the scaling configuration.
  final pulumi.Input<int> internetMaxBandwidthOut;

  /// Lifecycle state of the scaling configuration.
  final pulumi.Input<String> lifecycleState;

  /// Name of the scaling configuration.
  final pulumi.Input<String> name;

  /// Scaling group id the scaling configurations belong to.
  final pulumi.Input<String> scalingGroupId;

  /// Security group ID of the scaling configuration.
  final pulumi.Input<String> securityGroupId;

  /// (Optional, Available since v1.151.0) The maximum price hourly for instance types.
  final pulumi.Input<List<GetScalingConfigurationsConfigurationSpotPriceLimit>>
  spotPriceLimits;

  /// (Optional, Available since v1.151.0) The spot strategy for a Pay-As-You-Go instance.
  final pulumi.Input<String> spotStrategy;

  /// System disk category of the scaling configuration.
  final pulumi.Input<String> systemDiskCategory;

  /// The performance level of the ESSD used as the system disk.
  final pulumi.Input<String> systemDiskPerformanceLevel;

  /// System disk size of the scaling configuration.
  final pulumi.Input<int> systemDiskSize;

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
      'dataDisks':
          pulumi.Input.mapInputValue<
            List<GetScalingConfigurationsConfigurationDataDisk>,
            List<Map<String, dynamic>>
          >(
            dataDisks,
            (value) =>
                pulumi.Input.encodeList<
                  GetScalingConfigurationsConfigurationDataDisk,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'hostName': hostName,
      'id': id,
      'imageId': imageId,
      'instanceName': instanceName,
      'instancePatternInfos':
          pulumi.Input.mapInputValue<
            List<GetScalingConfigurationsConfigurationInstancePatternInfo>,
            List<Map<String, dynamic>>
          >(
            instancePatternInfos,
            (value) =>
                pulumi.Input.encodeList<
                  GetScalingConfigurationsConfigurationInstancePatternInfo,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'instanceType': instanceType,
      'internetChargeType': internetChargeType,
      'internetMaxBandwidthIn': internetMaxBandwidthIn,
      'internetMaxBandwidthOut': internetMaxBandwidthOut,
      'lifecycleState': lifecycleState,
      'name': name,
      'scalingGroupId': scalingGroupId,
      'securityGroupId': securityGroupId,
      'spotPriceLimits':
          pulumi.Input.mapInputValue<
            List<GetScalingConfigurationsConfigurationSpotPriceLimit>,
            List<Map<String, dynamic>>
          >(
            spotPriceLimits,
            (value) =>
                pulumi.Input.encodeList<
                  GetScalingConfigurationsConfigurationSpotPriceLimit,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'spotStrategy': spotStrategy,
      'systemDiskCategory': systemDiskCategory,
      'systemDiskPerformanceLevel': systemDiskPerformanceLevel,
      'systemDiskSize': systemDiskSize,
    };
  }

  factory GetScalingConfigurationsConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetScalingConfigurationsConfiguration(
      creationTime: pulumi.Input.fromValue(map['creationTime'] as String),
      creditSpecification: pulumi.Input.fromValue(
        map['creditSpecification'] as String,
      ),
      dataDisks: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetScalingConfigurationsConfigurationDataDisk>(
          map['dataDisks']!,
          (value) => GetScalingConfigurationsConfigurationDataDisk.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      hostName: pulumi.Input.fromValue(map['hostName'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      imageId: pulumi.Input.fromValue(map['imageId'] as String),
      instanceName: pulumi.Input.fromValue(map['instanceName'] as String),
      instancePatternInfos: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          GetScalingConfigurationsConfigurationInstancePatternInfo
        >(
          map['instancePatternInfos']!,
          (value) =>
              GetScalingConfigurationsConfigurationInstancePatternInfo.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
        ),
      ),
      instanceType: pulumi.Input.fromValue(map['instanceType'] as String),
      internetChargeType: pulumi.Input.fromValue(
        map['internetChargeType'] as String,
      ),
      internetMaxBandwidthIn: pulumi.Input.fromValue(
        map['internetMaxBandwidthIn'] as int,
      ),
      internetMaxBandwidthOut: pulumi.Input.fromValue(
        map['internetMaxBandwidthOut'] as int,
      ),
      lifecycleState: pulumi.Input.fromValue(map['lifecycleState'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      scalingGroupId: pulumi.Input.fromValue(map['scalingGroupId'] as String),
      securityGroupId: pulumi.Input.fromValue(map['securityGroupId'] as String),
      spotPriceLimits: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          GetScalingConfigurationsConfigurationSpotPriceLimit
        >(
          map['spotPriceLimits']!,
          (value) =>
              GetScalingConfigurationsConfigurationSpotPriceLimit.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
        ),
      ),
      spotStrategy: pulumi.Input.fromValue(map['spotStrategy'] as String),
      systemDiskCategory: pulumi.Input.fromValue(
        map['systemDiskCategory'] as String,
      ),
      systemDiskPerformanceLevel: pulumi.Input.fromValue(
        map['systemDiskPerformanceLevel'] as String,
      ),
      systemDiskSize: pulumi.Input.fromValue(map['systemDiskSize'] as int),
    );
  }
}
