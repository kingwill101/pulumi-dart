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
    pulumi.Output<String>? bigScreen,
    pulumi.Output<String>? exclusiveIpPackage,
    pulumi.Output<String>? extBandwidth,
    pulumi.Output<String>? extDomainPackage,
    pulumi.Output<String>? logStorage,
    pulumi.Output<String>? logTime,
    pulumi.Output<String>? modifyType,
    pulumi.Output<String>? packageCode,
    pulumi.Output<int>? period,
    pulumi.Output<String>? prefessionalService,
    pulumi.Output<String>? region,
    pulumi.Output<int>? renewPeriod,
    pulumi.Output<String>? renewalStatus,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<int>? status,
    pulumi.Output<String>? subscriptionType,
    pulumi.Output<String>? wafLog,
  }) :
      bigScreen = pulumi.Input.asOptionalInput<String>(bigScreen),
      exclusiveIpPackage = pulumi.Input.asOptionalInput<String>(exclusiveIpPackage),
      extBandwidth = pulumi.Input.asOptionalInput<String>(extBandwidth),
      extDomainPackage = pulumi.Input.asOptionalInput<String>(extDomainPackage),
      logStorage = pulumi.Input.asOptionalInput<String>(logStorage),
      logTime = pulumi.Input.asOptionalInput<String>(logTime),
      modifyType = pulumi.Input.asOptionalInput<String>(modifyType),
      packageCode = pulumi.Input.asOptionalInput<String>(packageCode),
      period = pulumi.Input.asOptionalInput<int>(period),
      prefessionalService = pulumi.Input.asOptionalInput<String>(prefessionalService),
      region = pulumi.Input.asOptionalInput<String>(region),
      renewPeriod = pulumi.Input.asOptionalInput<int>(renewPeriod),
      renewalStatus = pulumi.Input.asOptionalInput<String>(renewalStatus),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      status = pulumi.Input.asOptionalInput<int>(status),
      subscriptionType = pulumi.Input.asOptionalInput<String>(subscriptionType),
      wafLog = pulumi.Input.asOptionalInput<String>(wafLog);

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
      bigScreen: map['bigScreen'] == null ? null : pulumi.Output.create<String>(map['bigScreen'] as String),
      exclusiveIpPackage: map['exclusiveIpPackage'] == null ? null : pulumi.Output.create<String>(map['exclusiveIpPackage'] as String),
      extBandwidth: map['extBandwidth'] == null ? null : pulumi.Output.create<String>(map['extBandwidth'] as String),
      extDomainPackage: map['extDomainPackage'] == null ? null : pulumi.Output.create<String>(map['extDomainPackage'] as String),
      logStorage: map['logStorage'] == null ? null : pulumi.Output.create<String>(map['logStorage'] as String),
      logTime: map['logTime'] == null ? null : pulumi.Output.create<String>(map['logTime'] as String),
      modifyType: map['modifyType'] == null ? null : pulumi.Output.create<String>(map['modifyType'] as String),
      packageCode: map['packageCode'] == null ? null : pulumi.Output.create<String>(map['packageCode'] as String),
      period: map['period'] == null ? null : pulumi.Output.create<int>(map['period'] as int),
      prefessionalService: map['prefessionalService'] == null ? null : pulumi.Output.create<String>(map['prefessionalService'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      renewPeriod: map['renewPeriod'] == null ? null : pulumi.Output.create<int>(map['renewPeriod'] as int),
      renewalStatus: map['renewalStatus'] == null ? null : pulumi.Output.create<String>(map['renewalStatus'] as String),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<int>(map['status'] as int),
      subscriptionType: map['subscriptionType'] == null ? null : pulumi.Output.create<String>(map['subscriptionType'] as String),
      wafLog: map['wafLog'] == null ? null : pulumi.Output.create<String>(map['wafLog'] as String),
    );
  }
}

