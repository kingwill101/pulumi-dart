// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering CommonBandwithPackage resources.
class CommonBandwithPackageState {
  /// The maximum bandwidth of the Internet Shared Bandwidth instance. Unit: Mbit/s.
  /// Valid values: `1` to `1000`. Default value: `1`.
  final pulumi.Input<String>? bandwidth;

  /// The description of the EIP bandwidth plan. The description must be 2 to 256 characters in length. It must start with a letter but cannot start with `http://` or `https://`.
  final pulumi.Input<String>? bandwidthPackageName;

  /// The creation time.
  final pulumi.Input<String>? createTime;

  /// Specifies whether to enable deletion protection. Valid values:
  final pulumi.Input<bool>? deletionProtection;

  /// The description of the Internet Shared Bandwidth instance.
  /// The description must be 0 to 256 characters in length and cannot start with `http://` or `https://`.
  final pulumi.Input<String>? description;

  /// Specifies whether to forcefully delete the Internet Shared Bandwidth instance. Valid values:
  final pulumi.Input<String>? force;

  /// Billing method of Internet Shared Bandwidth. Valid values:
  /// `PayByTraffic`: billed by primary traffic.
  ///
  /// - `PayByBandwidth` (default): Billing by bandwidth.
  /// - `PayBy95`: Billed as Enhanced 95.
  /// - `PayByDominantTraffic`: billed by primary traffic.
  final pulumi.Input<String>? internetChargeType;

  /// The line type. Valid values:
  ///
  /// - `BGP` (default) All regions support BGP (Multi-ISP).
  /// - `BGP_PRO` BGP (Multi-ISP) Pro lines are available in the China (Hong Kong), Singapore, Japan (Tokyo), Philippines (Manila), Malaysia (Kuala Lumpur), Indonesia (Jakarta), and Thailand (Bangkok) regions.
  ///
  /// If you are allowed to use single-ISP bandwidth, you can also use one of the following values:
  ///
  /// - `ChinaTelecom`
  /// - `ChinaUnicom`
  /// - `ChinaMobile`
  /// - `ChinaTelecom_L2`
  /// - `ChinaUnicom_L2`
  /// - `ChinaMobile_L2`
  ///
  /// If your services are deployed in China East 1 Finance, this parameter is required and you must set the value to `BGP_FinanceCloud`.
  final pulumi.Input<String>? isp;

  /// . Field 'name' has been deprecated from provider version 1.120.0. New field 'bandwidth_package_name' instead.
  final pulumi.Input<String>? name;

  /// The billing type of the Internet Shared Bandwidth instance. Valid values: `PayAsYouGo`, `Subscription`.
  final pulumi.Input<String>? paymentType;

  /// The percentage of the minimum bandwidth commitment. The value is only `20`.
  ///
  /// This parameter is required when the value of `InternetChargeType` is `PayBy95`.
  ///
  /// &gt; **NOTE:** This parameter is available only on the Alibaba Cloud China site.
  final pulumi.Input<int>? ratio;

  /// The pagination token that is used in the next request to retrieve a new page of results.
  final pulumi.Input<String>? regionId;

  /// The ID of the resource group to which you want to move the resource.
  ///
  /// &gt; **NOTE:**   You can use resource groups to facilitate resource grouping and permission management for an Alibaba Cloud. For more information, see [What is resource management?](https://www.alibabacloud.com/help/en/doc-detail/94475.html)
  final pulumi.Input<String>? resourceGroupId;

  /// The edition of Anti-DDoS. If you do not set this parameter, Anti-DDoS Origin Basic is used. If you set the value to AntiDDoS_Enhanced, Anti-DDoS Pro(Premium) is used. It is valid when `internet_charge_type` is `PayBy95`.
  final pulumi.Input<List<String>>? securityProtectionTypes;

  /// The status of the Internet Shared Bandwidth instance. Default value: `Available`.
  final pulumi.Input<String>? status;

