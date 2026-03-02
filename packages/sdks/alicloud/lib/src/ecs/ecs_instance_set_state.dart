// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ecs_instance_set_data_disk.dart';
import 'ecs_instance_set_exclude_instance_filter.dart';
import 'ecs_instance_set_network_interface.dart';

/// Input properties used for looking up and filtering EcsInstanceSet resources.
class EcsInstanceSetState {
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
  final pulumi.Input<String>? imageId;
  /// The billing method of the instance. Valid values: `PrePaid`, `PostPaid`.
  final pulumi.Input<String>? instanceChargeType;
  /// A list of ECS Instance ID.
  final pulumi.Input<List<String>>? instanceIds;
  /// The name of the ECS. This instance_name can have a string of 2 to 128 characters, must contain only alphanumeric characters or hyphens, such as "-",".","_", and must not begin with a hyphen, and must not begin with `http://` or `https://`.
  final pulumi.Input<String>? instanceName;
  /// The type of instance to start.
  final pulumi.Input<String>? instanceType;
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
  final pulumi.Input<List<String>>? securityGroupIds;
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

  /// Creates a new [EcsInstanceSetState].
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
  /// [instanceIds] A list of ECS Instance ID.
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
  EcsInstanceSetState({
    this.amount,
    this.autoReleaseTime,
    this.autoRenew,
    this.autoRenewPeriod,
    this.bootCheckOsWithAssistant,
    this.dataDisks,
    this.dedicatedHostId,
    this.deletionProtection,
    this.deploymentSetId,
    this.description,
    this.excludeInstanceFilter,
    this.hostName,
    this.hpcClusterId,
    this.imageId,
    this.instanceChargeType,
    this.instanceIds,
    this.instanceName,
    this.instanceType,
    this.internetChargeType,
    this.internetMaxBandwidthOut,
    this.keyPairName,
    this.launchTemplateId,
    this.launchTemplateName,
    this.launchTemplateVersion,
    this.networkInterfaces,
    this.password,
    this.passwordInherit,
    this.period,
    this.periodUnit,
    this.ramRoleName,
    this.resourceGroupId,
    this.securityEnhancementStrategy,
    this.securityGroupIds,
    this.spotPriceLimit,
    this.spotStrategy,
    this.systemDiskAutoSnapshotPolicyId,
    this.systemDiskCategory,
    this.systemDiskDescription,
    this.systemDiskName,
    this.systemDiskPerformanceLevel,
    this.systemDiskSize,
    this.tags,
    this.uniqueSuffix,
    this.vswitchId,
    this.zoneId,
  });

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
      'imageId': ?imageId,
      'instanceChargeType': ?instanceChargeType,
      'instanceIds': ?instanceIds,
      'instanceName': ?instanceName,
      'instanceType': ?instanceType,
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
      'securityGroupIds': ?securityGroupIds,
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

