// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ecs_eip_address_eip_address_args_doc}
/// The set of arguments for EipAddress.
/// {@endtemplate}
/// {@macro pulumi_ecs_eip_address_eip_address_args_doc}
class EipAddressArgs {
  /// The promotion code. This parameter is not required.
  final pulumi.Input<String>? activityId;

  /// The EIP name.
  ///
  /// The name must be 1 to 128 characters in length and start with a letter, and can contain letters, digits, periods (.), underscores (\_), and hyphens (-).
  ///
  /// &gt; **NOTE:**   You cannot specify this parameter if you create a subscription EIP.
  final pulumi.Input<String>? addressName;

  /// The ID of the EIP instance.
  final pulumi.Input<String>? allocationId;

  /// Specifies whether to enable automatic payment. Valid values:
  final pulumi.Input<bool>? autoPay;

  /// The maximum bandwidth of the specified EIP. Unit: Mbit/s.
  /// - When `payment_type` is set to `PayAsYouGo` and `internet_charge_type` is set to `PayByBandwidth`, valid values for `bandwidth` are `1` to `500`.
  /// - When `payment_type` is set to `PayAsYouGo` and `internet_charge_type` is set to `PayByTraffic`, valid values for `bandwidth` are `1` to `200`.
  /// - When `payment_type` is set to `Subscription`, valid values for `bandwidth` are `1` to `1000`.
  ///
  /// Default value: `5` Mbit /s.
  final pulumi.Input<String>? bandwidth;

  /// Specifies whether to enable deletion protection. Valid values:
  final pulumi.Input<bool>? deletionProtection;

  /// The description of the EIP.
  ///
  /// The description must be 2 to 256 characters in length. The description must start with a letter but cannot start with `http://` or `https://`.
  ///
  /// &gt; **NOTE:**   You cannot specify this parameter if you create a subscription EIP.
  final pulumi.Input<String>? description;

  /// The status of fine-grained monitoring. Valid values:
  /// - `ON`
  /// - `OFF`
  final pulumi.Input<String>? highDefinitionMonitorLogStatus;

  /// . Field 'instance_charge_type' has been deprecated from provider version 1.126.0. New field 'payment_type' instead.
  final pulumi.Input<String>? instanceChargeType;

  /// The metering method of the EIP. Valid values:
  /// - `PayByBandwidth` (default): pay-by-bandwidth.
  /// - `PayByTraffic`: pay-by-data-transfer.
  ///
  /// When `payment_type` is set to `Subscription`, you must set `internet_charge_type` to `PayByBandwidth`.
  ///
  /// When `payment_type` is set to `PayAsYouGo`, set `internet_charge_type` to `PayByBandwidth` or `PayByTraffic`.
  final pulumi.Input<String>? internetChargeType;

  /// The IP address of the EIP. Supports a maximum of 50 EIPs.
  final pulumi.Input<String>? ipAddress;

  /// The line type. Valid values:
  /// - `BGP` (default): BGP (Multi-ISP) line The BGP (Multi-ISP) line is supported in all regions.
  /// - `BGP_PRO`: BGP (Multi-ISP) Pro line The BGP (Multi-ISP) Pro line is supported in the China (Hong Kong), Singapore, Malaysia (Kuala Lumpur), Philippines (Manila), Indonesia (Jakarta), and Thailand (Bangkok) regions.
  ///
  /// For more information about the BGP (Multi-ISP) line and BGP (Multi-ISP) Pro line, see the "Line types" section of [What is EIP?](https://www.alibabacloud.com/help/en/doc-detail/32321.html)
  ///
  /// If you are allowed to use single-ISP bandwidth, you can also choose one of the following values:
  /// - `ChinaTelecom`
  /// - `ChinaUnicom`
  /// - `ChinaMobile`
  /// - `ChinaTelecom_L2`
  /// - `ChinaUnicom_L2`
  /// - `ChinaMobile_L2`
  ///
  /// If your services are deployed in China East 1 Finance, this parameter is required and you must set the parameter to `BGP_FinanceCloud`.
  final pulumi.Input<String>? isp;

