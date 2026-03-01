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
    String? activityId,
    String? addressName,
    String? allocationId,
    bool? autoPay,
    String? bandwidth,
    bool? deletionProtection,
    String? description,
    String? highDefinitionMonitorLogStatus,
    String? instanceChargeType,
    String? internetChargeType,
    String? ipAddress,
    String? isp,
    String? logProject,
    String? logStore,
    String? mode,
    String? name,
    String? netmode,
    String? paymentType,
    int? period,
    String? pricingCycle,
    String? publicIpAddressPoolId,
    String? resourceGroupId,
    List<String>? securityProtectionTypes,
    Map<String, String>? tags,
    String? zone,
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
      activityId: map['activityId'] == null ? null : map['activityId'] as String,
      addressName: map['addressName'] == null ? null : map['addressName'] as String,
      allocationId: map['allocationId'] == null ? null : map['allocationId'] as String,
      autoPay: map['autoPay'] == null ? null : map['autoPay'] as bool,
      bandwidth: map['bandwidth'] == null ? null : map['bandwidth'] as String,
      deletionProtection: map['deletionProtection'] == null ? null : map['deletionProtection'] as bool,
      description: map['description'] == null ? null : map['description'] as String,
      highDefinitionMonitorLogStatus: map['highDefinitionMonitorLogStatus'] == null ? null : map['highDefinitionMonitorLogStatus'] as String,
      instanceChargeType: map['instanceChargeType'] == null ? null : map['instanceChargeType'] as String,
      internetChargeType: map['internetChargeType'] == null ? null : map['internetChargeType'] as String,
      ipAddress: map['ipAddress'] == null ? null : map['ipAddress'] as String,
      isp: map['isp'] == null ? null : map['isp'] as String,
      logProject: map['logProject'] == null ? null : map['logProject'] as String,
      logStore: map['logStore'] == null ? null : map['logStore'] as String,
      mode: map['mode'] == null ? null : map['mode'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      netmode: map['netmode'] == null ? null : map['netmode'] as String,
      paymentType: map['paymentType'] == null ? null : map['paymentType'] as String,
      period: map['period'] == null ? null : map['period'] as int,
      pricingCycle: map['pricingCycle'] == null ? null : map['pricingCycle'] as String,
      publicIpAddressPoolId: map['publicIpAddressPoolId'] == null ? null : map['publicIpAddressPoolId'] as String,
      resourceGroupId: map['resourceGroupId'] == null ? null : map['resourceGroupId'] as String,
      securityProtectionTypes: map['securityProtectionTypes'] == null ? null : (map['securityProtectionTypes'] as List).cast<String>(),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      zone: map['zone'] == null ? null : map['zone'] as String,
    );
  }
}

