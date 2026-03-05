// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_post_pay_module_switch_obj.dart';

/// Input properties used for looking up and filtering Instance resources.
class InstanceState {
  /// Number of servers.
  final pulumi.Input<String>? buyNumber;
  /// Container Image security scan. Interval type, value interval:[0,200000].
  ///
  /// &gt; **NOTE:**  The step size is 20, that is, only multiples of 20 can be filled in.
  final pulumi.Input<String>? containerImageScan;
  /// Container Image security scan. Interval type, value interval:[0,200000].
  ///
  /// &gt; **NOTE:**  The step size is 20, that is, only multiples of 20 can be filled in.
  final pulumi.Input<String>? containerImageScanNew;
  /// The creation time of the resource
  final pulumi.Input<String>? createTime;
  /// Number of cloud honeypot licenses. Interval type, value interval:[20,500].
  ///
  /// &gt; **NOTE:**  This module can only be purchased when honeypot_switch = 1, starting with 20.
  final pulumi.Input<String>? honeypot;
  /// Cloud honeypot. Value:
  /// - 1: Yes.
  /// - 2: No.
  final pulumi.Input<String>? honeypotSwitch;
  /// Change configuration type, value
  /// - Upgrade: Upgrade.
  /// - Downgrade: Downgrade.
  final pulumi.Input<String>? modifyType;
  /// The payment type of the resource
  final pulumi.Input<String>? paymentType;
  /// Prepaid cycle. The unit is Monthly, please enter an integer multiple of 12 for annual paid products.
  ///
  /// &gt; **NOTE:**  must be set when creating a prepaid instance.
  final pulumi.Input<int>? period;
  /// Post-paid signage. Value:
  final pulumi.Input<int>? postPaidFlag;
  /// Automatic binding switch for new assets in host and container protection. Valid values:
  final pulumi.Input<int>? postPaidHostAutoBind;
  /// The version that is automatically bound to the host and container protection of a pay-as-you-go instance. Valid values:
  final pulumi.Input<int>? postPaidHostAutoBindVersion;
  /// The switch status of the pay-as-you-go module. The value is a JSON string. Valid values:
  /// - Key:
  /// - `VUL`: Vulnerability Repair Module.
  /// - `CSPM`: Cloud Security Posture Management Module.
  /// - `AGENTLESS`: Agentless Detection Module.
  /// - `SERVERLESS`: Serverless Security Module.
  /// - `CTDR`: Threat Analysis and Response Module.
  /// - `POST_HOST`: Host and Container Security Module.
  /// - `SDK`: Malicious File Detection SDK Module.
  /// - `RASP`: Application Protection Module.
  /// - `CTDR_STORAGE`: Log Management Module.
  /// - `ANTI_RANSOMWARE`: Anti-Ransomware Management.
  /// - Value: `0` means off, `1` means on
  /// &gt; **NOTE:** Field `post_pay_module_switch` has been deprecated from provider version 1.269.0. New field `post_pay_module_switch_obj` instead.
  final pulumi.Input<String>? postPayModuleSwitch;
  /// Pay-as-you-go module switch. See `post_pay_module_switch_obj` below.
  final pulumi.Input<InstancePostPayModuleSwitchObj>? postPayModuleSwitchObj;
  /// Number of application protection licenses. Interval type, value interval:[1,100000000].
  final pulumi.Input<String>? raspCount;
  /// Automatic renewal cycle, in months.
  ///
  /// &gt; **NOTE:**  When `RenewalStatus` is set to `AutoRenewal`, it must be set.
  final pulumi.Input<int>? renewPeriod;
  /// Automatic renewal period unit, value:
  /// - M: month.
  /// - Y: years.
  ///
  /// &gt; **NOTE:**  Must be set when RenewalStatus = AutoRenewal.
  final pulumi.Input<String>? renewalPeriodUnit;
  /// Automatic renewal status, value:
  /// - AutoRenewal: automatic renewal.
  /// - ManualRenewal: manual renewal.
  ///
  /// Default ManualRenewal.
  final pulumi.Input<String>? renewalStatus;
  /// Anti-ransomware capacity. Unit: GB. Interval type, value interval:[0,9999999999].
  ///
  /// &gt; **NOTE:**  The step size is 10, that is, only multiples of 10 can be filled in.
  final pulumi.Input<String>? sasAntiRansomware;
  /// Cloud platform configuration check scan times, interval type, value range:[15000,9999999999].
  ///
  /// &gt; **NOTE:**  You must have sas_cspm_switch = 1 to purchase this module. The step size is 55000, that is, only multiples of 55000 can be filled in.
  final pulumi.Input<String>? sasCspm;
  /// Cloud platform configuration check switch. Value:
  /// - 0: No.
  /// - 1: Yes.
  final pulumi.Input<String>? sasCspmSwitch;
  /// Security screen. Value:
  /// - true: Yes.
  /// - false: No.
  final pulumi.Input<bool>? sasSc;
  /// Number of malicious file detections. Unit: 10,000 times. Interval type, value interval:[10,9999999999].
  ///
  /// &gt; **NOTE:**  This module can only be purchased when sas_sdk_switch = 1. The step size is 10, that is, only multiples of 10 can be filled in.
  final pulumi.Input<String>? sasSdk;
  /// Malicious file detection SDK.
  final pulumi.Input<String>? sasSdkSwitch;
  /// Log analysis storage capacity. Unit: GB. Interval type, value interval:[0,600000].
  ///
  /// &gt; **NOTE:**  The step size is 10, that is, only multiples of 10 can be filled in.
  final pulumi.Input<String>? sasSlsStorage;
  /// Web tamper-proof switch. Value:
  /// - 0: No.
  /// - 1: Yes.
  final pulumi.Input<String>? sasWebguardBoolean;
  /// Tamper-proof authorization number. Value:
  /// - 0: No
  /// 1: Yes.
  final pulumi.Input<String>? sasWebguardOrderNum;
  /// The resource attribute field representing the resource status.
  final pulumi.Input<String>? status;
  /// The subscription type. Value:
  /// - Subscription: Prepaid.
  /// - PayAsYouGo: Post-paid.
  final pulumi.Input<String>? subscriptionType;
  /// Threat Analysis log storage capacity. Interval type, value interval:[0,9999999999].
  ///
  /// &gt; **NOTE:**  This module can only be purchased when Threat_analysis_switch = 1. The step size is 10, that is, only multiples of 10 can be filled in.
  final pulumi.Input<String>? threatAnalysis;
  /// Threat analysis and response log access traffic. After ThreatAnalysisSwitch1 is selected, it must be selected. Interval type, value interval:[0,9999999999].
  ///
  /// &gt; **NOTE:**  Step size is 100.
  final pulumi.Input<String>? threatAnalysisFlow;
  /// Threat analysis and response log storage capacity. Interval type, value interval:[0,9999999999].
  ///
  /// &gt; **NOTE:**  The step size is 1000, that is, only multiples of 1000 can be filled in.
  final pulumi.Input<String>? threatAnalysisSlsStorage;
  /// Threat analysis. Value:
  /// - 0: No.
  /// - 1: Yes.
  final pulumi.Input<String>? threatAnalysisSwitch;
  /// Threat analysis and response switch (new), values:
  /// - 0: No
  /// - 1: Yes
  final pulumi.Input<String>? threatAnalysisSwitch1;
  /// Number of cores.
  final pulumi.Input<String>? vCore;
  /// Select the security center version. Value:
  /// - level7: Antivirus Edition.
  /// - level3: Premium version.
  /// - level2: Enterprise Edition.
  /// - level8: Ultimate.
  /// - level10: Purchase value-added services only.
  final pulumi.Input<String>? versionCode;
  /// Vulnerability repair times, interval type, value range:[20,100000000].
  ///
  /// &gt; **NOTE:**  This module can only be purchased when vul_switch = 1. Only when the version_code value is level7 or level10. other versions do not need to be purchased separately.
  final pulumi.Input<String>? vulCount;
  /// Vulnerability fix switch. Value:
  /// - 0: No.
  /// - 1: Yes.
  ///
  /// &gt; **NOTE:**  When the value of version_code is level7 or level10, the purchase is allowed. Other versions do not need to be purchased separately.
  final pulumi.Input<String>? vulSwitch;

