// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Eip resources.
class EipState {
  final pulumi.Input<String>? activityId;
  /// The name of the EIP instance. This name can have a string of 2 to 128 characters, must contain only alphanumeric characters or hyphens, such as "-",".","_", and must not begin or end with a hyphen, and must not begin with http:// or https://.
  final pulumi.Input<String>? addressName;
  final pulumi.Input<String>? allocationId;
  final pulumi.Input<bool>? autoPay;
  /// Maximum bandwidth to the elastic public network, measured in Mbps (Mega bit per second). If this value is not specified, then automatically sets it to 5 Mbps.
  final pulumi.Input<String>? bandwidth;
  final pulumi.Input<String>? createTime;
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
  /// The EIP current status.
  final pulumi.Input<String>? status;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<String>? zone;

  /// Creates a new [EipState].
  /// [activityId] Optional.
  /// [addressName] The name of the EIP instance. This name can have a string of 2 to 128 characters, must contain only alphanumeric characters or hyphens, such as "-",".","_", and must not begin or end with a hyphen, and must not begin with http:// or https://.
  /// [allocationId] Optional.
  /// [autoPay] Optional.
  /// [bandwidth] Maximum bandwidth to the elastic public network, measured in Mbps (Mega bit per second). If this value is not specified, then automatically sets it to 5 Mbps.
  /// [createTime] Optional.
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
  /// [status] The EIP current status.
  /// [tags] A mapping of tags to assign to the resource.
  /// [zone] Optional.
  EipState({
    this.activityId,
    this.addressName,
    this.allocationId,
    this.autoPay,
    this.bandwidth,
    this.createTime,
    this.deletionProtection,
    this.description,
    this.highDefinitionMonitorLogStatus,
    this.instanceChargeType,
    this.internetChargeType,
    this.ipAddress,
    this.isp,
    this.logProject,
    this.logStore,
    this.mode,
    this.name,
    this.netmode,
    this.paymentType,
    this.period,
    this.pricingCycle,
    this.publicIpAddressPoolId,
    this.resourceGroupId,
    this.securityProtectionTypes,
    this.status,
    this.tags,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activityId': ?activityId,
      'addressName': ?addressName,
      'allocationId': ?allocationId,
      'autoPay': ?autoPay,
      'bandwidth': ?bandwidth,
      'createTime': ?createTime,
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
      'status': ?status,
      'tags': ?tags,
      'zone': ?zone,
    };
  }

  factory EipState.fromMap(Map<String, dynamic> map) {
    return EipState(
      activityId: map['activityId'] == null ? null : (map['activityId']! as String).input(),
      addressName: map['addressName'] == null ? null : (map['addressName']! as String).input(),
      allocationId: map['allocationId'] == null ? null : (map['allocationId']! as String).input(),
      autoPay: map['autoPay'] == null ? null : (map['autoPay']! as bool).input(),
      bandwidth: map['bandwidth'] == null ? null : (map['bandwidth']! as String).input(),
      createTime: map['createTime'] == null ? null : (map['createTime']! as String).input(),
      deletionProtection: map['deletionProtection'] == null ? null : (map['deletionProtection']! as bool).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      highDefinitionMonitorLogStatus: map['highDefinitionMonitorLogStatus'] == null ? null : (map['highDefinitionMonitorLogStatus']! as String).input(),
      instanceChargeType: map['instanceChargeType'] == null ? null : (map['instanceChargeType']! as String).input(),
      internetChargeType: map['internetChargeType'] == null ? null : (map['internetChargeType']! as String).input(),
      ipAddress: map['ipAddress'] == null ? null : (map['ipAddress']! as String).input(),
      isp: map['isp'] == null ? null : (map['isp']! as String).input(),
      logProject: map['logProject'] == null ? null : (map['logProject']! as String).input(),
      logStore: map['logStore'] == null ? null : (map['logStore']! as String).input(),
      mode: map['mode'] == null ? null : (map['mode']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      netmode: map['netmode'] == null ? null : (map['netmode']! as String).input(),
      paymentType: map['paymentType'] == null ? null : (map['paymentType']! as String).input(),
      period: map['period'] == null ? null : (map['period']! as int).input(),
      pricingCycle: map['pricingCycle'] == null ? null : (map['pricingCycle']! as String).input(),
      publicIpAddressPoolId: map['publicIpAddressPoolId'] == null ? null : (map['publicIpAddressPoolId']! as String).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId']! as String).input(),
      securityProtectionTypes: map['securityProtectionTypes'] == null ? null : ((map['securityProtectionTypes']! as List).cast<String>()).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      zone: map['zone'] == null ? null : (map['zone']! as String).input(),
    );
  }
}

