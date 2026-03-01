// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ecs_eip_eip_args_doc}
/// The set of arguments for Eip.
/// {@endtemplate}
/// {@macro pulumi_ecs_eip_eip_args_doc}
class EipArgs {
  final pulumi.Input<String>? activityId;
  /// The name of the EIP instance. This name can have a string of 2 to 128 characters, must contain only alphanumeric characters or hyphens, such as "-",".","_", and must not begin or end with a hyphen, and must not begin with http:// or https://.
  final pulumi.Input<String>? addressName;
  final pulumi.Input<String>? allocationId;
  final pulumi.Input<bool>? autoPay;
  /// Maximum bandwidth to the elastic public network, measured in Mbps (Mega bit per second). If this value is not specified, then automatically sets it to 5 Mbps.
  final pulumi.Input<String>? bandwidth;
  /// Whether enable the deletion protection or not. Default value: `false`.
  /// - true: Enable deletion protection.
  /// - false: Disable deletion protection.
  final pulumi.Input<bool>? deletionProtection;
  /// Description of the EIP instance, This description can have a string of 2 to 256 characters, It cannot begin with http:// or https://. Default value is null.
  final pulumi.Input<String>? description;
  final pulumi.Input<String>? highDefinitionMonitorLogStatus;
  /// (It has been deprecated from version 1.126.0 and using new attribute `payment_type` instead) Elastic IP instance charge type. Valid values are "PrePaid" and "PostPaid". Default to "PostPaid".
  final pulumi.Input<String>? instanceChargeType;
  /// Internet charge type of the EIP, Valid values are `PayByBandwidth`, `PayByTraffic`. Default to `PayByBandwidth`. **NOTE:** From version `1.7.1` to `1.125.0`, it defaults to `PayByTraffic`. It is only "PayByBandwidth" when `instance_charge_type` is PrePaid.
  final pulumi.Input<String>? internetChargeType;
  /// The elastic ip address
  final pulumi.Input<String>? ipAddress;
  /// The line type of the Elastic IP instance. Default to `BGP`. Other type of the isp need to open a whitelist.
  final pulumi.Input<String>? isp;
  final pulumi.Input<String>? logProject;
  final pulumi.Input<String>? logStore;
  final pulumi.Input<String>? mode;
  /// It has been deprecated from version 1.126.0 and using new attribute `address_name` instead.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? netmode;
  /// The billing method of the EIP. Valid values: `Subscription` and `PayAsYouGo`. Default value is `PayAsYouGo`.
  final pulumi.Input<String>? paymentType;
  /// The duration that you will buy the resource, in month. It is valid when `instance_charge_type` is `PrePaid`. Valid values: [1-9, 12, 24, 36]. At present, the provider does not support modify "period" and you can do that via web console.
  /// **NOTE:** The attribute `period` is only used to create Subscription instance or modify the PayAsYouGo instance to Subscription. Once effect, it will not be modified that means running `pulumi up` will not effect the resource.
  final pulumi.Input<int>? period;
  final pulumi.Input<String>? pricingCycle;
  final pulumi.Input<String>? publicIpAddressPoolId;
  /// The Id of resource group which the eip belongs.
  final pulumi.Input<String>? resourceGroupId;
  final pulumi.Input<List<String>>? securityProtectionTypes;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<String>? zone;

