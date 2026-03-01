// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ecs_instance_set_data_disk.dart';
import 'ecs_instance_set_exclude_instance_filter.dart';
import 'ecs_instance_set_network_interface.dart';

/// {@template pulumi_ecs_ecs_instance_set_ecs_instance_set_args_doc}
/// The set of arguments for EcsInstanceSet.
/// {@endtemplate}
/// {@macro pulumi_ecs_ecs_instance_set_ecs_instance_set_args_doc}
class EcsInstanceSetArgs {
  /// The number of instances that you want to create. Valid values: `1` to `100`.
  final pulumi.Input<int>? amount;
  /// The automatic release time of the `PostPaid` instance.
  final pulumi.Input<String>? autoReleaseTime;
  /// Whether to enable auto-renewal for the instance. **Note:** `auto_renew` is valid only when `instance_charge_type` is set to `PrePaid`.
  final pulumi.Input<bool>? autoRenew;
  /// Auto renewal period of an instance, in the unit of month. Valid values:
  /// - When `period_unit` is `Month`, Valid values: `1`, `2`, `3`, `6`, `12`.
  /// - When `period_unit` is `Week`, Valid values: `1`, `2`, `3`.
  /// **Note:** `auto_renew_period` is valid only when `instance_charge_type` is set to `PrePaid`.
  final pulumi.Input<int>? autoRenewPeriod;
  /// Indicate how to check instance ready to use. Valid values:
  final pulumi.Input<bool>? bootCheckOsWithAssistant;
  /// The list of data disks created with instance. See `data_disks` below.
  final pulumi.Input<List<EcsInstanceSetDataDisk>>? dataDisks;
  /// The ID of the dedicated host on which to create the instance. If the `dedicated_host_id` is specified, the `spot_strategy` and `spot_price_limit`  are ignored. This is because preemptible instances cannot be created on dedicated hosts.
  final pulumi.Input<String>? dedicatedHostId;
  /// Whether to enable release protection for the instance.
  final pulumi.Input<bool>? deletionProtection;
  /// The ID of the deployment set to which to deploy the instance.
  final pulumi.Input<String>? deploymentSetId;
  /// The description of the instance, This description can have a string of 2 to 256 characters, It cannot begin with `http://` or `https://`.
  final pulumi.Input<String>? description;
  /// The instances that need to be excluded from the Instance Set.  See `exclude_instance_filter` below.
  final pulumi.Input<EcsInstanceSetExcludeInstanceFilter>? excludeInstanceFilter;
  /// The hostname of instance.
  final pulumi.Input<String>? hostName;
  /// The ID of the Elastic High Performance Computing (E-HPC) cluster to which to assign the instance.
  final pulumi.Input<String>? hpcClusterId;
  /// The Image to use for the instance.
  final pulumi.Input<String> imageId;
  /// The billing method of the instance. Valid values: `PrePaid`, `PostPaid`.
  final pulumi.Input<String>? instanceChargeType;
  /// The name of the ECS. This instance_name can have a string of 2 to 128 characters, must contain only alphanumeric characters or hyphens, such as "-",".","_", and must not begin with a hyphen, and must not begin with `http://` or `https://`.
  final pulumi.Input<String>? instanceName;
  /// The type of instance to start.
  final pulumi.Input<String> instanceType;
  /// The Internet charge type of the instance. Valid values: `PayByBandwidth`, `PayByTraffic`.
  final pulumi.Input<String>? internetChargeType;
  /// The Maximum outgoing bandwidth to the public network, measured in Mbps (Mega bit per second). Valid values: `1` to `100`.
  final pulumi.Input<int>? internetMaxBandwidthOut;
  /// The name of key pair that can login ECS instance successfully without password.
  final pulumi.Input<String>? keyPairName;
  /// The ID of the launch template.
  final pulumi.Input<String>? launchTemplateId;
  /// The name of the launch template. To use a launch template to create an instance, you must use the `launch_template_id` or `launch_template_name` parameter to specify the launch template.
  final pulumi.Input<String>? launchTemplateName;
  /// The version of the launch template.
  final pulumi.Input<String>? launchTemplateVersion;
  /// A list of NetworkInterface. See `network_interfaces` below.
  final pulumi.Input<List<EcsInstanceSetNetworkInterface>>? networkInterfaces;
  /// The password to an instance is a string of 8 to 30 characters. It must contain uppercase/lowercase letters and numerals, but cannot contain special symbols.
  final pulumi.Input<String>? password;
  /// Whether to use the password preset in the image.
  final pulumi.Input<bool>? passwordInherit;
  /// The duration that you will buy the resource, in month. Valid values:
  /// - When `period_unit` is `Month`, Valid values: `1`, `2`, `3`, `4`, `5`, `6`, `7`, `8`, `9`, `12`, `24`, `36`, `48`, `60`.
  /// - When `period_unit` is `Week`, Valid values: `1`, `2`, `3`.
  /// **Note:** `period` is valid only when `instance_charge_type` is set to `PrePaid`.
  final pulumi.Input<int>? period;
  /// The duration unit that you will buy the resource. Valid values: `Week`, `Month`. **Note:** `period_unit` is valid only when `instance_charge_type` is set to `PrePaid`.
  final pulumi.Input<String>? periodUnit;
  /// The Instance RAM role name.
  final pulumi.Input<String>? ramRoleName;
  /// The ID of resource group which the instance belongs.
  final pulumi.Input<String>? resourceGroupId;
  /// The security enhancement strategy. Valid values:
  /// - `Active`: Enable security enhancement strategy, it only works on system images.
  /// - `Deactive`: Disable security enhancement strategy, it works on all images.
  final pulumi.Input<String>? securityEnhancementStrategy;
  /// A list of security group ids to associate with.
  final pulumi.Input<List<String>> securityGroupIds;
  /// The hourly price threshold of a instance. Three decimals is allowed at most. **Note:** `spot_price_limit` takes effect only if `spot_strategy` is set to `SpotWithPriceLimit`.
  final pulumi.Input<double>? spotPriceLimit;
  /// The spot strategy of a Pay-As-You-Go instance. Valid values:
  /// - `NoSpot`: A regular Pay-As-You-Go instance.
  /// - `SpotWithPriceLimit`: A price threshold for a spot instance.
  /// - `SpotAsPriceGo`: A price that is based on the highest Pay-As-You-Go instance.
  /// **Note:** `spot_strategy` takes effect only if `instance_charge_type` is set to `PostPaid`.
  final pulumi.Input<String>? spotStrategy;
  /// The ID of the automatic snapshot policy applied to the system disk.
  final pulumi.Input<String>? systemDiskAutoSnapshotPolicyId;
  /// The category of the system disk. Valid values: `cloud_efficiency`, `cloud_ssd`, `cloud_essd`, `cloud`.
  final pulumi.Input<String>? systemDiskCategory;
  /// The description of the system disk. The description must be 2 to 256 characters in length and cannot start with `http://` or `https://`.
  final pulumi.Input<String>? systemDiskDescription;
  /// The name of the system disk.
  final pulumi.Input<String>? systemDiskName;
  /// The performance level of the ESSD used as the system disk. Valid values: `PL0`, `PL1`, `PL2`, `PL3`.
  final pulumi.Input<String>? systemDiskPerformanceLevel;
  /// The size of the system disk, measured in GiB. Valid values: `20` to `500`.
  final pulumi.Input<int>? systemDiskSize;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// Whether to automatically append incremental suffixes to the hostname specified by the HostName parameter and to the instance name specified by the InstanceName parameter when you batch create instances. The incremental suffixes can range from `001` to `999`.
  final pulumi.Input<bool>? uniqueSuffix;
  /// The virtual switch ID to launch in VPC.
  final pulumi.Input<String>? vswitchId;
  /// The ID of the zone in which to create the instance.
  final pulumi.Input<String>? zoneId;

