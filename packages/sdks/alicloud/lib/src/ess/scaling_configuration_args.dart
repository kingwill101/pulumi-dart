// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scaling_configuration_custom_priority.dart';
import 'scaling_configuration_data_disk.dart';
import 'scaling_configuration_instance_pattern_info.dart';
import 'scaling_configuration_instance_type_override.dart';
import 'scaling_configuration_network_interface.dart';
import 'scaling_configuration_spot_price_limit.dart';

/// {@template pulumi_ess_scaling_configuration_scaling_configuration_args_doc}
/// The set of arguments for ScalingConfiguration.
/// {@endtemplate}
/// {@macro pulumi_ess_scaling_configuration_scaling_configuration_args_doc}
class ScalingConfigurationArgs {
  /// Whether active current scaling configuration in the specified scaling group. Default to `false`.
  final pulumi.Input<bool>? active;
  /// Performance mode of the t5 burstable instance. Valid values: 'Standard', 'Unlimited'.
  final pulumi.Input<String>? creditSpecification;
  /// You can use CustomPriorities to specify the priority of a custom ECS instance type + vSwitch combination. See `custom_priorities` below for details.
  final pulumi.Input<List<ScalingConfigurationCustomPriority>>? customPriorities;
  /// DataDisk mappings to attach to ecs instance. See `data_disk` below for details.
  final pulumi.Input<List<ScalingConfigurationDataDisk>>? dataDisks;
  /// The ID of the dedicated host cluster.
  final pulumi.Input<String>? dedicatedHostClusterId;
  /// Specifies whether to enable the Release Protection feature for ECS instances. This parameter is applicable to only pay-as-you-go instances. You can use this parameter to specify whether an ECS instance can be directly released by using the ECS console or calling the DeleteInstance operation. Valid values: true, false. Default value: false.
  final pulumi.Input<bool>? deletionProtection;
  /// Whether enable the specified scaling group(make it active) to which the current scaling configuration belongs.
  final pulumi.Input<bool>? enable;
  /// The last scaling configuration will be deleted forcibly with deleting its scaling group. Default to false.
  final pulumi.Input<bool>? forceDelete;
  /// Hostname of an ECS instance.
  final pulumi.Input<String>? hostName;
  /// Specifies whether to enable the access channel for instance metadata. Valid values: enabled, disabled.
  final pulumi.Input<String>? httpEndpoint;
  /// ID of an image file, indicating the image resource selected when an instance is enabled.
  final pulumi.Input<String>? imageId;
  /// Name of an image file, indicating the image resource selected when an instance is enabled.
  final pulumi.Input<String>? imageName;
  /// Specifies whether to use ecs-user to log on to an ECS instance. For more information, see Manage the username used to log on to an ECS instance. Valid values: true, false. Default value: false.
  final pulumi.Input<bool>? imageOptionsLoginAsNonRoot;
  /// The description of ECS instances. The description must be 2 to 256 characters in length. It can contain letters but cannot start with http:// or https://.
  final pulumi.Input<String>? instanceDescription;
  /// It has been deprecated from version 1.6.0. New resource `alicloud.ess.Attachment` replaces it.
  final pulumi.Input<List<String>>? instanceIds;
  /// Name of an ECS instance. Default to "ESS-Instance". It is valid from version 1.7.1.
  final pulumi.Input<String>? instanceName;
  /// intelligent configuration mode. In this mode, you only need to specify the number of vCPUs, memory size, instance family, and maximum price. The system selects an instance type that is provided at the lowest price based on your configurations to create ECS instances. This mode is available only for scaling groups that reside in virtual private clouds (VPCs). This mode helps reduce the failures of scale-out activities caused by insufficient inventory of instance types.  See `instance_pattern_info` below for details.
  final pulumi.Input<List<ScalingConfigurationInstancePatternInfo>>? instancePatternInfos;
  /// Resource type of an ECS instance.
  final pulumi.Input<String>? instanceType;
  /// specify the weight of instance type.  See `instance_type_override` below for details.
  final pulumi.Input<List<ScalingConfigurationInstanceTypeOverride>>? instanceTypeOverrides;
  /// Resource types of an ECS instance.
  final pulumi.Input<List<String>>? instanceTypes;
  /// Network billing type, Values: PayByBandwidth or PayByTraffic. Default to `PayByBandwidth`.
  final pulumi.Input<String>? internetChargeType;
  /// Maximum incoming bandwidth from the public network, measured in Mbps (Mega bit per second).
  final pulumi.Input<int>? internetMaxBandwidthIn;
  /// Maximum outgoing bandwidth from the public network, measured in Mbps (Mega bit per second). The value range for PayByBandwidth is [0,1024].
  final pulumi.Input<int>? internetMaxBandwidthOut;
  /// It has been deprecated on instance resource. All the launched alicloud instances will be I/O optimized.
  final pulumi.Input<String>? ioOptimized;
  /// Whether to use outdated instance type. Default to false.
  final pulumi.Input<bool>? isOutdated;
  /// The name of key pair that can login ECS instance successfully without password. If it is specified, the password would be invalid.
  final pulumi.Input<String>? keyName;
  /// An KMS encrypts password used to a db account. If the `password` is filled in, this field will be ignored.
  final pulumi.Input<String>? kmsEncryptedPassword;
  /// An KMS encryption context used to decrypt `kms_encrypted_password` before creating or updating a db account with `kms_encrypted_password`. See [Encryption Context](https://www.alibabacloud.com/help/doc-detail/42975.htm). It is valid when `kms_encrypted_password` is set.
  final pulumi.Input<Map<String, String>>? kmsEncryptionContext;
  /// Specify NetworkInterfaces.N to configure primary and secondary ENIs. In this case, specify at least one primary ENI. If you set NetworkInterfaces.N.InstanceType to Primary, a primary ENI is configured. If you set NetworkInterfaces.N.InstanceType to Secondary or leave the parameter empty, a secondary ENI is configured. See `network_interfaces` below for details.
  final pulumi.Input<List<ScalingConfigurationNetworkInterface>>? networkInterfaces;
  /// Indicates whether to overwrite the existing data. Default to false.
  final pulumi.Input<bool>? override;
  /// The password of the ECS instance. The password must be 8 to 30 characters in length. It must contains at least three of the following character types: uppercase letters, lowercase letters, digits, and special characters. Special characters include `() ~!@#$%^&*-_+=\|{}[]:;'<>,.?/`, The password of Windows-based instances cannot start with a forward slash (/).
  final pulumi.Input<String>? password;
  /// Specifies whether to use the password that is predefined in the image. If the PasswordInherit parameter is set to true, the `password` and `kms_encrypted_password` will be ignored. You must ensure that the selected image has a password configured.
  final pulumi.Input<bool>? passwordInherit;
  /// ID of resource group.
  final pulumi.Input<String>? resourceGroupId;
  /// Instance RAM role name. The name is provided and maintained by RAM. You can use `alicloud.ram.Role` to create a new one.
  final pulumi.Input<String>? roleName;
  /// Name shown for the scheduled task. which must contain 2-64 characters (English or Chinese), starting with numbers, English letters or Chinese characters, and can contain number, underscores `_`, hypens `-`, and decimal point `.`. If this parameter value is not specified, the default value is ScalingConfigurationId.
  final pulumi.Input<String>? scalingConfigurationName;
  /// ID of the scaling group of a scaling configuration.
  final pulumi.Input<String> scalingGroupId;
  /// Specifies whether to enable Security Hardening. Valid values: Active, Deactive.
  final pulumi.Input<String>? securityEnhancementStrategy;
  /// ID of the security group used to create new instance. It is conflict with `security_group_ids`.
  final pulumi.Input<String>? securityGroupId;
  /// List IDs of the security group used to create new instances. It is conflict with `security_group_id`.
  final pulumi.Input<List<String>>? securityGroupIds;
  /// The protection period of preemptible instances. Unit: hours. Valid values: 1, 0.
  final pulumi.Input<int>? spotDuration;
  /// Sets the maximum price hourly for instance types. See `spot_price_limit` below for details.
  ///
  /// > **NOTE:** Before enabling the scaling group, it must have a active scaling configuration.
  ///
  /// > **NOTE:** If the number of attached ECS instances by `instance_ids` is smaller than MinSize, the Auto Scaling Service will automatically create ECS Pay-As-You-Go instance to cater to MinSize. For example, MinSize=5 and 2 existing ECS instances has been attached to the scaling group. When the scaling group is enabled, it will create 3 instnaces automatically based on its current active scaling configuration.
  ///
  /// > **NOTE:** Restrictions on attaching ECS instances:
  ///
  /// - The attached ECS instances and the scaling group must have the same region and network type(`Classic` or `VPC`).
  /// - The attached ECS instances and the instance with active scaling configurations must have the same instance type.
  /// - The attached ECS instances must in the running state.
  /// - The attached ECS instances has not been attached to other scaling groups.
  /// - The attached ECS instances supports Subscription and Pay-As-You-Go payment methods.
  ///
  /// > **NOTE:** The last scaling configuration can't be set to inactive and deleted alone.
  final pulumi.Input<List<ScalingConfigurationSpotPriceLimit>>? spotPriceLimits;
  /// The spot strategy for a Pay-As-You-Go instance. Valid values: `NoSpot`, `SpotAsPriceGo`, `SpotWithPriceLimit`.
  final pulumi.Input<String>? spotStrategy;
  /// The another scaling configuration which will be active automatically and replace current configuration when setting `active` to 'false'. It is invalid when `active` is 'true'.
  final pulumi.Input<String>? substitute;
  /// The id of auto snapshot policy for system disk.
  final pulumi.Input<String>? systemDiskAutoSnapshotPolicyId;
  /// Category of the system disk. The parameter value options are `ephemeral_ssd`, `cloud_efficiency`, `cloud_ssd`, `cloud_essd` and `cloud`. `cloud` only is used to some no I/O optimized instance. Default to `cloud_efficiency`.
  final pulumi.Input<String>? systemDiskCategory;
  /// The description of the system disk. The description must be 2 to 256 characters in length and cannot start with http:// or https://.
  final pulumi.Input<String>? systemDiskDescription;
  /// The algorithm that you want to use to encrypt the system disk. Valid values: AES-256, SM4-128.
  final pulumi.Input<String>? systemDiskEncryptAlgorithm;
  /// Whether to encrypt the system disk.
  final pulumi.Input<bool>? systemDiskEncrypted;
  /// The ID of the KMS key that you want to use to encrypt the system disk.
  final pulumi.Input<String>? systemDiskKmsKeyId;
  /// The name of the system disk. It must be 2 to 128 characters in length. It must start with a letter and cannot start with http:// or https://. It can contain letters, digits, colons (:), underscores (_), and hyphens (-). Default value: null.
  final pulumi.Input<String>? systemDiskName;
  /// The performance level of the ESSD used as the system disk.
  final pulumi.Input<String>? systemDiskPerformanceLevel;
  /// IOPS measures the number of read and write operations that an EBS device can process per second.
  final pulumi.Input<int>? systemDiskProvisionedIops;
  /// Size of system disk, in GiB. Valid values: Basic disk: 20 to 500, ESSD: The valid values depend on the performance level (PL) of the system disk (PL0 ESSD: 1 to 2048, PL1 ESSD: 20 to 2048, PL2 ESSD: 461 to 2048, PL3 ESSD: 1261 to 2048) , ESSD AutoPL disk: 1 to 2048, Other disk categories: 20 to 2048. The value of this parameter must be at least 1 and greater than or equal to the image size. Default value: 40 or the size of the image, whichever is larger.
  final pulumi.Input<int>? systemDiskSize;
  /// A mapping of tags to assign to the resource. It will be applied for ECS instances finally.
  /// - Key: It can be up to 64 characters in length. It cannot begin with "aliyun", "http://", or "https://". It cannot be a null string.
  /// - Value: It can be up to 128 characters in length. It cannot begin with "aliyun", "http://", or "https://" It can be a null string.
  final pulumi.Input<Map<String, String>>? tags;
  /// User-defined data to customize the startup behaviors of the ECS instance and to pass data into the ECS instance.
  final pulumi.Input<String>? userData;

