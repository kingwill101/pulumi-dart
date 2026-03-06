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
  const InstanceState({
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
      bigScreen: (() { final guardedValue = map['bigScreen']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      exclusiveIpPackage: (() { final guardedValue = map['exclusiveIpPackage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      extBandwidth: (() { final guardedValue = map['extBandwidth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      extDomainPackage: (() { final guardedValue = map['extDomainPackage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      logStorage: (() { final guardedValue = map['logStorage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      logTime: (() { final guardedValue = map['logTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      modifyType: (() { final guardedValue = map['modifyType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      packageCode: (() { final guardedValue = map['packageCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      period: (() { final guardedValue = map['period']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      prefessionalService: (() { final guardedValue = map['prefessionalService']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      renewPeriod: (() { final guardedValue = map['renewPeriod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      renewalStatus: (() { final guardedValue = map['renewalStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupId: (() { final guardedValue = map['resourceGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      subscriptionType: (() { final guardedValue = map['subscriptionType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      wafLog: (() { final guardedValue = map['wafLog']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

