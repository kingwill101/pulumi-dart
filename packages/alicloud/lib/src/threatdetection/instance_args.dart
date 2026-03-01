// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_post_pay_module_switch_obj.dart';

/// {@template pulumi_threatdetection_instance_instance_args_doc}
/// The set of arguments for Instance.
/// {@endtemplate}
/// {@macro pulumi_threatdetection_instance_instance_args_doc}
class InstanceArgs {
  /// Number of servers.
  final pulumi.Input<String>? buyNumber;
  /// Container Image security scan. Interval type, value interval:[0,200000].
  ///
  /// > **NOTE:**  The step size is 20, that is, only multiples of 20 can be filled in.
  final pulumi.Input<String>? containerImageScan;
  /// Container Image security scan. Interval type, value interval:[0,200000].
  ///
  /// > **NOTE:**  The step size is 20, that is, only multiples of 20 can be filled in.
  final pulumi.Input<String>? containerImageScanNew;
  /// Number of cloud honeypot licenses. Interval type, value interval:[20,500].
  ///
  /// > **NOTE:**  This module can only be purchased when honeypot_switch = 1, starting with 20.
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
  final pulumi.Input<String> paymentType;
  /// Prepaid cycle. The unit is Monthly, please enter an integer multiple of 12 for annual paid products.
  ///
  /// > **NOTE:**  must be set when creating a prepaid instance.
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
  /// > **NOTE:** Field `post_pay_module_switch` has been deprecated from provider version 1.269.0. New field `post_pay_module_switch_obj` instead.
  final pulumi.Input<String>? postPayModuleSwitch;
  /// Pay-as-you-go module switch. See `post_pay_module_switch_obj` below.
  final pulumi.Input<InstancePostPayModuleSwitchObj>? postPayModuleSwitchObj;
  /// Number of application protection licenses. Interval type, value interval:[1,100000000].
  final pulumi.Input<String>? raspCount;
  /// Automatic renewal cycle, in months.
  ///
  /// > **NOTE:**  When `RenewalStatus` is set to `AutoRenewal`, it must be set.
  final pulumi.Input<int>? renewPeriod;
  /// Automatic renewal period unit, value:
  /// - M: month.
  /// - Y: years.
  ///
  /// > **NOTE:**  Must be set when RenewalStatus = AutoRenewal.
  final pulumi.Input<String>? renewalPeriodUnit;
  /// Automatic renewal status, value:
  /// - AutoRenewal: automatic renewal.
  /// - ManualRenewal: manual renewal.
  ///
  /// Default ManualRenewal.
  final pulumi.Input<String>? renewalStatus;
  /// Anti-ransomware capacity. Unit: GB. Interval type, value interval:[0,9999999999].
  ///
  /// > **NOTE:**  The step size is 10, that is, only multiples of 10 can be filled in.
  final pulumi.Input<String>? sasAntiRansomware;
  /// Cloud platform configuration check scan times, interval type, value range:[15000,9999999999].
  ///
  /// > **NOTE:**  You must have sas_cspm_switch = 1 to purchase this module. The step size is 55000, that is, only multiples of 55000 can be filled in.
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
  /// > **NOTE:**  This module can only be purchased when sas_sdk_switch = 1. The step size is 10, that is, only multiples of 10 can be filled in.
  final pulumi.Input<String>? sasSdk;
  /// Malicious file detection SDK.
  final pulumi.Input<String>? sasSdkSwitch;
  /// Log analysis storage capacity. Unit: GB. Interval type, value interval:[0,600000].
  ///
  /// > **NOTE:**  The step size is 10, that is, only multiples of 10 can be filled in.
  final pulumi.Input<String>? sasSlsStorage;
  /// Web tamper-proof switch. Value:
  /// - 0: No.
  /// - 1: Yes.
  final pulumi.Input<String>? sasWebguardBoolean;
  /// Tamper-proof authorization number. Value:
  /// - 0: No
  /// 1: Yes.
  final pulumi.Input<String>? sasWebguardOrderNum;
  /// The subscription type. Value:
  /// - Subscription: Prepaid.
  /// - PayAsYouGo: Post-paid.
  final pulumi.Input<String>? subscriptionType;
  /// Threat Analysis log storage capacity. Interval type, value interval:[0,9999999999].
  ///
  /// > **NOTE:**  This module can only be purchased when Threat_analysis_switch = 1. The step size is 10, that is, only multiples of 10 can be filled in.
  final pulumi.Input<String>? threatAnalysis;
  /// Threat analysis and response log access traffic. After ThreatAnalysisSwitch1 is selected, it must be selected. Interval type, value interval:[0,9999999999].
  ///
  /// > **NOTE:**  Step size is 100.
  final pulumi.Input<String>? threatAnalysisFlow;
  /// Threat analysis and response log storage capacity. Interval type, value interval:[0,9999999999].
  ///
  /// > **NOTE:**  The step size is 1000, that is, only multiples of 1000 can be filled in.
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
  /// > **NOTE:**  This module can only be purchased when vul_switch = 1. Only when the version_code value is level7 or level10. other versions do not need to be purchased separately.
  final pulumi.Input<String>? vulCount;
  /// Vulnerability fix switch. Value:
  /// - 0: No.
  /// - 1: Yes.
  ///
  /// > **NOTE:**  When the value of version_code is level7 or level10, the purchase is allowed. Other versions do not need to be purchased separately.
  final pulumi.Input<String>? vulSwitch;