  /// Creates a new [ScalingConfigurationArgs].
  /// [active] Whether active current scaling configuration in the specified scaling group. Default to `false`.
  /// [creditSpecification] Performance mode of the t5 burstable instance. Valid values: 'Standard', 'Unlimited'.
  /// [customPriorities] You can use CustomPriorities to specify the priority of a custom ECS instance type + vSwitch combination. See `custom_priorities` below for details.
  /// [dataDisks] DataDisk mappings to attach to ecs instance. See `data_disk` below for details.
  /// [dedicatedHostClusterId] The ID of the dedicated host cluster.
  /// [deletionProtection] Specifies whether to enable the Release Protection feature for ECS instances. This parameter is applicable to only pay-as-you-go instances. You can use this parameter to specify whether an ECS instance can be directly released by using the ECS console or calling the DeleteInstance operation. Valid values: true, false. Default value: false.
  /// [enable] Whether enable the specified scaling group(make it active) to which the current scaling configuration belongs.
  /// [forceDelete] The last scaling configuration will be deleted forcibly with deleting its scaling group. Default to false.
  /// [hostName] Hostname of an ECS instance.
  /// [httpEndpoint] Specifies whether to enable the access channel for instance metadata. Valid values: enabled, disabled.
  /// [imageId] ID of an image file, indicating the image resource selected when an instance is enabled.
  /// [imageName] Name of an image file, indicating the image resource selected when an instance is enabled.
  /// [imageOptionsLoginAsNonRoot] Specifies whether to use ecs-user to log on to an ECS instance. For more information, see Manage the username used to log on to an ECS instance. Valid values: true, false. Default value: false.
  /// [instanceDescription] The description of ECS instances. The description must be 2 to 256 characters in length. It can contain letters but cannot start with http:// or https://.
  /// [instanceIds] It has been deprecated from version 1.6.0. New resource `alicloud.ess.Attachment` replaces it.
  /// [instanceName] Name of an ECS instance. Default to "ESS-Instance". It is valid from version 1.7.1.
  /// [instancePatternInfos] intelligent configuration mode. In this mode, you only need to specify the number of vCPUs, memory size, instance family, and maximum price. The system selects an instance type that is provided at the lowest price based on your configurations to create ECS instances. This mode is available only for scaling groups that reside in virtual private clouds (VPCs). This mode helps reduce the failures of scale-out activities caused by insufficient inventory of instance types.  See `instance_pattern_info` below for details.
  /// [instanceType] Resource type of an ECS instance.
  /// [instanceTypeOverrides] specify the weight of instance type.  See `instance_type_override` below for details.
  /// [instanceTypes] Resource types of an ECS instance.
  /// [internetChargeType] Network billing type, Values: PayByBandwidth or PayByTraffic. Default to `PayByBandwidth`.
  /// [internetMaxBandwidthIn] Maximum incoming bandwidth from the public network, measured in Mbps (Mega bit per second).
  /// [internetMaxBandwidthOut] Maximum outgoing bandwidth from the public network, measured in Mbps (Mega bit per second). The value range for PayByBandwidth is [0,1024].
  /// [ioOptimized] It has been deprecated on instance resource. All the launched alicloud instances will be I/O optimized.
  /// [isOutdated] Whether to use outdated instance type. Default to false.
  /// [keyName] The name of key pair that can login ECS instance successfully without password. If it is specified, the password would be invalid.
  /// [kmsEncryptedPassword] An KMS encrypts password used to a db account. If the `password` is filled in, this field will be ignored.
  /// [kmsEncryptionContext] An KMS encryption context used to decrypt `kms_encrypted_password` before creating or updating a db account with `kms_encrypted_password`. See [Encryption Context](https://www.alibabacloud.com/help/doc-detail/42975.htm). It is valid when `kms_encrypted_password` is set.
  /// [networkInterfaces] Specify NetworkInterfaces.N to configure primary and secondary ENIs. In this case, specify at least one primary ENI. If you set NetworkInterfaces.N.InstanceType to Primary, a primary ENI is configured. If you set NetworkInterfaces.N.InstanceType to Secondary or leave the parameter empty, a secondary ENI is configured. See `network_interfaces` below for details.
  /// [override] Indicates whether to overwrite the existing data. Default to false.
  /// [password] The password of the ECS instance. The password must be 8 to 30 characters in length. It must contains at least three of the following character types: uppercase letters, lowercase letters, digits, and special characters. Special characters include `() ~!@#$%^&*-_+=\|{}[]:;'<>,.?/`, The password of Windows-based instances cannot start with a forward slash (/).
  /// [passwordInherit] Specifies whether to use the password that is predefined in the image. If the PasswordInherit parameter is set to true, the `password` and `kms_encrypted_password` will be ignored. You must ensure that the selected image has a password configured.
  /// [resourceGroupId] ID of resource group.
  /// [roleName] Instance RAM role name. The name is provided and maintained by RAM. You can use `alicloud.ram.Role` to create a new one.
  /// [scalingConfigurationName] Name shown for the scheduled task. which must contain 2-64 characters (English or Chinese), starting with numbers, English letters or Chinese characters, and can contain number, underscores `_`, hypens `-`, and decimal point `.`. If this parameter value is not specified, the default value is ScalingConfigurationId.
  /// [scalingGroupId] ID of the scaling group of a scaling configuration.
  /// [securityEnhancementStrategy] Specifies whether to enable Security Hardening. Valid values: Active, Deactive.
  /// [securityGroupId] ID of the security group used to create new instance. It is conflict with `security_group_ids`.
  /// [securityGroupIds] List IDs of the security group used to create new instances. It is conflict with `security_group_id`.
  /// [spotDuration] The protection period of preemptible instances. Unit: hours. Valid values: 1, 0.
  /// [spotPriceLimits] Sets the maximum price hourly for instance types. See `spot_price_limit` below for details.
  /// [spotStrategy] The spot strategy for a Pay-As-You-Go instance. Valid values: `NoSpot`, `SpotAsPriceGo`, `SpotWithPriceLimit`.
  /// [substitute] The another scaling configuration which will be active automatically and replace current configuration when setting `active` to 'false'. It is invalid when `active` is 'true'.
  /// [systemDiskAutoSnapshotPolicyId] The id of auto snapshot policy for system disk.
  /// [systemDiskCategory] Category of the system disk. The parameter value options are `ephemeral_ssd`, `cloud_efficiency`, `cloud_ssd`, `cloud_essd` and `cloud`. `cloud` only is used to some no I/O optimized instance. Default to `cloud_efficiency`.
  /// [systemDiskDescription] The description of the system disk. The description must be 2 to 256 characters in length and cannot start with http:// or https://.
  /// [systemDiskEncryptAlgorithm] The algorithm that you want to use to encrypt the system disk. Valid values: AES-256, SM4-128.
  /// [systemDiskEncrypted] Whether to encrypt the system disk.
  /// [systemDiskKmsKeyId] The ID of the KMS key that you want to use to encrypt the system disk.
  /// [systemDiskName] The name of the system disk. It must be 2 to 128 characters in length. It must start with a letter and cannot start with http:// or https://. It can contain letters, digits, colons (:), underscores (_), and hyphens (-). Default value: null.
  /// [systemDiskPerformanceLevel] The performance level of the ESSD used as the system disk.
  /// [systemDiskProvisionedIops] IOPS measures the number of read and write operations that an EBS device can process per second.
  /// [systemDiskSize] Size of system disk, in GiB. Valid values: Basic disk: 20 to 500, ESSD: The valid values depend on the performance level (PL) of the system disk (PL0 ESSD: 1 to 2048, PL1 ESSD: 20 to 2048, PL2 ESSD: 461 to 2048, PL3 ESSD: 1261 to 2048) , ESSD AutoPL disk: 1 to 2048, Other disk categories: 20 to 2048. The value of this parameter must be at least 1 and greater than or equal to the image size. Default value: 40 or the size of the image, whichever is larger.
  /// [tags] A mapping of tags to assign to the resource. It will be applied for ECS instances finally.
  /// [userData] User-defined data to customize the startup behaviors of the ECS instance and to pass data into the ECS instance.
  ScalingConfigurationArgs({
    this.active,
    this.creditSpecification,
    this.customPriorities,
    this.dataDisks,
    this.dedicatedHostClusterId,
    this.deletionProtection,
    this.enable,
    this.forceDelete,
    this.hostName,
    this.httpEndpoint,
    this.imageId,
    this.imageName,
    this.imageOptionsLoginAsNonRoot,
    this.instanceDescription,
    this.instanceIds,
    this.instanceName,
    this.instancePatternInfos,
    this.instanceType,
    this.instanceTypeOverrides,
    this.instanceTypes,
    this.internetChargeType,
    this.internetMaxBandwidthIn,
    this.internetMaxBandwidthOut,
    this.ioOptimized,
    this.isOutdated,
    this.keyName,
    this.kmsEncryptedPassword,
    this.kmsEncryptionContext,
    this.networkInterfaces,
    this.override,
    this.password,
    this.passwordInherit,
    this.resourceGroupId,
    this.roleName,
    this.scalingConfigurationName,
    required this.scalingGroupId,
    this.securityEnhancementStrategy,
    this.securityGroupId,
    this.securityGroupIds,
    this.spotDuration,
    this.spotPriceLimits,
    this.spotStrategy,
    this.substitute,
    this.systemDiskAutoSnapshotPolicyId,
    this.systemDiskCategory,
    this.systemDiskDescription,
    this.systemDiskEncryptAlgorithm,
    this.systemDiskEncrypted,
    this.systemDiskKmsKeyId,
    this.systemDiskName,
    this.systemDiskPerformanceLevel,
    this.systemDiskProvisionedIops,
    this.systemDiskSize,
    this.tags,
    this.userData,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'active': ?active,
      'creditSpecification': ?creditSpecification,
      'customPriorities': ?pulumi.Input.mapOptionalInputValue<List<ScalingConfigurationCustomPriority>, List<Map<String, dynamic>>>(customPriorities, (value) => pulumi.Input.encodeList<ScalingConfigurationCustomPriority, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dataDisks': ?pulumi.Input.mapOptionalInputValue<List<ScalingConfigurationDataDisk>, List<Map<String, dynamic>>>(dataDisks, (value) => pulumi.Input.encodeList<ScalingConfigurationDataDisk, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dedicatedHostClusterId': ?dedicatedHostClusterId,
      'deletionProtection': ?deletionProtection,
      'enable': ?enable,
      'forceDelete': ?forceDelete,
      'hostName': ?hostName,
      'httpEndpoint': ?httpEndpoint,
      'imageId': ?imageId,
      'imageName': ?imageName,
      'imageOptionsLoginAsNonRoot': ?imageOptionsLoginAsNonRoot,
      'instanceDescription': ?instanceDescription,
      'instanceIds': ?instanceIds,
      'instanceName': ?instanceName,
      'instancePatternInfos': ?pulumi.Input.mapOptionalInputValue<List<ScalingConfigurationInstancePatternInfo>, List<Map<String, dynamic>>>(instancePatternInfos, (value) => pulumi.Input.encodeList<ScalingConfigurationInstancePatternInfo, Map<String, dynamic>>(value, (value) => value.toMap())),
      'instanceType': ?instanceType,
      'instanceTypeOverrides': ?pulumi.Input.mapOptionalInputValue<List<ScalingConfigurationInstanceTypeOverride>, List<Map<String, dynamic>>>(instanceTypeOverrides, (value) => pulumi.Input.encodeList<ScalingConfigurationInstanceTypeOverride, Map<String, dynamic>>(value, (value) => value.toMap())),
      'instanceTypes': ?instanceTypes,
      'internetChargeType': ?internetChargeType,
      'internetMaxBandwidthIn': ?internetMaxBandwidthIn,
      'internetMaxBandwidthOut': ?internetMaxBandwidthOut,
      'ioOptimized': ?ioOptimized,
      'isOutdated': ?isOutdated,
      'keyName': ?keyName,
      'kmsEncryptedPassword': ?kmsEncryptedPassword,
      'kmsEncryptionContext': ?kmsEncryptionContext,
      'networkInterfaces': ?pulumi.Input.mapOptionalInputValue<List<ScalingConfigurationNetworkInterface>, List<Map<String, dynamic>>>(networkInterfaces, (value) => pulumi.Input.encodeList<ScalingConfigurationNetworkInterface, Map<String, dynamic>>(value, (value) => value.toMap())),
      'override': ?override,
      'password': ?password,
      'passwordInherit': ?passwordInherit,
      'resourceGroupId': ?resourceGroupId,
      'roleName': ?roleName,
      'scalingConfigurationName': ?scalingConfigurationName,
      'scalingGroupId': scalingGroupId,
      'securityEnhancementStrategy': ?securityEnhancementStrategy,
      'securityGroupId': ?securityGroupId,
      'securityGroupIds': ?securityGroupIds,
      'spotDuration': ?spotDuration,
      'spotPriceLimits': ?pulumi.Input.mapOptionalInputValue<List<ScalingConfigurationSpotPriceLimit>, List<Map<String, dynamic>>>(spotPriceLimits, (value) => pulumi.Input.encodeList<ScalingConfigurationSpotPriceLimit, Map<String, dynamic>>(value, (value) => value.toMap())),
      'spotStrategy': ?spotStrategy,
      'substitute': ?substitute,
      'systemDiskAutoSnapshotPolicyId': ?systemDiskAutoSnapshotPolicyId,
      'systemDiskCategory': ?systemDiskCategory,
      'systemDiskDescription': ?systemDiskDescription,
      'systemDiskEncryptAlgorithm': ?systemDiskEncryptAlgorithm,
      'systemDiskEncrypted': ?systemDiskEncrypted,
      'systemDiskKmsKeyId': ?systemDiskKmsKeyId,
      'systemDiskName': ?systemDiskName,
      'systemDiskPerformanceLevel': ?systemDiskPerformanceLevel,
      'systemDiskProvisionedIops': ?systemDiskProvisionedIops,
      'systemDiskSize': ?systemDiskSize,
      'tags': ?tags,
      'userData': ?userData,
    };
  }

  factory ScalingConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return ScalingConfigurationArgs(
      active: map['active'] == null ? null : (map['active'] as bool).input(),
      creditSpecification: map['creditSpecification'] == null ? null : (map['creditSpecification'] as String).input(),
      customPriorities: map['customPriorities'] == null ? null : (pulumi.Input.decodeList<ScalingConfigurationCustomPriority>(map['customPriorities'], (value) => ScalingConfigurationCustomPriority.fromMap((value as Map).cast<String, dynamic>()))).input(),
      dataDisks: map['dataDisks'] == null ? null : (pulumi.Input.decodeList<ScalingConfigurationDataDisk>(map['dataDisks'], (value) => ScalingConfigurationDataDisk.fromMap((value as Map).cast<String, dynamic>()))).input(),
      dedicatedHostClusterId: map['dedicatedHostClusterId'] == null ? null : (map['dedicatedHostClusterId'] as String).input(),
      deletionProtection: map['deletionProtection'] == null ? null : (map['deletionProtection'] as bool).input(),
      enable: map['enable'] == null ? null : (map['enable'] as bool).input(),
      forceDelete: map['forceDelete'] == null ? null : (map['forceDelete'] as bool).input(),
      hostName: map['hostName'] == null ? null : (map['hostName'] as String).input(),
      httpEndpoint: map['httpEndpoint'] == null ? null : (map['httpEndpoint'] as String).input(),
      imageId: map['imageId'] == null ? null : (map['imageId'] as String).input(),
      imageName: map['imageName'] == null ? null : (map['imageName'] as String).input(),
      imageOptionsLoginAsNonRoot: map['imageOptionsLoginAsNonRoot'] == null ? null : (map['imageOptionsLoginAsNonRoot'] as bool).input(),
      instanceDescription: map['instanceDescription'] == null ? null : (map['instanceDescription'] as String).input(),
      instanceIds: map['instanceIds'] == null ? null : ((map['instanceIds'] as List).cast<String>()).input(),
      instanceName: map['instanceName'] == null ? null : (map['instanceName'] as String).input(),
      instancePatternInfos: map['instancePatternInfos'] == null ? null : (pulumi.Input.decodeList<ScalingConfigurationInstancePatternInfo>(map['instancePatternInfos'], (value) => ScalingConfigurationInstancePatternInfo.fromMap((value as Map).cast<String, dynamic>()))).input(),
      instanceType: map['instanceType'] == null ? null : (map['instanceType'] as String).input(),
      instanceTypeOverrides: map['instanceTypeOverrides'] == null ? null : (pulumi.Input.decodeList<ScalingConfigurationInstanceTypeOverride>(map['instanceTypeOverrides'], (value) => ScalingConfigurationInstanceTypeOverride.fromMap((value as Map).cast<String, dynamic>()))).input(),
      instanceTypes: map['instanceTypes'] == null ? null : ((map['instanceTypes'] as List).cast<String>()).input(),
      internetChargeType: map['internetChargeType'] == null ? null : (map['internetChargeType'] as String).input(),
      internetMaxBandwidthIn: map['internetMaxBandwidthIn'] == null ? null : (map['internetMaxBandwidthIn'] as int).input(),
      internetMaxBandwidthOut: map['internetMaxBandwidthOut'] == null ? null : (map['internetMaxBandwidthOut'] as int).input(),
      ioOptimized: map['ioOptimized'] == null ? null : (map['ioOptimized'] as String).input(),
      isOutdated: map['isOutdated'] == null ? null : (map['isOutdated'] as bool).input(),
      keyName: map['keyName'] == null ? null : (map['keyName'] as String).input(),
      kmsEncryptedPassword: map['kmsEncryptedPassword'] == null ? null : (map['kmsEncryptedPassword'] as String).input(),
      kmsEncryptionContext: map['kmsEncryptionContext'] == null ? null : ((map['kmsEncryptionContext'] as Map).cast<String, String>()).input(),
      networkInterfaces: map['networkInterfaces'] == null ? null : (pulumi.Input.decodeList<ScalingConfigurationNetworkInterface>(map['networkInterfaces'], (value) => ScalingConfigurationNetworkInterface.fromMap((value as Map).cast<String, dynamic>()))).input(),
      override: map['override'] == null ? null : (map['override'] as bool).input(),
      password: map['password'] == null ? null : (map['password'] as String).input(),
      passwordInherit: map['passwordInherit'] == null ? null : (map['passwordInherit'] as bool).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId'] as String).input(),
      roleName: map['roleName'] == null ? null : (map['roleName'] as String).input(),
      scalingConfigurationName: map['scalingConfigurationName'] == null ? null : (map['scalingConfigurationName'] as String).input(),
      scalingGroupId: (map['scalingGroupId'] as String).input(),
      securityEnhancementStrategy: map['securityEnhancementStrategy'] == null ? null : (map['securityEnhancementStrategy'] as String).input(),
      securityGroupId: map['securityGroupId'] == null ? null : (map['securityGroupId'] as String).input(),
      securityGroupIds: map['securityGroupIds'] == null ? null : ((map['securityGroupIds'] as List).cast<String>()).input(),
      spotDuration: map['spotDuration'] == null ? null : (map['spotDuration'] as int).input(),
      spotPriceLimits: map['spotPriceLimits'] == null ? null : (pulumi.Input.decodeList<ScalingConfigurationSpotPriceLimit>(map['spotPriceLimits'], (value) => ScalingConfigurationSpotPriceLimit.fromMap((value as Map).cast<String, dynamic>()))).input(),
      spotStrategy: map['spotStrategy'] == null ? null : (map['spotStrategy'] as String).input(),
      substitute: map['substitute'] == null ? null : (map['substitute'] as String).input(),
      systemDiskAutoSnapshotPolicyId: map['systemDiskAutoSnapshotPolicyId'] == null ? null : (map['systemDiskAutoSnapshotPolicyId'] as String).input(),
      systemDiskCategory: map['systemDiskCategory'] == null ? null : (map['systemDiskCategory'] as String).input(),
      systemDiskDescription: map['systemDiskDescription'] == null ? null : (map['systemDiskDescription'] as String).input(),
      systemDiskEncryptAlgorithm: map['systemDiskEncryptAlgorithm'] == null ? null : (map['systemDiskEncryptAlgorithm'] as String).input(),
      systemDiskEncrypted: map['systemDiskEncrypted'] == null ? null : (map['systemDiskEncrypted'] as bool).input(),
      systemDiskKmsKeyId: map['systemDiskKmsKeyId'] == null ? null : (map['systemDiskKmsKeyId'] as String).input(),
      systemDiskName: map['systemDiskName'] == null ? null : (map['systemDiskName'] as String).input(),
      systemDiskPerformanceLevel: map['systemDiskPerformanceLevel'] == null ? null : (map['systemDiskPerformanceLevel'] as String).input(),
      systemDiskProvisionedIops: map['systemDiskProvisionedIops'] == null ? null : (map['systemDiskProvisionedIops'] as int).input(),
      systemDiskSize: map['systemDiskSize'] == null ? null : (map['systemDiskSize'] as int).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      userData: map['userData'] == null ? null : (map['userData'] as String).input(),
    );
  }
}

