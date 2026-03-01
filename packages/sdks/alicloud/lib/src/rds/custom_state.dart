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
    pulumi.Output<int>? amount,
    pulumi.Output<bool>? autoPay,
    pulumi.Output<bool>? autoRenew,
    pulumi.Output<String>? createExtraParam,
    pulumi.Output<String>? createMode,
    pulumi.Output<List<CustomDataDisk>>? dataDisks,
    pulumi.Output<String>? deploymentSetId,
    pulumi.Output<String>? description,
    pulumi.Output<String>? direction,
    pulumi.Output<bool>? dryRun,
    pulumi.Output<bool>? force,
    pulumi.Output<bool>? forceStop,
    pulumi.Output<String>? hostName,
    pulumi.Output<String>? imageId,
    pulumi.Output<String>? instanceChargeType,
    pulumi.Output<String>? instanceType,
    pulumi.Output<String>? internetChargeType,
    pulumi.Output<int>? internetMaxBandwidthOut,
    pulumi.Output<String>? ioOptimized,
    pulumi.Output<String>? keyPairName,
    pulumi.Output<String>? password,
    pulumi.Output<int>? period,
    pulumi.Output<String>? periodUnit,
    pulumi.Output<String>? regionId,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<String>? securityEnhancementStrategy,
    pulumi.Output<List<String>>? securityGroupIds,
    pulumi.Output<String>? spotStrategy,
    pulumi.Output<String>? status,
    pulumi.Output<String>? supportCase,
    pulumi.Output<CustomSystemDisk>? systemDisk,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? vswitchId,
    pulumi.Output<String>? zoneId,
  }) :
      amount = pulumi.Input.asOptionalInput<int>(amount),
      autoPay = pulumi.Input.asOptionalInput<bool>(autoPay),
      autoRenew = pulumi.Input.asOptionalInput<bool>(autoRenew),
      createExtraParam = pulumi.Input.asOptionalInput<String>(createExtraParam),
      createMode = pulumi.Input.asOptionalInput<String>(createMode),
      dataDisks = pulumi.Input.asOptionalInput<List<CustomDataDisk>>(dataDisks),
      deploymentSetId = pulumi.Input.asOptionalInput<String>(deploymentSetId),
      description = pulumi.Input.asOptionalInput<String>(description),
      direction = pulumi.Input.asOptionalInput<String>(direction),
      dryRun = pulumi.Input.asOptionalInput<bool>(dryRun),
      force = pulumi.Input.asOptionalInput<bool>(force),
      forceStop = pulumi.Input.asOptionalInput<bool>(forceStop),
      hostName = pulumi.Input.asOptionalInput<String>(hostName),
      imageId = pulumi.Input.asOptionalInput<String>(imageId),
      instanceChargeType = pulumi.Input.asOptionalInput<String>(instanceChargeType),
      instanceType = pulumi.Input.asOptionalInput<String>(instanceType),
      internetChargeType = pulumi.Input.asOptionalInput<String>(internetChargeType),
      internetMaxBandwidthOut = pulumi.Input.asOptionalInput<int>(internetMaxBandwidthOut),
      ioOptimized = pulumi.Input.asOptionalInput<String>(ioOptimized),
      keyPairName = pulumi.Input.asOptionalInput<String>(keyPairName),
      password = pulumi.Input.asOptionalInput<String>(password),
      period = pulumi.Input.asOptionalInput<int>(period),
      periodUnit = pulumi.Input.asOptionalInput<String>(periodUnit),
      regionId = pulumi.Input.asOptionalInput<String>(regionId),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      securityEnhancementStrategy = pulumi.Input.asOptionalInput<String>(securityEnhancementStrategy),
      securityGroupIds = pulumi.Input.asOptionalInput<List<String>>(securityGroupIds),
      spotStrategy = pulumi.Input.asOptionalInput<String>(spotStrategy),
      status = pulumi.Input.asOptionalInput<String>(status),
      supportCase = pulumi.Input.asOptionalInput<String>(supportCase),
      systemDisk = pulumi.Input.asOptionalInput<CustomSystemDisk>(systemDisk),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      vswitchId = pulumi.Input.asOptionalInput<String>(vswitchId),
      zoneId = pulumi.Input.asOptionalInput<String>(zoneId);

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
      amount: map['amount'] == null ? null : pulumi.Output.create<int>(map['amount'] as int),
      autoPay: map['autoPay'] == null ? null : pulumi.Output.create<bool>(map['autoPay'] as bool),
      autoRenew: map['autoRenew'] == null ? null : pulumi.Output.create<bool>(map['autoRenew'] as bool),
      createExtraParam: map['createExtraParam'] == null ? null : pulumi.Output.create<String>(map['createExtraParam'] as String),
      createMode: map['createMode'] == null ? null : pulumi.Output.create<String>(map['createMode'] as String),
      dataDisks: map['dataDisks'] == null ? null : pulumi.Output.create<List<CustomDataDisk>>(pulumi.Input.decodeList<CustomDataDisk>(map['dataDisks'], (value) => CustomDataDisk.fromMap((value as Map).cast<String, dynamic>()))),
      deploymentSetId: map['deploymentSetId'] == null ? null : pulumi.Output.create<String>(map['deploymentSetId'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      direction: map['direction'] == null ? null : pulumi.Output.create<String>(map['direction'] as String),
      dryRun: map['dryRun'] == null ? null : pulumi.Output.create<bool>(map['dryRun'] as bool),
      force: map['force'] == null ? null : pulumi.Output.create<bool>(map['force'] as bool),
      forceStop: map['forceStop'] == null ? null : pulumi.Output.create<bool>(map['forceStop'] as bool),
      hostName: map['hostName'] == null ? null : pulumi.Output.create<String>(map['hostName'] as String),
      imageId: map['imageId'] == null ? null : pulumi.Output.create<String>(map['imageId'] as String),
      instanceChargeType: map['instanceChargeType'] == null ? null : pulumi.Output.create<String>(map['instanceChargeType'] as String),
      instanceType: map['instanceType'] == null ? null : pulumi.Output.create<String>(map['instanceType'] as String),
      internetChargeType: map['internetChargeType'] == null ? null : pulumi.Output.create<String>(map['internetChargeType'] as String),
      internetMaxBandwidthOut: map['internetMaxBandwidthOut'] == null ? null : pulumi.Output.create<int>(map['internetMaxBandwidthOut'] as int),
      ioOptimized: map['ioOptimized'] == null ? null : pulumi.Output.create<String>(map['ioOptimized'] as String),
      keyPairName: map['keyPairName'] == null ? null : pulumi.Output.create<String>(map['keyPairName'] as String),
      password: map['password'] == null ? null : pulumi.Output.create<String>(map['password'] as String),
      period: map['period'] == null ? null : pulumi.Output.create<int>(map['period'] as int),
      periodUnit: map['periodUnit'] == null ? null : pulumi.Output.create<String>(map['periodUnit'] as String),
      regionId: map['regionId'] == null ? null : pulumi.Output.create<String>(map['regionId'] as String),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      securityEnhancementStrategy: map['securityEnhancementStrategy'] == null ? null : pulumi.Output.create<String>(map['securityEnhancementStrategy'] as String),
      securityGroupIds: map['securityGroupIds'] == null ? null : pulumi.Output.create<List<String>>((map['securityGroupIds'] as List).cast<String>()),
      spotStrategy: map['spotStrategy'] == null ? null : pulumi.Output.create<String>(map['spotStrategy'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      supportCase: map['supportCase'] == null ? null : pulumi.Output.create<String>(map['supportCase'] as String),
      systemDisk: map['systemDisk'] == null ? null : pulumi.Output.create<CustomSystemDisk>(CustomSystemDisk.fromMap((map['systemDisk'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      vswitchId: map['vswitchId'] == null ? null : pulumi.Output.create<String>(map['vswitchId'] as String),
      zoneId: map['zoneId'] == null ? null : pulumi.Output.create<String>(map['zoneId'] as String),
    );
  }
}

