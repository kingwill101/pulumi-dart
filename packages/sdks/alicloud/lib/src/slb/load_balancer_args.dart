// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_slb_load_balancer_load_balancer_args_doc}
/// The set of arguments for LoadBalancer.
/// {@endtemplate}
/// {@macro pulumi_slb_load_balancer_load_balancer_args_doc}
class LoadBalancerArgs {
  /// Specify the IP address of the private network for the SLB instance, which must be in the destination CIDR block of the correspond ing switch.
  final pulumi.Input<String>? address;
  /// The IP version of the SLB instance to be created, which can be set to ipv4 or ipv6 . Default to "ipv4". Now, only internet instance support ipv6 address.
  final pulumi.Input<String>? addressIpVersion;
  /// The network type of the SLB instance. Valid values: ["internet", "intranet"]. If load balancer launched in VPC, this value must be "intranet".
  /// - internet: After an Internet SLB instance is created, the system allocates a public IP address so that the instance can forward requests from the Internet.
  /// - intranet: After an intranet SLB instance is created, the system allocates an intranet IP address so that the instance can only forward intranet requests.
  final pulumi.Input<String>? addressType;
  /// Valid
  /// value is between 1 and 1000, If argument "internet_charge_type" is "paybytraffic", then this value will be ignore.
  final pulumi.Input<int>? bandwidth;
  /// Whether enable the deletion protection or not. on: Enable deletion protection. off: Disable deletion protection. Default to off. Only postpaid instance support this function.
  final pulumi.Input<String>? deleteProtection;
  /// The billing method of the load balancer. Valid values are "PrePaid" and "PostPaid". Default to "PostPaid".
  final pulumi.Input<String>? instanceChargeType;
  /// Valid
  /// values are `PayByBandwidth`, `PayByTraffic`. If this value is "PayByBandwidth", then argument "internet" must be "true". Default is "PayByTraffic". If load balancer launched in VPC, this value must be "PayByTraffic".
  /// Before version 1.10.1, the valid values are "paybybandwidth" and "paybytraffic".
  final pulumi.Input<String>? internetChargeType;
  final pulumi.Input<String>? loadBalancerName;
  /// The specification of the Server Load Balancer instance. Default to empty string indicating it is "Shared-Performance" instance. Launching "Performance-guaranteed" instance, it must be specified. Valid values: `slb.s1.small`, `slb.s2.small`, `slb.s2.medium`.
  final pulumi.Input<String>? loadBalancerSpec;
  /// The primary zone ID of the SLB instance. If not specified, the system will be randomly assigned. You can query the primary and standby zones in a region by calling the DescribeZone API.
  final pulumi.Input<String>? masterZoneId;
  /// The reason of modification protection. It's effective when `modification_protection_status` is `ConsoleProtection`.
  final pulumi.Input<String>? modificationProtectionReason;
  /// The status of modification protection. Valid values: `ConsoleProtection` and `NonProtection`. Default value: `NonProtection`.
  final pulumi.Input<String>? modificationProtectionStatus;
  /// Field `name` has been deprecated from provider version 1.123.1 New field `load_balancer_name` instead.
  final pulumi.Input<String>? name;
  /// The billing method of the load balancer. Valid values are `PayAsYouGo` and `Subscription`. Default to `PayAsYouGo`.
  final pulumi.Input<String>? paymentType;
  /// The duration that you will buy the resource, in month. It is valid when `instance_charge_type` is `PrePaid`. Valid values: [1-9, 12, 24, 36].
  /// &gt; **NOTE:** The attribute `period` is only used to create Subscription instance or modify the PayAsYouGo instance to Subscription. Once effect, it will not be modified that means running `pulumi up` will not effect the resource.
  final pulumi.Input<int>? period;
  /// The Id of resource group which the SLB belongs.
  final pulumi.Input<String>? resourceGroupId;
  /// The standby zone ID of the SLB instance. If not specified, the system will be randomly assigned. You can query the primary and standby zones in a region by calling the DescribeZone API.
  final pulumi.Input<String>? slaveZoneId;
  /// The specification of the Server Load Balancer instance. Default to empty string indicating it is "Shared-Performance" instance.
  /// Launching "[Performance-guaranteed](https://www.alibabacloud.com/help/en/slb/product-overview/announcements-and-updates)" instance, it is must be specified and it valid values are: "slb.s1.small", "slb.s2.small", "slb.s2.medium",
  /// "slb.s3.small", "slb.s3.medium", "slb.s3.large" and "slb.s4.large".
  final pulumi.Input<String>? specification;
  /// The status of slb load balancer. Valid values: `active` and `inactice`. The system default value is `active`.
  ///
  /// &gt; **NOTE:** A "Shared-Performance" instance can be changed to "Performance-guaranteed", but the change is irreversible.
  ///
  /// &gt; **NOTE:** To change a "Shared-Performance" instance to a "Performance-guaranteed" instance, the SLB will have a short probability of business interruption (10 seconds-30 seconds). Advise to change it during the business downturn, or migrate business to other SLB Instances by using GSLB before changing.
  ///
  /// &gt; **NOTE:** Currently, the alibaba cloud international account does not support creating a PrePaid SLB instance.
  final pulumi.Input<String>? status;
  /// A mapping of tags to assign to the resource. The `tags` can have a maximum of 10 tag for every load balancer instance.
  final pulumi.Input<Map<String, String>>? tags;
  /// The vSwitch ID to launch in. If `address_type` is internet, it will be ignore.
  final pulumi.Input<String>? vswitchId;