  /// Creates a new [InstanceState].
  /// [buyNumber] Number of servers.
  /// [containerImageScan] Container Image security scan. Interval type, value interval:[0,200000].
  /// [containerImageScanNew] Container Image security scan. Interval type, value interval:[0,200000].
  /// [createTime] The creation time of the resource
  /// [honeypot] Number of cloud honeypot licenses. Interval type, value interval:[20,500].
  /// [honeypotSwitch] Cloud honeypot. Value:
  /// [modifyType] Change configuration type, value
  /// [paymentType] The payment type of the resource
  /// [period] Prepaid cycle. The unit is Monthly, please enter an integer multiple of 12 for annual paid products.
  /// [postPaidFlag] Post-paid signage. Value:
  /// [postPaidHostAutoBind] Automatic binding switch for new assets in host and container protection. Valid values:
  /// [postPaidHostAutoBindVersion] The version that is automatically bound to the host and container protection of a pay-as-you-go instance. Valid values:
  /// [postPayModuleSwitch] The switch status of the pay-as-you-go module. The value is a JSON string. Valid values:
  /// [postPayModuleSwitchObj] Pay-as-you-go module switch. See `post_pay_module_switch_obj` below.
  /// [raspCount] Number of application protection licenses. Interval type, value interval:[1,100000000].
  /// [renewPeriod] Automatic renewal cycle, in months.
  /// [renewalPeriodUnit] Automatic renewal period unit, value:
  /// [renewalStatus] Automatic renewal status, value:
  /// [sasAntiRansomware] Anti-ransomware capacity. Unit: GB. Interval type, value interval:[0,9999999999].
  /// [sasCspm] Cloud platform configuration check scan times, interval type, value range:[15000,9999999999].
  /// [sasCspmSwitch] Cloud platform configuration check switch. Value:
  /// [sasSc] Security screen. Value:
  /// [sasSdk] Number of malicious file detections. Unit: 10,000 times. Interval type, value interval:[10,9999999999].
  /// [sasSdkSwitch] Malicious file detection SDK.
  /// [sasSlsStorage] Log analysis storage capacity. Unit: GB. Interval type, value interval:[0,600000].
  /// [sasWebguardBoolean] Web tamper-proof switch. Value:
  /// [sasWebguardOrderNum] Tamper-proof authorization number. Value:
  /// [status] The resource attribute field representing the resource status.
  /// [subscriptionType] The subscription type. Value:
  /// [threatAnalysis] Threat Analysis log storage capacity. Interval type, value interval:[0,9999999999].
  /// [threatAnalysisFlow] Threat analysis and response log access traffic. After ThreatAnalysisSwitch1 is selected, it must be selected. Interval type, value interval:[0,9999999999].
  /// [threatAnalysisSlsStorage] Threat analysis and response log storage capacity. Interval type, value interval:[0,9999999999].
  /// [threatAnalysisSwitch] Threat analysis. Value:
  /// [threatAnalysisSwitch1] Threat analysis and response switch (new), values:
  /// [vCore] Number of cores.
  /// [versionCode] Select the security center version. Value:
  /// [vulCount] Vulnerability repair times, interval type, value range:[20,100000000].
  /// [vulSwitch] Vulnerability fix switch. Value:
  InstanceState({
    this.buyNumber,
    this.containerImageScan,
    this.containerImageScanNew,
    this.createTime,
    this.honeypot,
    this.honeypotSwitch,
    this.modifyType,
    this.paymentType,
    this.period,
    this.postPaidFlag,
    this.postPaidHostAutoBind,
    this.postPaidHostAutoBindVersion,
    this.postPayModuleSwitch,
    this.postPayModuleSwitchObj,
    this.raspCount,
    this.renewPeriod,
    this.renewalPeriodUnit,
    this.renewalStatus,
    this.sasAntiRansomware,
    this.sasCspm,
    this.sasCspmSwitch,
    this.sasSc,
    this.sasSdk,
    this.sasSdkSwitch,
    this.sasSlsStorage,
    this.sasWebguardBoolean,
    this.sasWebguardOrderNum,
    this.status,
    this.subscriptionType,
    this.threatAnalysis,
    this.threatAnalysisFlow,
    this.threatAnalysisSlsStorage,
    this.threatAnalysisSwitch,
    this.threatAnalysisSwitch1,
    this.vCore,
    this.versionCode,
    this.vulCount,
    this.vulSwitch,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'buyNumber': ?buyNumber,
      'containerImageScan': ?containerImageScan,
      'containerImageScanNew': ?containerImageScanNew,
      'createTime': ?createTime,
      'honeypot': ?honeypot,
      'honeypotSwitch': ?honeypotSwitch,
      'modifyType': ?modifyType,
      'paymentType': ?paymentType,
      'period': ?period,
      'postPaidFlag': ?postPaidFlag,
      'postPaidHostAutoBind': ?postPaidHostAutoBind,
      'postPaidHostAutoBindVersion': ?postPaidHostAutoBindVersion,
      'postPayModuleSwitch': ?postPayModuleSwitch,
      'postPayModuleSwitchObj': ?pulumi.Input.mapOptionalInputValue<InstancePostPayModuleSwitchObj, Map<String, dynamic>>(postPayModuleSwitchObj, (value) => value.toMap()),
      'raspCount': ?raspCount,
      'renewPeriod': ?renewPeriod,
      'renewalPeriodUnit': ?renewalPeriodUnit,
      'renewalStatus': ?renewalStatus,
      'sasAntiRansomware': ?sasAntiRansomware,
      'sasCspm': ?sasCspm,
      'sasCspmSwitch': ?sasCspmSwitch,
      'sasSc': ?sasSc,
      'sasSdk': ?sasSdk,
      'sasSdkSwitch': ?sasSdkSwitch,
      'sasSlsStorage': ?sasSlsStorage,
      'sasWebguardBoolean': ?sasWebguardBoolean,
      'sasWebguardOrderNum': ?sasWebguardOrderNum,
      'status': ?status,
      'subscriptionType': ?subscriptionType,
      'threatAnalysis': ?threatAnalysis,
      'threatAnalysisFlow': ?threatAnalysisFlow,
      'threatAnalysisSlsStorage': ?threatAnalysisSlsStorage,
      'threatAnalysisSwitch': ?threatAnalysisSwitch,
      'threatAnalysisSwitch1': ?threatAnalysisSwitch1,
      'vCore': ?vCore,
      'versionCode': ?versionCode,
      'vulCount': ?vulCount,
      'vulSwitch': ?vulSwitch,
    };
  }