  /// The name of the Simple Log Service (SLS) project.
  final pulumi.Input<String>? logProject;

  /// The name of the Logstore.
  final pulumi.Input<String>? logStore;

  /// The association mode. Valid values:
  /// - `NAT` (default): NAT mode
  /// - `MULTI_BINDED`: multi-EIP-to-ENI mode
  /// - `BINDED`: cut-network interface controller mode
  final pulumi.Input<String>? mode;

  /// . Field 'name' has been deprecated from provider version 1.126.0. New field 'address_name' instead.
  final pulumi.Input<String>? name;

  /// The network type. By default, this value is set to `public`, which specifies the public network type.
  final pulumi.Input<String>? netmode;

  /// The billing method of the EIP. Valid values:
  /// - `Subscription`: subscription
  /// - `PayAsYouGo` (default): pay-as-you-go
  ///
  /// If `payment_type` is set to `Subscription`, set `internet_charge_type` to `PayByBandwidth`. If `payment_type` is set to `PayAsYouGo`, set `internet_charge_type` to `PayByBandwidth` or `PayByTraffic`.
  final pulumi.Input<String>? paymentType;

  /// Duration of purchase. When the value of `pricing_cycle` is `Month`, the value range of `period` is `1` to `9`. When the value of `pricing_cycle` is `Year`, the value range of `period` is `1` to `5`. If the value of the `payment_type` parameter is `Subscription`, this parameter is required. If the value of the `payment_type` parameter is `PayAsYouGo`, this parameter is left blank.
  final pulumi.Input<int>? period;

  /// The billing cycle of the subscription EIP. Valid values:
  /// - `Month` (default)
  /// - `Year`
  ///
  /// If `payment_type` is set to `Subscription`, this parameter is required. If `payment_type` is set to `PayAsYouGo`, this parameter is not required.
  final pulumi.Input<String>? pricingCycle;

  /// The ID of the IP address pool. The EIP is allocated from the IP address pool. By default, the IP address pool feature is unavailable. To use the IP address pool, apply for the privilege in the Quota Center console. For more information, see the "Request a quota increase in the Quota Center console" section in [Manage EIP quotas](https://www.alibabacloud.com/help/en/doc-detail/108213.html).
  final pulumi.Input<String>? publicIpAddressPoolId;

  /// The ID of the resource group to which you want to move the resource.
  ///
  /// &gt; **NOTE:**   You can use resource groups to facilitate resource grouping and permission management for an Alibaba Cloud. For more information, see [What is resource management?](https://www.alibabacloud.com/help/en/doc-detail/94475.html)
  final pulumi.Input<String>? resourceGroupId;

  /// Security protection level.
  /// - When the return is empty, the basic DDoS protection is specified.
  /// - When `antidos_enhanced` is returned, it indicates DDoS protection (enhanced version).
  final pulumi.Input<List<String>>? securityProtectionTypes;

  /// The tag of the resource
  final pulumi.Input<Map<String, String>>? tags;

  /// The zone of the EIP. When the service type of the IP address pool specified by `PublicIpAddressPoolId` is CloudBox, the default value is the zone of the IP address pool. For more information, see [ListPublicIpAddressPools](https://www.alibabacloud.com/help/en/doc-detail/429433.html).
  ///
  /// The following arguments will be discarded. Please use new fields as soon as possible:
  final pulumi.Input<String>? zone;

