// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_data_disk.dart';
import 'custom_system_disk.dart';

/// Input properties used for looking up and filtering Custom resources.
class CustomState {
  /// Represents the number of instances created
  final pulumi.Input<int>? amount;
  /// Whether to pay automatically. Value range:
  final pulumi.Input<bool>? autoPay;
  /// Whether the instance is automatically renewed. Valid values: true/false. The default is false.
  final pulumi.Input<bool>? autoRenew;
  /// Reserved parameters are not supported.
  final pulumi.Input<String>? createExtraParam;
  /// Whether to allow joining the ACK cluster. When this parameter is set to `1`, the created instance can be added to the ACK cluster through The `AttachRCInstances` API to efficiently manage container applications.
  final pulumi.Input<String>? createMode;
  /// Data disk See `data_disk` below.
  final pulumi.Input<List<CustomDataDisk>>? dataDisks;
  /// The ID of the deployment set.
  final pulumi.Input<String>? deploymentSetId;
  /// Instance description. It must be 2 to 256 characters in length and cannot start with http:// or https.
  final pulumi.Input<String>? description;
  /// Instance configuration type, value range:
  ///
  /// > **NOTE:**  This parameter does not need to be uploaded, and the system can automatically determine whether to upgrade or downgrade. If you want to upload, please follow the following logic rules.
  /// - `Up` (default): upgrade the instance specification. Please ensure that your account balance is sufficient.
  /// - `Down`: Downgrade instance specifications. When the instance type set to InstanceType is lower than the current instance type, set Direction = down.
  final pulumi.Input<String>? direction;
  /// Whether to pre-check the operation of creating an instance. Valid values:
  final pulumi.Input<bool>? dryRun;
  /// Whether to forcibly release the running instance. Value: true/false
  final pulumi.Input<bool>? force;
  /// Whether to force shutdown. Value range:
  final pulumi.Input<bool>? forceStop;
  /// The instance host name.
  final pulumi.Input<String>? hostName;
  /// The ID of the image used by the instance.
  final pulumi.Input<String>? imageId;
  /// The Payment type. Currently, only `Prepaid` (package year and month) types are supported.
  final pulumi.Input<String>? instanceChargeType;
  /// The type of the created RDS Custom dedicated host instance.
  final pulumi.Input<String>? instanceType;
  /// Reserved parameters are not supported.
  final pulumi.Input<String>? internetChargeType;
  /// Reserved parameters are not supported.
  final pulumi.Input<int>? internetMaxBandwidthOut;
  /// Reserved parameters are not supported.
  final pulumi.Input<String>? ioOptimized;
  /// The key pair name. Only flyer names are supported.
  final pulumi.Input<String>? keyPairName;
  /// The account and password of the instance.
  final pulumi.Input<String>? password;
  /// Prepaid renewal duration, unit: Month/Year.
  final pulumi.Input<int>? period;
  /// The unit of duration of the year-to-month billing method. Value range:
  /// - `Year`: Year
  /// - `Month` (default): Month
  final pulumi.Input<String>? periodUnit;
  /// The region ID. Callable DescribeRegions to get.
  final pulumi.Input<String>? regionId;
  /// The ID of the resource group
  final pulumi.Input<String>? resourceGroupId;
  /// Reserved parameters are not supported.
  final pulumi.Input<String>? securityEnhancementStrategy;
  /// Security group list
  final pulumi.Input<List<String>>? securityGroupIds;
  /// The bidding strategy for pay-as-you-go instances. This parameter takes effect when the value of `InstanceChargeType` is set to **PostPaid. Value range:
  /// - `NoSpot`: normal pay-as-you-go instances.
  /// - `SpotAsPriceGo`: The system automatically bids and follows the actual price in the current market.
  ///
  /// Default value: **NoSpot * *.
  final pulumi.Input<String>? spotStrategy;
  /// The status of the resource
  final pulumi.Input<String>? status;
  /// Supported scenarios: createMode:supportCase, for example: NATIVE("0", "eni"),RCK("1", "rck"),ACK_EDGE("1", "edge");
  final pulumi.Input<String>? supportCase;
  /// System disk specifications. See `system_disk` below.
  final pulumi.Input<CustomSystemDisk>? systemDisk;
  /// The tag of the resource
  final pulumi.Input<Map<String, String>>? tags;
  /// The ID of the virtual switch. The zone in which the vSwitch is located must correspond to the zone ID entered in ZoneId.
  /// The network type InstanceNetworkType must be VPC.
  final pulumi.Input<String>? vswitchId;
  /// The zone ID  of the resource
  final pulumi.Input<String>? zoneId;

