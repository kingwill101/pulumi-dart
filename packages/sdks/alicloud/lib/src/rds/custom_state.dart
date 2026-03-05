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
  /// &gt; **NOTE:**  This parameter does not need to be uploaded, and the system can automatically determine whether to upgrade or downgrade. If you want to upload, please follow the following logic rules.
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
      amount: (() { final guardedValue = map['amount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      autoPay: (() { final guardedValue = map['autoPay']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      autoRenew: (() { final guardedValue = map['autoRenew']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      createExtraParam: (() { final guardedValue = map['createExtraParam']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createMode: (() { final guardedValue = map['createMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataDisks: (() { final guardedValue = map['dataDisks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CustomDataDisk>(guardedValue, (value) => CustomDataDisk.fromMap((value as Map).cast<String, dynamic>()))); })(),
      deploymentSetId: (() { final guardedValue = map['deploymentSetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      direction: (() { final guardedValue = map['direction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dryRun: (() { final guardedValue = map['dryRun']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      force: (() { final guardedValue = map['force']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      forceStop: (() { final guardedValue = map['forceStop']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      hostName: (() { final guardedValue = map['hostName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      imageId: (() { final guardedValue = map['imageId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceChargeType: (() { final guardedValue = map['instanceChargeType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceType: (() { final guardedValue = map['instanceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      internetChargeType: (() { final guardedValue = map['internetChargeType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      internetMaxBandwidthOut: (() { final guardedValue = map['internetMaxBandwidthOut']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      ioOptimized: (() { final guardedValue = map['ioOptimized']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyPairName: (() { final guardedValue = map['keyPairName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      period: (() { final guardedValue = map['period']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      periodUnit: (() { final guardedValue = map['periodUnit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      regionId: (() { final guardedValue = map['regionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupId: (() { final guardedValue = map['resourceGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securityEnhancementStrategy: (() { final guardedValue = map['securityEnhancementStrategy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securityGroupIds: (() { final guardedValue = map['securityGroupIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      spotStrategy: (() { final guardedValue = map['spotStrategy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      supportCase: (() { final guardedValue = map['supportCase']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      systemDisk: (() { final guardedValue = map['systemDisk']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CustomSystemDisk.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      vswitchId: (() { final guardedValue = map['vswitchId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