  /// Creates a new [LoadBalancerArgs].
  /// [address] Specify the IP address of the private network for the SLB instance, which must be in the destination CIDR block of the correspond ing switch.
  /// [addressIpVersion] The IP version of the SLB instance to be created, which can be set to ipv4 or ipv6 . Default to "ipv4". Now, only internet instance support ipv6 address.
  /// [addressType] The network type of the SLB instance. Valid values: ["internet", "intranet"]. If load balancer launched in VPC, this value must be "intranet".
  /// [bandwidth] Valid
  /// [deleteProtection] Whether enable the deletion protection or not. on: Enable deletion protection. off: Disable deletion protection. Default to off. Only postpaid instance support this function.
  /// [instanceChargeType] The billing method of the load balancer. Valid values are "PrePaid" and "PostPaid". Default to "PostPaid".
  /// [internetChargeType] Valid
  /// [loadBalancerName] Optional.
  /// [loadBalancerSpec] The specification of the Server Load Balancer instance. Default to empty string indicating it is "Shared-Performance" instance. Launching "Performance-guaranteed" instance, it must be specified. Valid values: `slb.s1.small`, `slb.s2.small`, `slb.s2.medium`.
  /// [masterZoneId] The primary zone ID of the SLB instance. If not specified, the system will be randomly assigned. You can query the primary and standby zones in a region by calling the DescribeZone API.
  /// [modificationProtectionReason] The reason of modification protection. It's effective when `modification_protection_status` is `ConsoleProtection`.
  /// [modificationProtectionStatus] The status of modification protection. Valid values: `ConsoleProtection` and `NonProtection`. Default value: `NonProtection`.
  /// [name] Field `name` has been deprecated from provider version 1.123.1 New field `load_balancer_name` instead.
  /// [paymentType] The billing method of the load balancer. Valid values are `PayAsYouGo` and `Subscription`. Default to `PayAsYouGo`.
  /// [period] The duration that you will buy the resource, in month. It is valid when `instance_charge_type` is `PrePaid`. Valid values: [1-9, 12, 24, 36].
  /// [resourceGroupId] The Id of resource group which the SLB belongs.
  /// [slaveZoneId] The standby zone ID of the SLB instance. If not specified, the system will be randomly assigned. You can query the primary and standby zones in a region by calling the DescribeZone API.
  /// [specification] The specification of the Server Load Balancer instance. Default to empty string indicating it is "Shared-Performance" instance.
  /// [status] The status of slb load balancer. Valid values: `active` and `inactice`. The system default value is `active`.
  /// [tags] A mapping of tags to assign to the resource. The `tags` can have a maximum of 10 tag for every load balancer instance.
  /// [vswitchId] The vSwitch ID to launch in. If `address_type` is internet, it will be ignore.
  const LoadBalancerArgs({
    this.address,
    this.addressIpVersion,
    this.addressType,
    this.bandwidth,
    this.deleteProtection,
    this.instanceChargeType,
    this.internetChargeType,
    this.loadBalancerName,
    this.loadBalancerSpec,
    this.masterZoneId,
    this.modificationProtectionReason,
    this.modificationProtectionStatus,
    this.name,
    this.paymentType,
    this.period,
    this.resourceGroupId,
    this.slaveZoneId,
    this.specification,
    this.status,
    this.tags,
    this.vswitchId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address,
      'addressIpVersion': ?addressIpVersion,
      'addressType': ?addressType,
      'bandwidth': ?bandwidth,
      'deleteProtection': ?deleteProtection,
      'instanceChargeType': ?instanceChargeType,
      'internetChargeType': ?internetChargeType,
      'loadBalancerName': ?loadBalancerName,
      'loadBalancerSpec': ?loadBalancerSpec,
      'masterZoneId': ?masterZoneId,
      'modificationProtectionReason': ?modificationProtectionReason,
      'modificationProtectionStatus': ?modificationProtectionStatus,
      'name': ?name,
      'paymentType': ?paymentType,
      'period': ?period,
      'resourceGroupId': ?resourceGroupId,
      'slaveZoneId': ?slaveZoneId,
      'specification': ?specification,
      'status': ?status,
      'tags': ?tags,
      'vswitchId': ?vswitchId,
    };
  }

  factory LoadBalancerArgs.fromMap(Map<String, dynamic> map) {
    return LoadBalancerArgs(
      address: (() { final guardedValue = map['address']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      addressIpVersion: (() { final guardedValue = map['addressIpVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      addressType: (() { final guardedValue = map['addressType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      bandwidth: (() { final guardedValue = map['bandwidth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      deleteProtection: (() { final guardedValue = map['deleteProtection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceChargeType: (() { final guardedValue = map['instanceChargeType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      internetChargeType: (() { final guardedValue = map['internetChargeType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      loadBalancerName: (() { final guardedValue = map['loadBalancerName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      loadBalancerSpec: (() { final guardedValue = map['loadBalancerSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      masterZoneId: (() { final guardedValue = map['masterZoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      modificationProtectionReason: (() { final guardedValue = map['modificationProtectionReason']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      modificationProtectionStatus: (() { final guardedValue = map['modificationProtectionStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      paymentType: (() { final guardedValue = map['paymentType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      period: (() { final guardedValue = map['period']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      resourceGroupId: (() { final guardedValue = map['resourceGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      slaveZoneId: (() { final guardedValue = map['slaveZoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      specification: (() { final guardedValue = map['specification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      vswitchId: (() { final guardedValue = map['vswitchId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

