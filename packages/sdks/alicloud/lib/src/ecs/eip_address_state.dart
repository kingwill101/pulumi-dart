// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering EipAddress resources.
class EipAddressState {
  /// The promotion code. This parameter is not required.
  final pulumi.Input<String>? activityId;
  /// The EIP name.
  ///
  /// The name must be 1 to 128 characters in length and start with a letter, and can contain letters, digits, periods (.), underscores (\_), and hyphens (-).
  ///
  /// > **NOTE:**   You cannot specify this parameter if you create a subscription EIP.
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
  /// The time when the EIP was created.
  final pulumi.Input<String>? createTime;
  /// Specifies whether to enable deletion protection. Valid values:
  final pulumi.Input<bool>? deletionProtection;
  /// The description of the EIP.
  ///
  /// The description must be 2 to 256 characters in length. The description must start with a letter but cannot start with `http://` or `https://`.
  ///
  /// > **NOTE:**   You cannot specify this parameter if you create a subscription EIP.
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
  /// > **NOTE:**   You can use resource groups to facilitate resource grouping and permission management for an Alibaba Cloud. For more information, see [What is resource management?](https://www.alibabacloud.com/help/en/doc-detail/94475.html)
  final pulumi.Input<String>? resourceGroupId;
  /// Security protection level.
  /// - When the return is empty, the basic DDoS protection is specified.
  /// - When `antidos_enhanced` is returned, it indicates DDoS protection (enhanced version).
  final pulumi.Input<List<String>>? securityProtectionTypes;
  /// The state of the EIP.
  final pulumi.Input<String>? status;
  /// The tag of the resource
  final pulumi.Input<Map<String, String>>? tags;
  /// The zone of the EIP. When the service type of the IP address pool specified by `PublicIpAddressPoolId` is CloudBox, the default value is the zone of the IP address pool. For more information, see [ListPublicIpAddressPools](https://www.alibabacloud.com/help/en/doc-detail/429433.html).
  ///
  /// The following arguments will be discarded. Please use new fields as soon as possible:
  final pulumi.Input<String>? zone;

  /// Creates a new [EipAddressState].
  /// [activityId] The promotion code. This parameter is not required.
  /// [addressName] The EIP name.
  /// [allocationId] The ID of the EIP instance.
  /// [autoPay] Specifies whether to enable automatic payment. Valid values:
  /// [bandwidth] The maximum bandwidth of the specified EIP. Unit: Mbit/s.
  /// [createTime] The time when the EIP was created.
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
  /// [status] The state of the EIP.
  /// [tags] The tag of the resource
  /// [zone] The zone of the EIP. When the service type of the IP address pool specified by `PublicIpAddressPoolId` is CloudBox, the default value is the zone of the IP address pool. For more information, see [ListPublicIpAddressPools](https://www.alibabacloud.com/help/en/doc-detail/429433.html).
  EipAddressState({
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

  factory EipAddressState.fromMap(Map<String, dynamic> map) {
    return EipAddressState(
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