  /// Creates a new [EipAddressArgs].
  /// [activityId] The promotion code. This parameter is not required.
  /// [addressName] The EIP name.
  /// [allocationId] The ID of the EIP instance.
  /// [autoPay] Specifies whether to enable automatic payment. Valid values:
  /// [bandwidth] The maximum bandwidth of the specified EIP. Unit: Mbit/s.
  /// [deletionProtection] Specifies whether to enable deletion protection. Valid values:
  /// [description] The description of the EIP.
  /// [highDefinitionMonitorLogStatus] The status of fine-grained monitoring. Valid values:
  /// [instanceChargeType] . Field 'instance_charge_type' has been deprecated from provider version 1.126.0. New field 'payment_type' instead.
  /// [internetChargeType] The metering method of the EIP. Valid values:
  /// [ipAddress] The IP address of the EIP. Supports a maximum of 50 EIPs.
  /// [isp] The line type. Valid values:
  /// [logProject] The name of the Simple Log Service (SLS) project.
  /// [logStore] The name of the Logstore.
  /// [mode] The association mode. Valid values:
  /// [name] . Field 'name' has been deprecated from provider version 1.126.0. New field 'address_name' instead.
  /// [netmode] The network type. By default, this value is set to `public`, which specifies the public network type.
  /// [paymentType] The billing method of the EIP. Valid values:
  /// [period] Duration of purchase. When the value of `pricing_cycle` is `Month`, the value range of `period` is `1` to `9`. When the value of `pricing_cycle` is `Year`, the value range of `period` is `1` to `5`. If the value of the `payment_type` parameter is `Subscription`, this parameter is required. If the value of the `payment_type` parameter is `PayAsYouGo`, this parameter is left blank.
  /// [pricingCycle] The billing cycle of the subscription EIP. Valid values:
  /// [publicIpAddressPoolId] The ID of the IP address pool. The EIP is allocated from the IP address pool. By default, the IP address pool feature is unavailable. To use the IP address pool, apply for the privilege in the Quota Center console. For more information, see the "Request a quota increase in the Quota Center console" section in [Manage EIP quotas](https://www.alibabacloud.com/help/en/doc-detail/108213.html).
  /// [resourceGroupId] The ID of the resource group to which you want to move the resource.
  /// [securityProtectionTypes] Security protection level.
  /// [tags] The tag of the resource
  /// [zone] The zone of the EIP. When the service type of the IP address pool specified by `PublicIpAddressPoolId` is CloudBox, the default value is the zone of the IP address pool. For more information, see [ListPublicIpAddressPools](https://www.alibabacloud.com/help/en/doc-detail/429433.html).
  EipAddressArgs({
    this.activityId,
    this.addressName,
    this.allocationId,
    this.autoPay,
    this.bandwidth,
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

  factory EipAddressArgs.fromMap(Map<String, dynamic> map) {
    return EipAddressArgs(
      activityId: (() {
        final guardedValue = map['activityId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      addressName: (() {
        final guardedValue = map['addressName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      allocationId: (() {
        final guardedValue = map['allocationId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      autoPay: (() {
        final guardedValue = map['autoPay'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      bandwidth: (() {
        final guardedValue = map['bandwidth'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      deletionProtection: (() {
        final guardedValue = map['deletionProtection'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      highDefinitionMonitorLogStatus: (() {
        final guardedValue = map['highDefinitionMonitorLogStatus'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      instanceChargeType: (() {
        final guardedValue = map['instanceChargeType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      internetChargeType: (() {
        final guardedValue = map['internetChargeType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ipAddress: (() {
        final guardedValue = map['ipAddress'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      isp: (() {
        final guardedValue = map['isp'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      logProject: (() {
        final guardedValue = map['logProject'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      logStore: (() {
        final guardedValue = map['logStore'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      mode: (() {
        final guardedValue = map['mode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      netmode: (() {
        final guardedValue = map['netmode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      paymentType: (() {
        final guardedValue = map['paymentType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      period: (() {
        final guardedValue = map['period'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      pricingCycle: (() {
        final guardedValue = map['pricingCycle'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      publicIpAddressPoolId: (() {
        final guardedValue = map['publicIpAddressPoolId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupId: (() {
        final guardedValue = map['resourceGroupId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      securityProtectionTypes: (() {
        final guardedValue = map['securityProtectionTypes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      zone: (() {
        final guardedValue = map['zone'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