  /// Creates a new [InstanceArgs].
  /// [buyNumber] Number of servers.
  /// [containerImageScan] Container Image security scan. Interval type, value interval:[0,200000].
  /// [containerImageScanNew] Container Image security scan. Interval type, value interval:[0,200000].
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
  InstanceArgs({
    String? buyNumber,
    String? containerImageScan,
    String? containerImageScanNew,
    String? honeypot,
    String? honeypotSwitch,
    String? modifyType,
    required String paymentType,
    int? period,
    int? postPaidFlag,
    int? postPaidHostAutoBind,
    int? postPaidHostAutoBindVersion,
    String? postPayModuleSwitch,
    InstancePostPayModuleSwitchObj? postPayModuleSwitchObj,
    String? raspCount,
    int? renewPeriod,
    String? renewalPeriodUnit,
    String? renewalStatus,
    String? sasAntiRansomware,
    String? sasCspm,
    String? sasCspmSwitch,
    bool? sasSc,
    String? sasSdk,
    String? sasSdkSwitch,
    String? sasSlsStorage,
    String? sasWebguardBoolean,
    String? sasWebguardOrderNum,
    String? subscriptionType,
    String? threatAnalysis,
    String? threatAnalysisFlow,
    String? threatAnalysisSlsStorage,
    String? threatAnalysisSwitch,
    String? threatAnalysisSwitch1,
    String? vCore,
    String? versionCode,
    String? vulCount,
    String? vulSwitch,
  }) :
      buyNumber = pulumi.Input.asOptionalInput<String>(buyNumber),
      containerImageScan = pulumi.Input.asOptionalInput<String>(containerImageScan),
      containerImageScanNew = pulumi.Input.asOptionalInput<String>(containerImageScanNew),
      honeypot = pulumi.Input.asOptionalInput<String>(honeypot),
      honeypotSwitch = pulumi.Input.asOptionalInput<String>(honeypotSwitch),
      modifyType = pulumi.Input.asOptionalInput<String>(modifyType),
      paymentType = pulumi.Input.asInput<String>(paymentType),
      period = pulumi.Input.asOptionalInput<int>(period),
      postPaidFlag = pulumi.Input.asOptionalInput<int>(postPaidFlag),
      postPaidHostAutoBind = pulumi.Input.asOptionalInput<int>(postPaidHostAutoBind),
      postPaidHostAutoBindVersion = pulumi.Input.asOptionalInput<int>(postPaidHostAutoBindVersion),
      postPayModuleSwitch = pulumi.Input.asOptionalInput<String>(postPayModuleSwitch),
      postPayModuleSwitchObj = pulumi.Input.asOptionalInput<InstancePostPayModuleSwitchObj>(postPayModuleSwitchObj),
      raspCount = pulumi.Input.asOptionalInput<String>(raspCount),
      renewPeriod = pulumi.Input.asOptionalInput<int>(renewPeriod),
      renewalPeriodUnit = pulumi.Input.asOptionalInput<String>(renewalPeriodUnit),
      renewalStatus = pulumi.Input.asOptionalInput<String>(renewalStatus),
      sasAntiRansomware = pulumi.Input.asOptionalInput<String>(sasAntiRansomware),
      sasCspm = pulumi.Input.asOptionalInput<String>(sasCspm),
      sasCspmSwitch = pulumi.Input.asOptionalInput<String>(sasCspmSwitch),
      sasSc = pulumi.Input.asOptionalInput<bool>(sasSc),
      sasSdk = pulumi.Input.asOptionalInput<String>(sasSdk),
      sasSdkSwitch = pulumi.Input.asOptionalInput<String>(sasSdkSwitch),
      sasSlsStorage = pulumi.Input.asOptionalInput<String>(sasSlsStorage),
      sasWebguardBoolean = pulumi.Input.asOptionalInput<String>(sasWebguardBoolean),
      sasWebguardOrderNum = pulumi.Input.asOptionalInput<String>(sasWebguardOrderNum),
      subscriptionType = pulumi.Input.asOptionalInput<String>(subscriptionType),
      threatAnalysis = pulumi.Input.asOptionalInput<String>(threatAnalysis),
      threatAnalysisFlow = pulumi.Input.asOptionalInput<String>(threatAnalysisFlow),
      threatAnalysisSlsStorage = pulumi.Input.asOptionalInput<String>(threatAnalysisSlsStorage),
      threatAnalysisSwitch = pulumi.Input.asOptionalInput<String>(threatAnalysisSwitch),
      threatAnalysisSwitch1 = pulumi.Input.asOptionalInput<String>(threatAnalysisSwitch1),
      vCore = pulumi.Input.asOptionalInput<String>(vCore),
      versionCode = pulumi.Input.asOptionalInput<String>(versionCode),
      vulCount = pulumi.Input.asOptionalInput<String>(vulCount),
      vulSwitch = pulumi.Input.asOptionalInput<String>(vulSwitch);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'buyNumber': ?buyNumber,
      'containerImageScan': ?containerImageScan,
      'containerImageScanNew': ?containerImageScanNew,
      'honeypot': ?honeypot,
      'honeypotSwitch': ?honeypotSwitch,
      'modifyType': ?modifyType,
      'paymentType': paymentType,
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

