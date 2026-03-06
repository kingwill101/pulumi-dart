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
  const EipState({
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
      activityId: (() { final guardedValue = map['activityId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      addressName: (() { final guardedValue = map['addressName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      allocationId: (() { final guardedValue = map['allocationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      autoPay: (() { final guardedValue = map['autoPay']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      bandwidth: (() { final guardedValue = map['bandwidth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionProtection: (() { final guardedValue = map['deletionProtection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      highDefinitionMonitorLogStatus: (() { final guardedValue = map['highDefinitionMonitorLogStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceChargeType: (() { final guardedValue = map['instanceChargeType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      internetChargeType: (() { final guardedValue = map['internetChargeType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipAddress: (() { final guardedValue = map['ipAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isp: (() { final guardedValue = map['isp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      logProject: (() { final guardedValue = map['logProject']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      logStore: (() { final guardedValue = map['logStore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      netmode: (() { final guardedValue = map['netmode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      paymentType: (() { final guardedValue = map['paymentType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      period: (() { final guardedValue = map['period']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      pricingCycle: (() { final guardedValue = map['pricingCycle']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicIpAddressPoolId: (() { final guardedValue = map['publicIpAddressPoolId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupId: (() { final guardedValue = map['resourceGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securityProtectionTypes: (() { final guardedValue = map['securityProtectionTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      zone: (() { final guardedValue = map['zone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

