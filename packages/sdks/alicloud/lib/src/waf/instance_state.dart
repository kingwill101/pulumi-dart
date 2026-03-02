// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Instance resources.
class InstanceState {
  /// Specify whether big screen is supported. Valid values: ["0", "1"]. "0" for false and "1" for true.
  final pulumi.Input<String>? bigScreen;
  /// Specify the number of exclusive WAF IP addresses.
  final pulumi.Input<String>? exclusiveIpPackage;
  /// The extra bandwidth. Unit: Mbit/s.
  final pulumi.Input<String>? extBandwidth;
  /// The number of extra domains.
  final pulumi.Input<String>? extDomainPackage;
  /// Log storage size. Unit: T. Valid values: [3, 5, 10, 20, 50].
  final pulumi.Input<String>? logStorage;
  /// Log storage period. Unit: day. Valid values: [180, 360].
  final pulumi.Input<String>? logTime;
  /// Type of configuration change. Valid value: Upgrade.
  final pulumi.Input<String>? modifyType;
  /// Subscription plan:
  /// * China site customers can purchase the following versions of China Mainland region, valid values: ["version_3", "version_4", "version_5"].
  /// * China site customers can purchase the following versions of International region, valid values: ["version_pro_asia", "version_business_asia", "version_enterprise_asia"]
  /// * International site customers can purchase the following versions of China Mainland region: ["version_pro_china", "version_business_china", "version_enterprise_china"]
  /// * International site customers can purchase the following versions of International region: ["version_pro", "version_business", "version_enterprise"].
  final pulumi.Input<String>? packageCode;
  /// Service time of Web Application Firewall.
  final pulumi.Input<int>? period;
  /// Specify whether professional service is supported. Valid values: ["true", "false"]
  final pulumi.Input<String>? prefessionalService;
  /// The instance region ID.
  final pulumi.Input<String>? region;
  /// Renewal period of WAF service. Unit: month
  final pulumi.Input<int>? renewPeriod;
  /// Renewal status of WAF service. Valid values:
  /// * AutoRenewal: The service time of WAF is renewed automatically.
  /// * ManualRenewal (default): The service time of WAF is renewed manually.Specifies whether to configure a Layer-7 proxy, such as Anti-DDoS Pro or CDN, to filter the inbound traffic before it is forwarded to WAF. Valid values: "On" and "Off". Default to "Off".
  final pulumi.Input<String>? renewalStatus;
  /// The resource group ID.
  final pulumi.Input<String>? resourceGroupId;
  /// The status of the instance.
  final pulumi.Input<int>? status;
  /// Subscription of WAF service. Valid values: ["Subscription", "PayAsYouGo"].
  final pulumi.Input<String>? subscriptionType;
  /// Specify whether Log service is supported. Valid values: ["true", "false"]
  final pulumi.Input<String>? wafLog;

  /// Creates a new [InstanceState].
  /// [bigScreen] Specify whether big screen is supported. Valid values: ["0", "1"]. "0" for false and "1" for true.
  /// [exclusiveIpPackage] Specify the number of exclusive WAF IP addresses.
  /// [extBandwidth] The extra bandwidth. Unit: Mbit/s.
  /// [extDomainPackage] The number of extra domains.
  /// [logStorage] Log storage size. Unit: T. Valid values: [3, 5, 10, 20, 50].
  /// [logTime] Log storage period. Unit: day. Valid values: [180, 360].
  /// [modifyType] Type of configuration change. Valid value: Upgrade.
  /// [packageCode] Subscription plan:
  /// [period] Service time of Web Application Firewall.
  /// [prefessionalService] Specify whether professional service is supported. Valid values: ["true", "false"]
  /// [region] The instance region ID.
  /// [renewPeriod] Renewal period of WAF service. Unit: month
  /// [renewalStatus] Renewal status of WAF service. Valid values:
  /// [resourceGroupId] The resource group ID.
  /// [status] The status of the instance.
  /// [subscriptionType] Subscription of WAF service. Valid values: ["Subscription", "PayAsYouGo"].
  /// [wafLog] Specify whether Log service is supported. Valid values: ["true", "false"]
  InstanceState({
    this.bigScreen,
    this.exclusiveIpPackage,
    this.extBandwidth,
    this.extDomainPackage,
    this.logStorage,
    this.logTime,
    this.modifyType,
    this.packageCode,
    this.period,
    this.prefessionalService,
    this.region,
    this.renewPeriod,
    this.renewalStatus,
    this.resourceGroupId,
    this.status,
    this.subscriptionType,
    this.wafLog,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bigScreen': ?bigScreen,
      'exclusiveIpPackage': ?exclusiveIpPackage,
      'extBandwidth': ?extBandwidth,
      'extDomainPackage': ?extDomainPackage,
      'logStorage': ?logStorage,
      'logTime': ?logTime,
      'modifyType': ?modifyType,
      'packageCode': ?packageCode,
      'period': ?period,
      'prefessionalService': ?prefessionalService,
      'region': ?region,
      'renewPeriod': ?renewPeriod,
      'renewalStatus': ?renewalStatus,
      'resourceGroupId': ?resourceGroupId,
      'status': ?status,
      'subscriptionType': ?subscriptionType,
      'wafLog': ?wafLog,
    };
  }

  factory InstanceState.fromMap(Map<String, dynamic> map) {
    return InstanceState(
      bigScreen: map['bigScreen'] == null ? null : (map['bigScreen']! as String).input(),
      exclusiveIpPackage: map['exclusiveIpPackage'] == null ? null : (map['exclusiveIpPackage']! as String).input(),
      extBandwidth: map['extBandwidth'] == null ? null : (map['extBandwidth']! as String).input(),
      extDomainPackage: map['extDomainPackage'] == null ? null : (map['extDomainPackage']! as String).input(),
      logStorage: map['logStorage'] == null ? null : (map['logStorage']! as String).input(),
      logTime: map['logTime'] == null ? null : (map['logTime']! as String).input(),
      modifyType: map['modifyType'] == null ? null : (map['modifyType']! as String).input(),
      packageCode: map['packageCode'] == null ? null : (map['packageCode']! as String).input(),
      period: map['period'] == null ? null : (map['period']! as int).input(),
      prefessionalService: map['prefessionalService'] == null ? null : (map['prefessionalService']! as String).input(),
      region: map['region'] == null ? null : (map['region']! as String).input(),
      renewPeriod: map['renewPeriod'] == null ? null : (map['renewPeriod']! as int).input(),
      renewalStatus: map['renewalStatus'] == null ? null : (map['renewalStatus']! as String).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as int).input(),
      subscriptionType: map['subscriptionType'] == null ? null : (map['subscriptionType']! as String).input(),
      wafLog: map['wafLog'] == null ? null : (map['wafLog']! as String).input(),
    );
  }
}