  /// The tag of the resource
  final pulumi.Input<Map<String, String>>? tags;

  /// The zone of the Internet Shared Bandwidth instance. This parameter is required if you create an Internet Shared Bandwidth instance for a cloud box.
  ///
  /// The following arguments will be discarded. Please use new fields as soon as possible:
  final pulumi.Input<String>? zone;

  /// Creates a new [CommonBandwithPackageState].
  /// [bandwidth] The maximum bandwidth of the Internet Shared Bandwidth instance. Unit: Mbit/s.
  /// [bandwidthPackageName] The description of the EIP bandwidth plan. The description must be 2 to 256 characters in length. It must start with a letter but cannot start with `http://` or `https://`.
  /// [createTime] The creation time.
  /// [deletionProtection] Specifies whether to enable deletion protection. Valid values:
  /// [description] The description of the Internet Shared Bandwidth instance.
  /// [force] Specifies whether to forcefully delete the Internet Shared Bandwidth instance. Valid values:
  /// [internetChargeType] Billing method of Internet Shared Bandwidth. Valid values:
  /// [isp] The line type. Valid values:
  /// [name] . Field 'name' has been deprecated from provider version 1.120.0. New field 'bandwidth_package_name' instead.
  /// [paymentType] The billing type of the Internet Shared Bandwidth instance. Valid values: `PayAsYouGo`, `Subscription`.
  /// [ratio] The percentage of the minimum bandwidth commitment. The value is only `20`.
  /// [regionId] The pagination token that is used in the next request to retrieve a new page of results.
  /// [resourceGroupId] The ID of the resource group to which you want to move the resource.
  /// [securityProtectionTypes] The edition of Anti-DDoS. If you do not set this parameter, Anti-DDoS Origin Basic is used. If you set the value to AntiDDoS_Enhanced, Anti-DDoS Pro(Premium) is used. It is valid when `internet_charge_type` is `PayBy95`.
  /// [status] The status of the Internet Shared Bandwidth instance. Default value: `Available`.
  /// [tags] The tag of the resource
  /// [zone] The zone of the Internet Shared Bandwidth instance. This parameter is required if you create an Internet Shared Bandwidth instance for a cloud box.
  CommonBandwithPackageState({
    this.bandwidth,
    this.bandwidthPackageName,
    this.createTime,
    this.deletionProtection,
    this.description,
    this.force,
    this.internetChargeType,
    this.isp,
    this.name,
    this.paymentType,
    this.ratio,
    this.regionId,
    this.resourceGroupId,
    this.securityProtectionTypes,
    this.status,
    this.tags,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bandwidth': ?bandwidth,
      'bandwidthPackageName': ?bandwidthPackageName,
      'createTime': ?createTime,
      'deletionProtection': ?deletionProtection,
      'description': ?description,
      'force': ?force,
      'internetChargeType': ?internetChargeType,
      'isp': ?isp,
      'name': ?name,
      'paymentType': ?paymentType,
      'ratio': ?ratio,
      'regionId': ?regionId,
      'resourceGroupId': ?resourceGroupId,
      'securityProtectionTypes': ?securityProtectionTypes,
      'status': ?status,
      'tags': ?tags,
      'zone': ?zone,
    };
  }

  factory CommonBandwithPackageState.fromMap(Map<String, dynamic> map) {
    return CommonBandwithPackageState(
      bandwidth: (() {
        final guardedValue = map['bandwidth'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      bandwidthPackageName: (() {
        final guardedValue = map['bandwidthPackageName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      createTime: (() {
        final guardedValue = map['createTime'];
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
      force: (() {
        final guardedValue = map['force'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      internetChargeType: (() {
        final guardedValue = map['internetChargeType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      isp: (() {
        final guardedValue = map['isp'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      paymentType: (() {
        final guardedValue = map['paymentType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ratio: (() {
        final guardedValue = map['ratio'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      regionId: (() {
        final guardedValue = map['regionId'];
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
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
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