  factory InstanceArgs.fromMap(Map<String, dynamic> map) {
    return InstanceArgs(
      buyNumber: map['buyNumber'] == null ? null : map['buyNumber'] as String,
      containerImageScan: map['containerImageScan'] == null ? null : map['containerImageScan'] as String,
      containerImageScanNew: map['containerImageScanNew'] == null ? null : map['containerImageScanNew'] as String,
      honeypot: map['honeypot'] == null ? null : map['honeypot'] as String,
      honeypotSwitch: map['honeypotSwitch'] == null ? null : map['honeypotSwitch'] as String,
      modifyType: map['modifyType'] == null ? null : map['modifyType'] as String,
      paymentType: map['paymentType'] as String,
      period: map['period'] == null ? null : map['period'] as int,
      postPaidFlag: map['postPaidFlag'] == null ? null : map['postPaidFlag'] as int,
      postPaidHostAutoBind: map['postPaidHostAutoBind'] == null ? null : map['postPaidHostAutoBind'] as int,
      postPaidHostAutoBindVersion: map['postPaidHostAutoBindVersion'] == null ? null : map['postPaidHostAutoBindVersion'] as int,
      postPayModuleSwitch: map['postPayModuleSwitch'] == null ? null : map['postPayModuleSwitch'] as String,
      postPayModuleSwitchObj: map['postPayModuleSwitchObj'] == null ? null : InstancePostPayModuleSwitchObj.fromMap((map['postPayModuleSwitchObj'] as Map).cast<String, dynamic>()),
      raspCount: map['raspCount'] == null ? null : map['raspCount'] as String,
      renewPeriod: map['renewPeriod'] == null ? null : map['renewPeriod'] as int,
      renewalPeriodUnit: map['renewalPeriodUnit'] == null ? null : map['renewalPeriodUnit'] as String,
      renewalStatus: map['renewalStatus'] == null ? null : map['renewalStatus'] as String,
      sasAntiRansomware: map['sasAntiRansomware'] == null ? null : map['sasAntiRansomware'] as String,
      sasCspm: map['sasCspm'] == null ? null : map['sasCspm'] as String,
      sasCspmSwitch: map['sasCspmSwitch'] == null ? null : map['sasCspmSwitch'] as String,
      sasSc: map['sasSc'] == null ? null : map['sasSc'] as bool,
      sasSdk: map['sasSdk'] == null ? null : map['sasSdk'] as String,
      sasSdkSwitch: map['sasSdkSwitch'] == null ? null : map['sasSdkSwitch'] as String,
      sasSlsStorage: map['sasSlsStorage'] == null ? null : map['sasSlsStorage'] as String,
      sasWebguardBoolean: map['sasWebguardBoolean'] == null ? null : map['sasWebguardBoolean'] as String,
      sasWebguardOrderNum: map['sasWebguardOrderNum'] == null ? null : map['sasWebguardOrderNum'] as String,
      subscriptionType: map['subscriptionType'] == null ? null : map['subscriptionType'] as String,
      threatAnalysis: map['threatAnalysis'] == null ? null : map['threatAnalysis'] as String,
      threatAnalysisFlow: map['threatAnalysisFlow'] == null ? null : map['threatAnalysisFlow'] as String,
      threatAnalysisSlsStorage: map['threatAnalysisSlsStorage'] == null ? null : map['threatAnalysisSlsStorage'] as String,
      threatAnalysisSwitch: map['threatAnalysisSwitch'] == null ? null : map['threatAnalysisSwitch'] as String,
      threatAnalysisSwitch1: map['threatAnalysisSwitch1'] == null ? null : map['threatAnalysisSwitch1'] as String,
      vCore: map['vCore'] == null ? null : map['vCore'] as String,
      versionCode: map['versionCode'] == null ? null : map['versionCode'] as String,
      vulCount: map['vulCount'] == null ? null : map['vulCount'] as String,
      vulSwitch: map['vulSwitch'] == null ? null : map['vulSwitch'] as String,
    );
  }
}

