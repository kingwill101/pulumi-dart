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
  const EcsInstanceSetState({
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
      amount: (() { final guardedValue = map['amount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      autoReleaseTime: (() { final guardedValue = map['autoReleaseTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      autoRenew: (() { final guardedValue = map['autoRenew']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      autoRenewPeriod: (() { final guardedValue = map['autoRenewPeriod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      bootCheckOsWithAssistant: (() { final guardedValue = map['bootCheckOsWithAssistant']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      dataDisks: (() { final guardedValue = map['dataDisks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EcsInstanceSetDataDisk>(guardedValue, (value) => EcsInstanceSetDataDisk.fromMap((value as Map).cast<String, dynamic>()))); })(),
      dedicatedHostId: (() { final guardedValue = map['dedicatedHostId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionProtection: (() { final guardedValue = map['deletionProtection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      deploymentSetId: (() { final guardedValue = map['deploymentSetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      excludeInstanceFilter: (() { final guardedValue = map['excludeInstanceFilter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EcsInstanceSetExcludeInstanceFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      hostName: (() { final guardedValue = map['hostName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hpcClusterId: (() { final guardedValue = map['hpcClusterId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      imageId: (() { final guardedValue = map['imageId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceChargeType: (() { final guardedValue = map['instanceChargeType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceIds: (() { final guardedValue = map['instanceIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      instanceName: (() { final guardedValue = map['instanceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceType: (() { final guardedValue = map['instanceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      internetChargeType: (() { final guardedValue = map['internetChargeType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      internetMaxBandwidthOut: (() { final guardedValue = map['internetMaxBandwidthOut']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      keyPairName: (() { final guardedValue = map['keyPairName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      launchTemplateId: (() { final guardedValue = map['launchTemplateId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      launchTemplateName: (() { final guardedValue = map['launchTemplateName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      launchTemplateVersion: (() { final guardedValue = map['launchTemplateVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkInterfaces: (() { final guardedValue = map['networkInterfaces']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EcsInstanceSetNetworkInterface>(guardedValue, (value) => EcsInstanceSetNetworkInterface.fromMap((value as Map).cast<String, dynamic>()))); })(),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      passwordInherit: (() { final guardedValue = map['passwordInherit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      period: (() { final guardedValue = map['period']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      periodUnit: (() { final guardedValue = map['periodUnit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ramRoleName: (() { final guardedValue = map['ramRoleName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupId: (() { final guardedValue = map['resourceGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securityEnhancementStrategy: (() { final guardedValue = map['securityEnhancementStrategy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securityGroupIds: (() { final guardedValue = map['securityGroupIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      spotPriceLimit: (() { final guardedValue = map['spotPriceLimit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      spotStrategy: (() { final guardedValue = map['spotStrategy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      systemDiskAutoSnapshotPolicyId: (() { final guardedValue = map['systemDiskAutoSnapshotPolicyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      systemDiskCategory: (() { final guardedValue = map['systemDiskCategory']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      systemDiskDescription: (() { final guardedValue = map['systemDiskDescription']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      systemDiskName: (() { final guardedValue = map['systemDiskName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      systemDiskPerformanceLevel: (() { final guardedValue = map['systemDiskPerformanceLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      systemDiskSize: (() { final guardedValue = map['systemDiskSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      uniqueSuffix: (() { final guardedValue = map['uniqueSuffix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      vswitchId: (() { final guardedValue = map['vswitchId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