  factory InstanceState.fromMap(Map<String, dynamic> map) {
    return InstanceState(
      buyNumber: (() { final guardedValue = map['buyNumber']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      containerImageScan: (() { final guardedValue = map['containerImageScan']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      containerImageScanNew: (() { final guardedValue = map['containerImageScanNew']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      honeypot: (() { final guardedValue = map['honeypot']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      honeypotSwitch: (() { final guardedValue = map['honeypotSwitch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      modifyType: (() { final guardedValue = map['modifyType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      paymentType: (() { final guardedValue = map['paymentType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      period: (() { final guardedValue = map['period']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      postPaidFlag: (() { final guardedValue = map['postPaidFlag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      postPaidHostAutoBind: (() { final guardedValue = map['postPaidHostAutoBind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      postPaidHostAutoBindVersion: (() { final guardedValue = map['postPaidHostAutoBindVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      postPayModuleSwitch: (() { final guardedValue = map['postPayModuleSwitch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      postPayModuleSwitchObj: (() { final guardedValue = map['postPayModuleSwitchObj']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstancePostPayModuleSwitchObj.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      raspCount: (() { final guardedValue = map['raspCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      renewPeriod: (() { final guardedValue = map['renewPeriod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      renewalPeriodUnit: (() { final guardedValue = map['renewalPeriodUnit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      renewalStatus: (() { final guardedValue = map['renewalStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sasAntiRansomware: (() { final guardedValue = map['sasAntiRansomware']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sasCspm: (() { final guardedValue = map['sasCspm']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sasCspmSwitch: (() { final guardedValue = map['sasCspmSwitch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sasSc: (() { final guardedValue = map['sasSc']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      sasSdk: (() { final guardedValue = map['sasSdk']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sasSdkSwitch: (() { final guardedValue = map['sasSdkSwitch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sasSlsStorage: (() { final guardedValue = map['sasSlsStorage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sasWebguardBoolean: (() { final guardedValue = map['sasWebguardBoolean']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sasWebguardOrderNum: (() { final guardedValue = map['sasWebguardOrderNum']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subscriptionType: (() { final guardedValue = map['subscriptionType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      threatAnalysis: (() { final guardedValue = map['threatAnalysis']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      threatAnalysisFlow: (() { final guardedValue = map['threatAnalysisFlow']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      threatAnalysisSlsStorage: (() { final guardedValue = map['threatAnalysisSlsStorage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      threatAnalysisSwitch: (() { final guardedValue = map['threatAnalysisSwitch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      threatAnalysisSwitch1: (() { final guardedValue = map['threatAnalysisSwitch1']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vCore: (() { final guardedValue = map['vCore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      versionCode: (() { final guardedValue = map['versionCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vulCount: (() { final guardedValue = map['vulCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vulSwitch: (() { final guardedValue = map['vulSwitch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