  factory EcsInstanceSetState.fromMap(Map<String, dynamic> map) {
    return EcsInstanceSetState(
      amount: map['amount'] == null ? null : (map['amount']! as int).input(),
      autoReleaseTime: map['autoReleaseTime'] == null ? null : (map['autoReleaseTime']! as String).input(),
      autoRenew: map['autoRenew'] == null ? null : (map['autoRenew']! as bool).input(),
      autoRenewPeriod: map['autoRenewPeriod'] == null ? null : (map['autoRenewPeriod']! as int).input(),
      bootCheckOsWithAssistant: map['bootCheckOsWithAssistant'] == null ? null : (map['bootCheckOsWithAssistant']! as bool).input(),
      dataDisks: map['dataDisks'] == null ? null : (pulumi.Input.decodeList<EcsInstanceSetDataDisk>(map['dataDisks']!, (value) => EcsInstanceSetDataDisk.fromMap((value as Map).cast<String, dynamic>()))).input(),
      dedicatedHostId: map['dedicatedHostId'] == null ? null : (map['dedicatedHostId']! as String).input(),
      deletionProtection: map['deletionProtection'] == null ? null : (map['deletionProtection']! as bool).input(),
      deploymentSetId: map['deploymentSetId'] == null ? null : (map['deploymentSetId']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      excludeInstanceFilter: map['excludeInstanceFilter'] == null ? null : (EcsInstanceSetExcludeInstanceFilter.fromMap((map['excludeInstanceFilter']! as Map).cast<String, dynamic>())).input(),
      hostName: map['hostName'] == null ? null : (map['hostName']! as String).input(),
      hpcClusterId: map['hpcClusterId'] == null ? null : (map['hpcClusterId']! as String).input(),
      imageId: map['imageId'] == null ? null : (map['imageId']! as String).input(),
      instanceChargeType: map['instanceChargeType'] == null ? null : (map['instanceChargeType']! as String).input(),
      instanceIds: map['instanceIds'] == null ? null : ((map['instanceIds']! as List).cast<String>()).input(),
      instanceName: map['instanceName'] == null ? null : (map['instanceName']! as String).input(),
      instanceType: map['instanceType'] == null ? null : (map['instanceType']! as String).input(),
      internetChargeType: map['internetChargeType'] == null ? null : (map['internetChargeType']! as String).input(),
      internetMaxBandwidthOut: map['internetMaxBandwidthOut'] == null ? null : (map['internetMaxBandwidthOut']! as int).input(),
      keyPairName: map['keyPairName'] == null ? null : (map['keyPairName']! as String).input(),
      launchTemplateId: map['launchTemplateId'] == null ? null : (map['launchTemplateId']! as String).input(),
      launchTemplateName: map['launchTemplateName'] == null ? null : (map['launchTemplateName']! as String).input(),
      launchTemplateVersion: map['launchTemplateVersion'] == null ? null : (map['launchTemplateVersion']! as String).input(),
      networkInterfaces: map['networkInterfaces'] == null ? null : (pulumi.Input.decodeList<EcsInstanceSetNetworkInterface>(map['networkInterfaces']!, (value) => EcsInstanceSetNetworkInterface.fromMap((value as Map).cast<String, dynamic>()))).input(),
      password: map['password'] == null ? null : (map['password']! as String).input(),
      passwordInherit: map['passwordInherit'] == null ? null : (map['passwordInherit']! as bool).input(),
      period: map['period'] == null ? null : (map['period']! as int).input(),
      periodUnit: map['periodUnit'] == null ? null : (map['periodUnit']! as String).input(),
      ramRoleName: map['ramRoleName'] == null ? null : (map['ramRoleName']! as String).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId']! as String).input(),
      securityEnhancementStrategy: map['securityEnhancementStrategy'] == null ? null : (map['securityEnhancementStrategy']! as String).input(),
      securityGroupIds: map['securityGroupIds'] == null ? null : ((map['securityGroupIds']! as List).cast<String>()).input(),
      spotPriceLimit: map['spotPriceLimit'] == null ? null : (map['spotPriceLimit']! as double).input(),
      spotStrategy: map['spotStrategy'] == null ? null : (map['spotStrategy']! as String).input(),
      systemDiskAutoSnapshotPolicyId: map['systemDiskAutoSnapshotPolicyId'] == null ? null : (map['systemDiskAutoSnapshotPolicyId']! as String).input(),
      systemDiskCategory: map['systemDiskCategory'] == null ? null : (map['systemDiskCategory']! as String).input(),
      systemDiskDescription: map['systemDiskDescription'] == null ? null : (map['systemDiskDescription']! as String).input(),
      systemDiskName: map['systemDiskName'] == null ? null : (map['systemDiskName']! as String).input(),
      systemDiskPerformanceLevel: map['systemDiskPerformanceLevel'] == null ? null : (map['systemDiskPerformanceLevel']! as String).input(),
      systemDiskSize: map['systemDiskSize'] == null ? null : (map['systemDiskSize']! as int).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      uniqueSuffix: map['uniqueSuffix'] == null ? null : (map['uniqueSuffix']! as bool).input(),
      vswitchId: map['vswitchId'] == null ? null : (map['vswitchId']! as String).input(),
      zoneId: map['zoneId'] == null ? null : (map['zoneId']! as String).input(),
    );
  }
}

