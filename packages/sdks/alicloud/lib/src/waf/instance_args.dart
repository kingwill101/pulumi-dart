// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_waf_instance_instance_args_doc}
/// The set of arguments for Instance.
/// {@endtemplate}
/// {@macro pulumi_waf_instance_instance_args_doc}
class InstanceArgs {
  /// Specify whether big screen is supported. Valid values: ["0", "1"]. "0" for false and "1" for true.
  final pulumi.Input<String> bigScreen;

  /// Specify the number of exclusive WAF IP addresses.
  final pulumi.Input<String> exclusiveIpPackage;

  /// The extra bandwidth. Unit: Mbit/s.
  final pulumi.Input<String> extBandwidth;

  /// The number of extra domains.
  final pulumi.Input<String> extDomainPackage;

  /// Log storage size. Unit: T. Valid values: [3, 5, 10, 20, 50].
  final pulumi.Input<String> logStorage;

  /// Log storage period. Unit: day. Valid values: [180, 360].
  final pulumi.Input<String> logTime;

  /// Type of configuration change. Valid value: Upgrade.
  final pulumi.Input<String>? modifyType;

  /// Subscription plan:
  /// * China site customers can purchase the following versions of China Mainland region, valid values: ["version_3", "version_4", "version_5"].
  /// * China site customers can purchase the following versions of International region, valid values: ["version_pro_asia", "version_business_asia", "version_enterprise_asia"]
  /// * International site customers can purchase the following versions of China Mainland region: ["version_pro_china", "version_business_china", "version_enterprise_china"]
  /// * International site customers can purchase the following versions of International region: ["version_pro", "version_business", "version_enterprise"].
  final pulumi.Input<String> packageCode;

  /// Service time of Web Application Firewall.
  final pulumi.Input<int>? period;

  /// Specify whether professional service is supported. Valid values: ["true", "false"]
  final pulumi.Input<String> prefessionalService;

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

  /// Subscription of WAF service. Valid values: ["Subscription", "PayAsYouGo"].
  final pulumi.Input<String> subscriptionType;

  /// Specify whether Log service is supported. Valid values: ["true", "false"]
  final pulumi.Input<String> wafLog;

  /// Creates a new [InstanceArgs].
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
  /// [subscriptionType] Subscription of WAF service. Valid values: ["Subscription", "PayAsYouGo"].
  /// [wafLog] Specify whether Log service is supported. Valid values: ["true", "false"]
  InstanceArgs({
    required this.bigScreen,
    required this.exclusiveIpPackage,
    required this.extBandwidth,
    required this.extDomainPackage,
    required this.logStorage,
    required this.logTime,
    this.modifyType,
    required this.packageCode,
    this.period,
    required this.prefessionalService,
    this.region,
    this.renewPeriod,
    this.renewalStatus,
    this.resourceGroupId,
    required this.subscriptionType,
    required this.wafLog,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bigScreen': bigScreen,
      'exclusiveIpPackage': exclusiveIpPackage,
      'extBandwidth': extBandwidth,
      'extDomainPackage': extDomainPackage,
      'logStorage': logStorage,
      'logTime': logTime,
      'modifyType': ?modifyType,
      'packageCode': packageCode,
      'period': ?period,
      'prefessionalService': prefessionalService,
      'region': ?region,
      'renewPeriod': ?renewPeriod,
      'renewalStatus': ?renewalStatus,
      'resourceGroupId': ?resourceGroupId,
      'subscriptionType': subscriptionType,
      'wafLog': wafLog,
    };
  }

  factory InstanceArgs.fromMap(Map<String, dynamic> map) {
    return InstanceArgs(
      bigScreen: pulumi.Input.fromValue(map['bigScreen'] as String),
      exclusiveIpPackage: pulumi.Input.fromValue(
        map['exclusiveIpPackage'] as String,
      ),
      extBandwidth: pulumi.Input.fromValue(map['extBandwidth'] as String),
      extDomainPackage: pulumi.Input.fromValue(
        map['extDomainPackage'] as String,
      ),
      logStorage: pulumi.Input.fromValue(map['logStorage'] as String),
      logTime: pulumi.Input.fromValue(map['logTime'] as String),
      modifyType: (() {
        final guardedValue = map['modifyType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      packageCode: pulumi.Input.fromValue(map['packageCode'] as String),
      period: (() {
        final guardedValue = map['period'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      prefessionalService: pulumi.Input.fromValue(
        map['prefessionalService'] as String,
      ),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      renewPeriod: (() {
        final guardedValue = map['renewPeriod'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      renewalStatus: (() {
        final guardedValue = map['renewalStatus'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupId: (() {
        final guardedValue = map['resourceGroupId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      subscriptionType: pulumi.Input.fromValue(
        map['subscriptionType'] as String,
      ),
      wafLog: pulumi.Input.fromValue(map['wafLog'] as String),
    );
  }
}