  /// Creates a new [CustomState].
  /// [amount] Represents the number of instances created
  /// [autoPay] Whether to pay automatically. Value range:
  /// [autoRenew] Whether the instance is automatically renewed. Valid values: true/false. The default is false.
  /// [createExtraParam] Reserved parameters are not supported.
  /// [createMode] Whether to allow joining the ACK cluster. When this parameter is set to `1`, the created instance can be added to the ACK cluster through The `AttachRCInstances` API to efficiently manage container applications.
  /// [dataDisks] Data disk See `data_disk` below.
  /// [deploymentSetId] The ID of the deployment set.
  /// [description] Instance description. It must be 2 to 256 characters in length and cannot start with http:// or https.
  /// [direction] Instance configuration type, value range:
  /// [dryRun] Whether to pre-check the operation of creating an instance. Valid values:
  /// [force] Whether to forcibly release the running instance. Value: true/false
  /// [forceStop] Whether to force shutdown. Value range:
  /// [hostName] The instance host name.
  /// [imageId] The ID of the image used by the instance.
  /// [instanceChargeType] The Payment type. Currently, only `Prepaid` (package year and month) types are supported.
  /// [instanceType] The type of the created RDS Custom dedicated host instance.
  /// [internetChargeType] Reserved parameters are not supported.
  /// [internetMaxBandwidthOut] Reserved parameters are not supported.
  /// [ioOptimized] Reserved parameters are not supported.
  /// [keyPairName] The key pair name. Only flyer names are supported.
  /// [password] The account and password of the instance.
  /// [period] Prepaid renewal duration, unit: Month/Year.
  /// [periodUnit] The unit of duration of the year-to-month billing method. Value range:
  /// [regionId] The region ID. Callable DescribeRegions to get.
  /// [resourceGroupId] The ID of the resource group
  /// [securityEnhancementStrategy] Reserved parameters are not supported.
  /// [securityGroupIds] Security group list
  /// [spotStrategy] The bidding strategy for pay-as-you-go instances. This parameter takes effect when the value of `InstanceChargeType` is set to **PostPaid. Value range:
  /// [status] The status of the resource
  /// [supportCase] Supported scenarios: createMode:supportCase, for example: NATIVE("0", "eni"),RCK("1", "rck"),ACK_EDGE("1", "edge");
  /// [systemDisk] System disk specifications. See `system_disk` below.
  /// [tags] The tag of the resource
  /// [vswitchId] The ID of the virtual switch. The zone in which the vSwitch is located must correspond to the zone ID entered in ZoneId.
  /// [zoneId] The zone ID  of the resource
  CustomState({
    this.amount,
    this.autoPay,
    this.autoRenew,
    this.createExtraParam,
    this.createMode,
    this.dataDisks,
    this.deploymentSetId,
    this.description,
    this.direction,
    this.dryRun,
    this.force,
    this.forceStop,
    this.hostName,
    this.imageId,
    this.instanceChargeType,
    this.instanceType,
    this.internetChargeType,
    this.internetMaxBandwidthOut,
    this.ioOptimized,
    this.keyPairName,
    this.password,
    this.period,
    this.periodUnit,
    this.regionId,
    this.resourceGroupId,
    this.securityEnhancementStrategy,
    this.securityGroupIds,
    this.spotStrategy,
    this.status,
    this.supportCase,
    this.systemDisk,
    this.tags,
    this.vswitchId,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'amount': ?amount,
      'autoPay': ?autoPay,
      'autoRenew': ?autoRenew,
      'createExtraParam': ?createExtraParam,
      'createMode': ?createMode,
      'dataDisks': ?pulumi.Input.mapOptionalInputValue<List<CustomDataDisk>, List<Map<String, dynamic>>>(dataDisks, (value) => pulumi.Input.encodeList<CustomDataDisk, Map<String, dynamic>>(value, (value) => value.toMap())),
      'deploymentSetId': ?deploymentSetId,
      'description': ?description,
      'direction': ?direction,
      'dryRun': ?dryRun,
      'force': ?force,
      'forceStop': ?forceStop,
      'hostName': ?hostName,
      'imageId': ?imageId,
      'instanceChargeType': ?instanceChargeType,
      'instanceType': ?instanceType,
      'internetChargeType': ?internetChargeType,
      'internetMaxBandwidthOut': ?internetMaxBandwidthOut,
      'ioOptimized': ?ioOptimized,
      'keyPairName': ?keyPairName,
      'password': ?password,
      'period': ?period,
      'periodUnit': ?periodUnit,
      'regionId': ?regionId,
      'resourceGroupId': ?resourceGroupId,
      'securityEnhancementStrategy': ?securityEnhancementStrategy,
      'securityGroupIds': ?securityGroupIds,
      'spotStrategy': ?spotStrategy,
      'status': ?status,
      'supportCase': ?supportCase,
      'systemDisk': ?pulumi.Input.mapOptionalInputValue<CustomSystemDisk, Map<String, dynamic>>(systemDisk, (value) => value.toMap()),
      'tags': ?tags,
      'vswitchId': ?vswitchId,
      'zoneId': ?zoneId,
    };
  }