  /// Creates a new [EipArgs].
  /// [activityId] Optional.
  /// [addressName] The name of the EIP instance. This name can have a string of 2 to 128 characters, must contain only alphanumeric characters or hyphens, such as "-",".","_", and must not begin or end with a hyphen, and must not begin with http:// or https://.
  /// [allocationId] Optional.
  /// [autoPay] Optional.
  /// [bandwidth] Maximum bandwidth to the elastic public network, measured in Mbps (Mega bit per second). If this value is not specified, then automatically sets it to 5 Mbps.
  /// [deletionProtection] Whether enable the deletion protection or not. Default value: `false`.
  /// [description] Description of the EIP instance, This description can have a string of 2 to 256 characters, It cannot begin with http:// or https://. Default value is null.
  /// [highDefinitionMonitorLogStatus] Optional.
  /// [instanceChargeType] (It has been deprecated from version 1.126.0 and using new attribute `payment_type` instead) Elastic IP instance charge type. Valid values are "PrePaid" and "PostPaid". Default to "PostPaid".
  /// [internetChargeType] Internet charge type of the EIP, Valid values are `PayByBandwidth`, `PayByTraffic`. Default to `PayByBandwidth`. **NOTE:** From version `1.7.1` to `1.125.0`, it defaults to `PayByTraffic`. It is only "PayByBandwidth" when `instance_charge_type` is PrePaid.
  /// [ipAddress] The elastic ip address
  /// [isp] The line type of the Elastic IP instance. Default to `BGP`. Other type of the isp need to open a whitelist.
  /// [logProject] Optional.
  /// [logStore] Optional.
  /// [mode] Optional.
  /// [name] It has been deprecated from version 1.126.0 and using new attribute `address_name` instead.
  /// [netmode] Optional.
  /// [paymentType] The billing method of the EIP. Valid values: `Subscription` and `PayAsYouGo`. Default value is `PayAsYouGo`.
  /// [period] The duration that you will buy the resource, in month. It is valid when `instance_charge_type` is `PrePaid`. Valid values: [1-9, 12, 24, 36]. At present, the provider does not support modify "period" and you can do that via web console.
  /// [pricingCycle] Optional.
  /// [publicIpAddressPoolId] Optional.
  /// [resourceGroupId] The Id of resource group which the eip belongs.
  /// [securityProtectionTypes] Optional.
  /// [tags] A mapping of tags to assign to the resource.
  /// [zone] Optional.
  EipArgs({
    pulumi.Output<String>? activityId,
    pulumi.Output<String>? addressName,
    pulumi.Output<String>? allocationId,
    pulumi.Output<bool>? autoPay,
    pulumi.Output<String>? bandwidth,
    pulumi.Output<bool>? deletionProtection,
    pulumi.Output<String>? description,
    pulumi.Output<String>? highDefinitionMonitorLogStatus,
    pulumi.Output<String>? instanceChargeType,
    pulumi.Output<String>? internetChargeType,
    pulumi.Output<String>? ipAddress,
    pulumi.Output<String>? isp,
    pulumi.Output<String>? logProject,
    pulumi.Output<String>? logStore,
    pulumi.Output<String>? mode,
    pulumi.Output<String>? name,
    pulumi.Output<String>? netmode,
    pulumi.Output<String>? paymentType,
    pulumi.Output<int>? period,
    pulumi.Output<String>? pricingCycle,
    pulumi.Output<String>? publicIpAddressPoolId,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<List<String>>? securityProtectionTypes,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? zone,
  }) :
      activityId = pulumi.Input.asOptionalInput<String>(activityId),
      addressName = pulumi.Input.asOptionalInput<String>(addressName),
      allocationId = pulumi.Input.asOptionalInput<String>(allocationId),
      autoPay = pulumi.Input.asOptionalInput<bool>(autoPay),
      bandwidth = pulumi.Input.asOptionalInput<String>(bandwidth),
      deletionProtection = pulumi.Input.asOptionalInput<bool>(deletionProtection),
      description = pulumi.Input.asOptionalInput<String>(description),
      highDefinitionMonitorLogStatus = pulumi.Input.asOptionalInput<String>(highDefinitionMonitorLogStatus),
      instanceChargeType = pulumi.Input.asOptionalInput<String>(instanceChargeType),
      internetChargeType = pulumi.Input.asOptionalInput<String>(internetChargeType),
      ipAddress = pulumi.Input.asOptionalInput<String>(ipAddress),
      isp = pulumi.Input.asOptionalInput<String>(isp),
      logProject = pulumi.Input.asOptionalInput<String>(logProject),
      logStore = pulumi.Input.asOptionalInput<String>(logStore),
      mode = pulumi.Input.asOptionalInput<String>(mode),
      name = pulumi.Input.asOptionalInput<String>(name),
      netmode = pulumi.Input.asOptionalInput<String>(netmode),
      paymentType = pulumi.Input.asOptionalInput<String>(paymentType),
      period = pulumi.Input.asOptionalInput<int>(period),
      pricingCycle = pulumi.Input.asOptionalInput<String>(pricingCycle),
      publicIpAddressPoolId = pulumi.Input.asOptionalInput<String>(publicIpAddressPoolId),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      securityProtectionTypes = pulumi.Input.asOptionalInput<List<String>>(securityProtectionTypes),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      zone = pulumi.Input.asOptionalInput<String>(zone);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activityId': ?activityId,
      'addressName': ?addressName,
      'allocationId': ?allocationId,
      'autoPay': ?autoPay,
      'bandwidth': ?bandwidth,
      'deletionProtection': ?deletionProtection,
      'description': ?description,
      'highDefinitionMonitorLogStatus': ?highDefinitionMonitorLogStatus,
      'instanceChargeType': ?instanceChargeType,
      'internetChargeType': ?internetChargeType,
      'ipAddress': ?ipAddress,
      'isp': ?isp,
      'logProject': ?logProject,
      'logStore': ?logStore,
      'mode': ?mode,
      'name': ?name,
      'netmode': ?netmode,
      'paymentType': ?paymentType,
      'period': ?period,
      'pricingCycle': ?pricingCycle,
      'publicIpAddressPoolId': ?publicIpAddressPoolId,
      'resourceGroupId': ?resourceGroupId,
      'securityProtectionTypes': ?securityProtectionTypes,
      'tags': ?tags,
      'zone': ?zone,
    };
  }

  factory EipArgs.fromMap(Map<String, dynamic> map) {
    return EipArgs(
      activityId: map['activityId'] == null ? null : pulumi.Output.create<String>(map['activityId'] as String),
      addressName: map['addressName'] == null ? null : pulumi.Output.create<String>(map['addressName'] as String),
      allocationId: map['allocationId'] == null ? null : pulumi.Output.create<String>(map['allocationId'] as String),
      autoPay: map['autoPay'] == null ? null : pulumi.Output.create<bool>(map['autoPay'] as bool),
      bandwidth: map['bandwidth'] == null ? null : pulumi.Output.create<String>(map['bandwidth'] as String),
      deletionProtection: map['deletionProtection'] == null ? null : pulumi.Output.create<bool>(map['deletionProtection'] as bool),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      highDefinitionMonitorLogStatus: map['highDefinitionMonitorLogStatus'] == null ? null : pulumi.Output.create<String>(map['highDefinitionMonitorLogStatus'] as String),
      instanceChargeType: map['instanceChargeType'] == null ? null : pulumi.Output.create<String>(map['instanceChargeType'] as String),
      internetChargeType: map['internetChargeType'] == null ? null : pulumi.Output.create<String>(map['internetChargeType'] as String),
      ipAddress: map['ipAddress'] == null ? null : pulumi.Output.create<String>(map['ipAddress'] as String),
      isp: map['isp'] == null ? null : pulumi.Output.create<String>(map['isp'] as String),
      logProject: map['logProject'] == null ? null : pulumi.Output.create<String>(map['logProject'] as String),
      logStore: map['logStore'] == null ? null : pulumi.Output.create<String>(map['logStore'] as String),
      mode: map['mode'] == null ? null : pulumi.Output.create<String>(map['mode'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      netmode: map['netmode'] == null ? null : pulumi.Output.create<String>(map['netmode'] as String),
      paymentType: map['paymentType'] == null ? null : pulumi.Output.create<String>(map['paymentType'] as String),
      period: map['period'] == null ? null : pulumi.Output.create<int>(map['period'] as int),
      pricingCycle: map['pricingCycle'] == null ? null : pulumi.Output.create<String>(map['pricingCycle'] as String),
      publicIpAddressPoolId: map['publicIpAddressPoolId'] == null ? null : pulumi.Output.create<String>(map['publicIpAddressPoolId'] as String),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      securityProtectionTypes: map['securityProtectionTypes'] == null ? null : pulumi.Output.create<List<String>>((map['securityProtectionTypes'] as List).cast<String>()),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      zone: map['zone'] == null ? null : pulumi.Output.create<String>(map['zone'] as String),
    );
  }
}