  /// Creates a new [EcsInstanceSetArgs].
  /// [amount] The number of instances that you want to create. Valid values: `1` to `100`.
  /// [autoReleaseTime] The automatic release time of the `PostPaid` instance.
  /// [autoRenew] Whether to enable auto-renewal for the instance. **Note:** `auto_renew` is valid only when `instance_charge_type` is set to `PrePaid`.
  /// [autoRenewPeriod] Auto renewal period of an instance, in the unit of month. Valid values:
  /// [bootCheckOsWithAssistant] Indicate how to check instance ready to use. Valid values:
  /// [dataDisks] The list of data disks created with instance. See `data_disks` below.
  /// [dedicatedHostId] The ID of the dedicated host on which to create the instance. If the `dedicated_host_id` is specified, the `spot_strategy` and `spot_price_limit`  are ignored. This is because preemptible instances cannot be created on dedicated hosts.
  /// [deletionProtection] Whether to enable release protection for the instance.
  /// [deploymentSetId] The ID of the deployment set to which to deploy the instance.
  /// [description] The description of the instance, This description can have a string of 2 to 256 characters, It cannot begin with `http://` or `https://`.
  /// [excludeInstanceFilter] The instances that need to be excluded from the Instance Set.  See `exclude_instance_filter` below.
  /// [hostName] The hostname of instance.
  /// [hpcClusterId] The ID of the Elastic High Performance Computing (E-HPC) cluster to which to assign the instance.
  /// [imageId] The Image to use for the instance.
  /// [instanceChargeType] The billing method of the instance. Valid values: `PrePaid`, `PostPaid`.
  /// [instanceName] The name of the ECS. This instance_name can have a string of 2 to 128 characters, must contain only alphanumeric characters or hyphens, such as "-",".","_", and must not begin with a hyphen, and must not begin with `http://` or `https://`.
  /// [instanceType] The type of instance to start.
  /// [internetChargeType] The Internet charge type of the instance. Valid values: `PayByBandwidth`, `PayByTraffic`.
  /// [internetMaxBandwidthOut] The Maximum outgoing bandwidth to the public network, measured in Mbps (Mega bit per second). Valid values: `1` to `100`.
  /// [keyPairName] The name of key pair that can login ECS instance successfully without password.
  /// [launchTemplateId] The ID of the launch template.
  /// [launchTemplateName] The name of the launch template. To use a launch template to create an instance, you must use the `launch_template_id` or `launch_template_name` parameter to specify the launch template.
  /// [launchTemplateVersion] The version of the launch template.
  /// [networkInterfaces] A list of NetworkInterface. See `network_interfaces` below.
  /// [password] The password to an instance is a string of 8 to 30 characters. It must contain uppercase/lowercase letters and numerals, but cannot contain special symbols.
  /// [passwordInherit] Whether to use the password preset in the image.
  /// [period] The duration that you will buy the resource, in month. Valid values:
  /// [periodUnit] The duration unit that you will buy the resource. Valid values: `Week`, `Month`. **Note:** `period_unit` is valid only when `instance_charge_type` is set to `PrePaid`.
  /// [ramRoleName] The Instance RAM role name.
  /// [resourceGroupId] The ID of resource group which the instance belongs.
  /// [securityEnhancementStrategy] The security enhancement strategy. Valid values:
  /// [securityGroupIds] A list of security group ids to associate with.
  /// [spotPriceLimit] The hourly price threshold of a instance. Three decimals is allowed at most. **Note:** `spot_price_limit` takes effect only if `spot_strategy` is set to `SpotWithPriceLimit`.
  /// [spotStrategy] The spot strategy of a Pay-As-You-Go instance. Valid values:
  /// [systemDiskAutoSnapshotPolicyId] The ID of the automatic snapshot policy applied to the system disk.
  /// [systemDiskCategory] The category of the system disk. Valid values: `cloud_efficiency`, `cloud_ssd`, `cloud_essd`, `cloud`.
  /// [systemDiskDescription] The description of the system disk. The description must be 2 to 256 characters in length and cannot start with `http://` or `https://`.
  /// [systemDiskName] The name of the system disk.
  /// [systemDiskPerformanceLevel] The performance level of the ESSD used as the system disk. Valid values: `PL0`, `PL1`, `PL2`, `PL3`.
  /// [systemDiskSize] The size of the system disk, measured in GiB. Valid values: `20` to `500`.
  /// [tags] A mapping of tags to assign to the resource.
  /// [uniqueSuffix] Whether to automatically append incremental suffixes to the hostname specified by the HostName parameter and to the instance name specified by the InstanceName parameter when you batch create instances. The incremental suffixes can range from `001` to `999`.
  /// [vswitchId] The virtual switch ID to launch in VPC.
  /// [zoneId] The ID of the zone in which to create the instance.
  EcsInstanceSetArgs({
    int? amount,
    String? autoReleaseTime,
    bool? autoRenew,
    int? autoRenewPeriod,
    bool? bootCheckOsWithAssistant,
    List<EcsInstanceSetDataDisk>? dataDisks,
    String? dedicatedHostId,
    bool? deletionProtection,
    String? deploymentSetId,
    String? description,
    EcsInstanceSetExcludeInstanceFilter? excludeInstanceFilter,
    String? hostName,
    String? hpcClusterId,
    required String imageId,
    String? instanceChargeType,
    String? instanceName,
    required String instanceType,
    String? internetChargeType,
    int? internetMaxBandwidthOut,
    String? keyPairName,
    String? launchTemplateId,
    String? launchTemplateName,
    String? launchTemplateVersion,
    List<EcsInstanceSetNetworkInterface>? networkInterfaces,
    String? password,
    bool? passwordInherit,
    int? period,
    String? periodUnit,
    String? ramRoleName,
    String? resourceGroupId,
    String? securityEnhancementStrategy,
    required List<String> securityGroupIds,
    double? spotPriceLimit,
    String? spotStrategy,
    String? systemDiskAutoSnapshotPolicyId,
    String? systemDiskCategory,
    String? systemDiskDescription,
    String? systemDiskName,
    String? systemDiskPerformanceLevel,
    int? systemDiskSize,
    Map<String, String>? tags,
    bool? uniqueSuffix,
    String? vswitchId,
    String? zoneId,
  }) :
      amount = pulumi.Input.asOptionalInput<int>(amount),
      autoReleaseTime = pulumi.Input.asOptionalInput<String>(autoReleaseTime),
      autoRenew = pulumi.Input.asOptionalInput<bool>(autoRenew),
      autoRenewPeriod = pulumi.Input.asOptionalInput<int>(autoRenewPeriod),
      bootCheckOsWithAssistant = pulumi.Input.asOptionalInput<bool>(bootCheckOsWithAssistant),
      dataDisks = pulumi.Input.asOptionalInput<List<EcsInstanceSetDataDisk>>(dataDisks),
      dedicatedHostId = pulumi.Input.asOptionalInput<String>(dedicatedHostId),
      deletionProtection = pulumi.Input.asOptionalInput<bool>(deletionProtection),
      deploymentSetId = pulumi.Input.asOptionalInput<String>(deploymentSetId),
      description = pulumi.Input.asOptionalInput<String>(description),
      excludeInstanceFilter = pulumi.Input.asOptionalInput<EcsInstanceSetExcludeInstanceFilter>(excludeInstanceFilter),
      hostName = pulumi.Input.asOptionalInput<String>(hostName),
      hpcClusterId = pulumi.Input.asOptionalInput<String>(hpcClusterId),
      imageId = pulumi.Input.asInput<String>(imageId),
      instanceChargeType = pulumi.Input.asOptionalInput<String>(instanceChargeType),
      instanceName = pulumi.Input.asOptionalInput<String>(instanceName),
      instanceType = pulumi.Input.asInput<String>(instanceType),
      internetChargeType = pulumi.Input.asOptionalInput<String>(internetChargeType),
      internetMaxBandwidthOut = pulumi.Input.asOptionalInput<int>(internetMaxBandwidthOut),
      keyPairName = pulumi.Input.asOptionalInput<String>(keyPairName),
      launchTemplateId = pulumi.Input.asOptionalInput<String>(launchTemplateId),
      launchTemplateName = pulumi.Input.asOptionalInput<String>(launchTemplateName),
      launchTemplateVersion = pulumi.Input.asOptionalInput<String>(launchTemplateVersion),
      networkInterfaces = pulumi.Input.asOptionalInput<List<EcsInstanceSetNetworkInterface>>(networkInterfaces),
      password = pulumi.Input.asOptionalInput<String>(password),
      passwordInherit = pulumi.Input.asOptionalInput<bool>(passwordInherit),
      period = pulumi.Input.asOptionalInput<int>(period),
      periodUnit = pulumi.Input.asOptionalInput<String>(periodUnit),
      ramRoleName = pulumi.Input.asOptionalInput<String>(ramRoleName),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      securityEnhancementStrategy = pulumi.Input.asOptionalInput<String>(securityEnhancementStrategy),
      securityGroupIds = pulumi.Input.asInput<List<String>>(securityGroupIds),
      spotPriceLimit = pulumi.Input.asOptionalInput<double>(spotPriceLimit),
      spotStrategy = pulumi.Input.asOptionalInput<String>(spotStrategy),
      systemDiskAutoSnapshotPolicyId = pulumi.Input.asOptionalInput<String>(systemDiskAutoSnapshotPolicyId),
      systemDiskCategory = pulumi.Input.asOptionalInput<String>(systemDiskCategory),
      systemDiskDescription = pulumi.Input.asOptionalInput<String>(systemDiskDescription),
      systemDiskName = pulumi.Input.asOptionalInput<String>(systemDiskName),
      systemDiskPerformanceLevel = pulumi.Input.asOptionalInput<String>(systemDiskPerformanceLevel),
      systemDiskSize = pulumi.Input.asOptionalInput<int>(systemDiskSize),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      uniqueSuffix = pulumi.Input.asOptionalInput<bool>(uniqueSuffix),
      vswitchId = pulumi.Input.asOptionalInput<String>(vswitchId),
      zoneId = pulumi.Input.asOptionalInput<String>(zoneId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'amount': ?amount,
      'autoReleaseTime': ?autoReleaseTime,
      'autoRenew': ?autoRenew,
      'autoRenewPeriod': ?autoRenewPeriod,
      'bootCheckOsWithAssistant': ?bootCheckOsWithAssistant,
      'dataDisks': ?pulumi.Input.mapOptionalInputValue<List<EcsInstanceSetDataDisk>, List<Map<String, dynamic>>>(dataDisks, (value) => pulumi.Input.encodeList<EcsInstanceSetDataDisk, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dedicatedHostId': ?dedicatedHostId,
      'deletionProtection': ?deletionProtection,
      'deploymentSetId': ?deploymentSetId,
      'description': ?description,
      'excludeInstanceFilter': ?pulumi.Input.mapOptionalInputValue<EcsInstanceSetExcludeInstanceFilter, Map<String, dynamic>>(excludeInstanceFilter, (value) => value.toMap()),
      'hostName': ?hostName,
      'hpcClusterId': ?hpcClusterId,
      'imageId': imageId,
      'instanceChargeType': ?instanceChargeType,
      'instanceName': ?instanceName,
      'instanceType': instanceType,
      'internetChargeType': ?internetChargeType,
      'internetMaxBandwidthOut': ?internetMaxBandwidthOut,
      'keyPairName': ?keyPairName,
      'launchTemplateId': ?launchTemplateId,
      'launchTemplateName': ?launchTemplateName,
      'launchTemplateVersion': ?launchTemplateVersion,
      'networkInterfaces': ?pulumi.Input.mapOptionalInputValue<List<EcsInstanceSetNetworkInterface>, List<Map<String, dynamic>>>(networkInterfaces, (value) => pulumi.Input.encodeList<EcsInstanceSetNetworkInterface, Map<String, dynamic>>(value, (value) => value.toMap())),
      'password': ?password,
      'passwordInherit': ?passwordInherit,
      'period': ?period,
      'periodUnit': ?periodUnit,
      'ramRoleName': ?ramRoleName,
      'resourceGroupId': ?resourceGroupId,
      'securityEnhancementStrategy': ?securityEnhancementStrategy,
      'securityGroupIds': securityGroupIds,
      'spotPriceLimit': ?spotPriceLimit,
      'spotStrategy': ?spotStrategy,
      'systemDiskAutoSnapshotPolicyId': ?systemDiskAutoSnapshotPolicyId,
      'systemDiskCategory': ?systemDiskCategory,
      'systemDiskDescription': ?systemDiskDescription,
      'systemDiskName': ?systemDiskName,
      'systemDiskPerformanceLevel': ?systemDiskPerformanceLevel,
      'systemDiskSize': ?systemDiskSize,
      'tags': ?tags,
      'uniqueSuffix': ?uniqueSuffix,
      'vswitchId': ?vswitchId,
      'zoneId': ?zoneId,
    };
  }