  factory CustomState.fromMap(Map<String, dynamic> map) {
    return CustomState(
      amount: map['amount'] == null ? null : (map['amount'] as int).input(),
      autoPay: map['autoPay'] == null ? null : (map['autoPay'] as bool).input(),
      autoRenew: map['autoRenew'] == null ? null : (map['autoRenew'] as bool).input(),
      createExtraParam: map['createExtraParam'] == null ? null : (map['createExtraParam'] as String).input(),
      createMode: map['createMode'] == null ? null : (map['createMode'] as String).input(),
      dataDisks: map['dataDisks'] == null ? null : (pulumi.Input.decodeList<CustomDataDisk>(map['dataDisks'], (value) => CustomDataDisk.fromMap((value as Map).cast<String, dynamic>()))).input(),
      deploymentSetId: map['deploymentSetId'] == null ? null : (map['deploymentSetId'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      direction: map['direction'] == null ? null : (map['direction'] as String).input(),
      dryRun: map['dryRun'] == null ? null : (map['dryRun'] as bool).input(),
      force: map['force'] == null ? null : (map['force'] as bool).input(),
      forceStop: map['forceStop'] == null ? null : (map['forceStop'] as bool).input(),
      hostName: map['hostName'] == null ? null : (map['hostName'] as String).input(),
      imageId: map['imageId'] == null ? null : (map['imageId'] as String).input(),
      instanceChargeType: map['instanceChargeType'] == null ? null : (map['instanceChargeType'] as String).input(),
      instanceType: map['instanceType'] == null ? null : (map['instanceType'] as String).input(),
      internetChargeType: map['internetChargeType'] == null ? null : (map['internetChargeType'] as String).input(),
      internetMaxBandwidthOut: map['internetMaxBandwidthOut'] == null ? null : (map['internetMaxBandwidthOut'] as int).input(),
      ioOptimized: map['ioOptimized'] == null ? null : (map['ioOptimized'] as String).input(),
      keyPairName: map['keyPairName'] == null ? null : (map['keyPairName'] as String).input(),
      password: map['password'] == null ? null : (map['password'] as String).input(),
      period: map['period'] == null ? null : (map['period'] as int).input(),
      periodUnit: map['periodUnit'] == null ? null : (map['periodUnit'] as String).input(),
      regionId: map['regionId'] == null ? null : (map['regionId'] as String).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId'] as String).input(),
      securityEnhancementStrategy: map['securityEnhancementStrategy'] == null ? null : (map['securityEnhancementStrategy'] as String).input(),
      securityGroupIds: map['securityGroupIds'] == null ? null : ((map['securityGroupIds'] as List).cast<String>()).input(),
      spotStrategy: map['spotStrategy'] == null ? null : (map['spotStrategy'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      supportCase: map['supportCase'] == null ? null : (map['supportCase'] as String).input(),
      systemDisk: map['systemDisk'] == null ? null : (CustomSystemDisk.fromMap((map['systemDisk'] as Map).cast<String, dynamic>())).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      vswitchId: map['vswitchId'] == null ? null : (map['vswitchId'] as String).input(),
      zoneId: map['zoneId'] == null ? null : (map['zoneId'] as String).input(),
    );
  }
}

