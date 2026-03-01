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
    required pulumi.Output<String> bigScreen,
    required pulumi.Output<String> exclusiveIpPackage,
    required pulumi.Output<String> extBandwidth,
    required pulumi.Output<String> extDomainPackage,
    required pulumi.Output<String> logStorage,
    required pulumi.Output<String> logTime,
    pulumi.Output<String>? modifyType,
    required pulumi.Output<String> packageCode,
    pulumi.Output<int>? period,
    required pulumi.Output<String> prefessionalService,
    pulumi.Output<String>? region,
    pulumi.Output<int>? renewPeriod,
    pulumi.Output<String>? renewalStatus,
    pulumi.Output<String>? resourceGroupId,
    required pulumi.Output<String> subscriptionType,
    required pulumi.Output<String> wafLog,
  }) :
      bigScreen = pulumi.Input.asInput<String>(bigScreen),
      exclusiveIpPackage = pulumi.Input.asInput<String>(exclusiveIpPackage),
      extBandwidth = pulumi.Input.asInput<String>(extBandwidth),
      extDomainPackage = pulumi.Input.asInput<String>(extDomainPackage),
      logStorage = pulumi.Input.asInput<String>(logStorage),
      logTime = pulumi.Input.asInput<String>(logTime),
      modifyType = pulumi.Input.asOptionalInput<String>(modifyType),
      packageCode = pulumi.Input.asInput<String>(packageCode),
      period = pulumi.Input.asOptionalInput<int>(period),
      prefessionalService = pulumi.Input.asInput<String>(prefessionalService),
      region = pulumi.Input.asOptionalInput<String>(region),
      renewPeriod = pulumi.Input.asOptionalInput<int>(renewPeriod),
      renewalStatus = pulumi.Input.asOptionalInput<String>(renewalStatus),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      subscriptionType = pulumi.Input.asInput<String>(subscriptionType),
      wafLog = pulumi.Input.asInput<String>(wafLog);

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
      bigScreen: pulumi.Output.create<String>(map['bigScreen'] as String),
      exclusiveIpPackage: pulumi.Output.create<String>(map['exclusiveIpPackage'] as String),
      extBandwidth: pulumi.Output.create<String>(map['extBandwidth'] as String),
      extDomainPackage: pulumi.Output.create<String>(map['extDomainPackage'] as String),
      logStorage: pulumi.Output.create<String>(map['logStorage'] as String),
      logTime: pulumi.Output.create<String>(map['logTime'] as String),
      modifyType: map['modifyType'] == null ? null : pulumi.Output.create<String>(map['modifyType'] as String),
      packageCode: pulumi.Output.create<String>(map['packageCode'] as String),
      period: map['period'] == null ? null : pulumi.Output.create<int>(map['period'] as int),
      prefessionalService: pulumi.Output.create<String>(map['prefessionalService'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      renewPeriod: map['renewPeriod'] == null ? null : pulumi.Output.create<int>(map['renewPeriod'] as int),
      renewalStatus: map['renewalStatus'] == null ? null : pulumi.Output.create<String>(map['renewalStatus'] as String),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      subscriptionType: pulumi.Output.create<String>(map['subscriptionType'] as String),
      wafLog: pulumi.Output.create<String>(map['wafLog'] as String),
    );
  }
}