  factory EcsInstanceSetArgs.fromMap(Map<String, dynamic> map) {
    return EcsInstanceSetArgs(
      amount: map['amount'] == null ? null : map['amount'] as int,
      autoReleaseTime: map['autoReleaseTime'] == null ? null : map['autoReleaseTime'] as String,
      autoRenew: map['autoRenew'] == null ? null : map['autoRenew'] as bool,
      autoRenewPeriod: map['autoRenewPeriod'] == null ? null : map['autoRenewPeriod'] as int,
      bootCheckOsWithAssistant: map['bootCheckOsWithAssistant'] == null ? null : map['bootCheckOsWithAssistant'] as bool,
      dataDisks: map['dataDisks'] == null ? null : pulumi.Input.decodeList<EcsInstanceSetDataDisk>(map['dataDisks'], (value) => EcsInstanceSetDataDisk.fromMap((value as Map).cast<String, dynamic>())),
      dedicatedHostId: map['dedicatedHostId'] == null ? null : map['dedicatedHostId'] as String,
      deletionProtection: map['deletionProtection'] == null ? null : map['deletionProtection'] as bool,
      deploymentSetId: map['deploymentSetId'] == null ? null : map['deploymentSetId'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      excludeInstanceFilter: map['excludeInstanceFilter'] == null ? null : EcsInstanceSetExcludeInstanceFilter.fromMap((map['excludeInstanceFilter'] as Map).cast<String, dynamic>()),
      hostName: map['hostName'] == null ? null : map['hostName'] as String,
      hpcClusterId: map['hpcClusterId'] == null ? null : map['hpcClusterId'] as String,
      imageId: map['imageId'] as String,
      instanceChargeType: map['instanceChargeType'] == null ? null : map['instanceChargeType'] as String,
      instanceName: map['instanceName'] == null ? null : map['instanceName'] as String,
      instanceType: map['instanceType'] as String,
      internetChargeType: map['internetChargeType'] == null ? null : map['internetChargeType'] as String,
      internetMaxBandwidthOut: map['internetMaxBandwidthOut'] == null ? null : map['internetMaxBandwidthOut'] as int,
      keyPairName: map['keyPairName'] == null ? null : map['keyPairName'] as String,
      launchTemplateId: map['launchTemplateId'] == null ? null : map['launchTemplateId'] as String,
      launchTemplateName: map['launchTemplateName'] == null ? null : map['launchTemplateName'] as String,
      launchTemplateVersion: map['launchTemplateVersion'] == null ? null : map['launchTemplateVersion'] as String,
      networkInterfaces: map['networkInterfaces'] == null ? null : pulumi.Input.decodeList<EcsInstanceSetNetworkInterface>(map['networkInterfaces'], (value) => EcsInstanceSetNetworkInterface.fromMap((value as Map).cast<String, dynamic>())),
      password: map['password'] == null ? null : map['password'] as String,
      passwordInherit: map['passwordInherit'] == null ? null : map['passwordInherit'] as bool,
      period: map['period'] == null ? null : map['period'] as int,
      periodUnit: map['periodUnit'] == null ? null : map['periodUnit'] as String,
      ramRoleName: map['ramRoleName'] == null ? null : map['ramRoleName'] as String,
      resourceGroupId: map['resourceGroupId'] == null ? null : map['resourceGroupId'] as String,
      securityEnhancementStrategy: map['securityEnhancementStrategy'] == null ? null : map['securityEnhancementStrategy'] as String,
      securityGroupIds: (map['securityGroupIds'] as List).cast<String>(),
      spotPriceLimit: map['spotPriceLimit'] == null ? null : map['spotPriceLimit'] as double,
      spotStrategy: map['spotStrategy'] == null ? null : map['spotStrategy'] as String,
      systemDiskAutoSnapshotPolicyId: map['systemDiskAutoSnapshotPolicyId'] == null ? null : map['systemDiskAutoSnapshotPolicyId'] as String,
      systemDiskCategory: map['systemDiskCategory'] == null ? null : map['systemDiskCategory'] as String,
      systemDiskDescription: map['systemDiskDescription'] == null ? null : map['systemDiskDescription'] as String,
      systemDiskName: map['systemDiskName'] == null ? null : map['systemDiskName'] as String,
      systemDiskPerformanceLevel: map['systemDiskPerformanceLevel'] == null ? null : map['systemDiskPerformanceLevel'] as String,
      systemDiskSize: map['systemDiskSize'] == null ? null : map['systemDiskSize'] as int,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      uniqueSuffix: map['uniqueSuffix'] == null ? null : map['uniqueSuffix'] as bool,
      vswitchId: map['vswitchId'] == null ? null : map['vswitchId'] as String,
      zoneId: map['zoneId'] == null ? null : map['zoneId'] as String,
    );
  }
}

