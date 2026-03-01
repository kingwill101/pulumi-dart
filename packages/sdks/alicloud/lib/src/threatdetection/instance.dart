import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_args.dart';
import 'instance_post_pay_module_switch_obj.dart';
import 'instance_state.dart';

/// ## Import
///
/// Threat Detection Instance can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:threatdetection/instance:Instance example <id>
/// ```
class Instance extends pulumi.CustomResource {
  /// Number of servers.
  late final pulumi.Output<String?> buyNumber;
  /// Container Image security scan. Interval type, value interval:[0,200000].
  ///
  /// > **NOTE:**  The step size is 20, that is, only multiples of 20 can be filled in.
  late final pulumi.Output<String?> containerImageScan;
  /// Container Image security scan. Interval type, value interval:[0,200000].
  ///
  /// > **NOTE:**  The step size is 20, that is, only multiples of 20 can be filled in.
  late final pulumi.Output<String?> containerImageScanNew;
  /// The creation time of the resource
  late final pulumi.Output<String> createTime;
  /// Number of cloud honeypot licenses. Interval type, value interval:[20,500].
  ///
  /// > **NOTE:**  This module can only be purchased when honeypot_switch = 1, starting with 20.
  late final pulumi.Output<String?> honeypot;
  /// Cloud honeypot. Value:
  /// - 1: Yes.
  /// - 2: No.
  late final pulumi.Output<String> honeypotSwitch;
  /// Change configuration type, value
  /// - Upgrade: Upgrade.
  /// - Downgrade: Downgrade.
  late final pulumi.Output<String?> modifyType;
  /// The payment type of the resource
  late final pulumi.Output<String> paymentType;
  /// Prepaid cycle. The unit is Monthly, please enter an integer multiple of 12 for annual paid products.
  ///
  /// > **NOTE:**  must be set when creating a prepaid instance.
  late final pulumi.Output<int?> period;
  /// Post-paid signage. Value:
  late final pulumi.Output<int?> postPaidFlag;
  /// Automatic binding switch for new assets in host and container protection. Valid values:
  late final pulumi.Output<int> postPaidHostAutoBind;
  /// The version that is automatically bound to the host and container protection of a pay-as-you-go instance. Valid values:
  late final pulumi.Output<int> postPaidHostAutoBindVersion;
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
  late final pulumi.Output<String?> postPayModuleSwitch;
  /// Pay-as-you-go module switch. See `post_pay_module_switch_obj` below.
  late final pulumi.Output<InstancePostPayModuleSwitchObj> postPayModuleSwitchObj;
  /// Number of application protection licenses. Interval type, value interval:[1,100000000].
  late final pulumi.Output<String?> raspCount;
  /// Automatic renewal cycle, in months.
  ///
  /// > **NOTE:**  When `RenewalStatus` is set to `AutoRenewal`, it must be set.
  late final pulumi.Output<int> renewPeriod;
  /// Automatic renewal period unit, value:
  /// - M: month.
  /// - Y: years.
  ///
  /// > **NOTE:**  Must be set when RenewalStatus = AutoRenewal.
  late final pulumi.Output<String> renewalPeriodUnit;
  /// Automatic renewal status, value:
  /// - AutoRenewal: automatic renewal.
  /// - ManualRenewal: manual renewal.
  ///
  /// Default ManualRenewal.
  late final pulumi.Output<String> renewalStatus;
  /// Anti-ransomware capacity. Unit: GB. Interval type, value interval:[0,9999999999].
  ///
  /// > **NOTE:**  The step size is 10, that is, only multiples of 10 can be filled in.
  late final pulumi.Output<String?> sasAntiRansomware;
  /// Cloud platform configuration check scan times, interval type, value range:[15000,9999999999].
  ///
  /// > **NOTE:**  You must have sas_cspm_switch = 1 to purchase this module. The step size is 55000, that is, only multiples of 55000 can be filled in.
  late final pulumi.Output<String?> sasCspm;
  /// Cloud platform configuration check switch. Value:
  /// - 0: No.
  /// - 1: Yes.
  late final pulumi.Output<String> sasCspmSwitch;
  /// Security screen. Value:
  /// - true: Yes.
  /// - false: No.
  late final pulumi.Output<bool?> sasSc;
  /// Number of malicious file detections. Unit: 10,000 times. Interval type, value interval:[10,9999999999].
  ///
  /// > **NOTE:**  This module can only be purchased when sas_sdk_switch = 1. The step size is 10, that is, only multiples of 10 can be filled in.
  late final pulumi.Output<String?> sasSdk;
  /// Malicious file detection SDK.
  late final pulumi.Output<String> sasSdkSwitch;
  /// Log analysis storage capacity. Unit: GB. Interval type, value interval:[0,600000].
  ///
  /// > **NOTE:**  The step size is 10, that is, only multiples of 10 can be filled in.
  late final pulumi.Output<String?> sasSlsStorage;
  /// Web tamper-proof switch. Value:
  /// - 0: No.
  /// - 1: Yes.
  late final pulumi.Output<String> sasWebguardBoolean;
  /// Tamper-proof authorization number. Value:
  /// - 0: No
  /// 1: Yes.
  late final pulumi.Output<String?> sasWebguardOrderNum;
  /// The resource attribute field representing the resource status.
  late final pulumi.Output<String> status;
  /// The subscription type. Value:
  /// - Subscription: Prepaid.
  /// - PayAsYouGo: Post-paid.
  late final pulumi.Output<String?> subscriptionType;
  /// Threat Analysis log storage capacity. Interval type, value interval:[0,9999999999].
  ///
  /// > **NOTE:**  This module can only be purchased when Threat_analysis_switch = 1. The step size is 10, that is, only multiples of 10 can be filled in.
  late final pulumi.Output<String?> threatAnalysis;
  /// Threat analysis and response log access traffic. After ThreatAnalysisSwitch1 is selected, it must be selected. Interval type, value interval:[0,9999999999].
  ///
  /// > **NOTE:**  Step size is 100.
  late final pulumi.Output<String?> threatAnalysisFlow;
  /// Threat analysis and response log storage capacity. Interval type, value interval:[0,9999999999].
  ///
  /// > **NOTE:**  The step size is 1000, that is, only multiples of 1000 can be filled in.
  late final pulumi.Output<String?> threatAnalysisSlsStorage;
  /// Threat analysis. Value:
  /// - 0: No.
  /// - 1: Yes.
  late final pulumi.Output<String> threatAnalysisSwitch;
  /// Threat analysis and response switch (new), values:
  /// - 0: No
  /// - 1: Yes
  late final pulumi.Output<String> threatAnalysisSwitch1;
  /// Number of cores.
  late final pulumi.Output<String?> vCore;
  /// Select the security center version. Value:
  /// - level7: Antivirus Edition.
  /// - level3: Premium version.
  /// - level2: Enterprise Edition.
  /// - level8: Ultimate.
  /// - level10: Purchase value-added services only.
  late final pulumi.Output<String?> versionCode;
  /// Vulnerability repair times, interval type, value range:[20,100000000].
  ///
  /// > **NOTE:**  This module can only be purchased when vul_switch = 1. Only when the version_code value is level7 or level10. other versions do not need to be purchased separately.
  late final pulumi.Output<String?> vulCount;
  /// Vulnerability fix switch. Value:
  /// - 0: No.
  /// - 1: Yes.
  ///
  /// > **NOTE:**  When the value of version_code is level7 or level10, the purchase is allowed. Other versions do not need to be purchased separately.
  late final pulumi.Output<String> vulSwitch;

  /// Creates a new [Instance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Instance]. {@macro pulumi_threatdetection_instance_instance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Instance(
    String name, {
    InstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:threatdetection/instance:Instance',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.buyNumber = registerOutput<String?>('buyNumber');
    this.containerImageScan = registerOutput<String?>('containerImageScan');
    this.containerImageScanNew = registerOutput<String?>('containerImageScanNew');
    this.createTime = registerOutput<String>('createTime');
    this.honeypot = registerOutput<String?>('honeypot');
    this.honeypotSwitch = registerOutput<String>('honeypotSwitch');
    this.modifyType = registerOutput<String?>('modifyType');
    this.paymentType = registerOutput<String>('paymentType');
    this.period = registerOutput<int?>('period');
    this.postPaidFlag = registerOutput<int?>('postPaidFlag');
    this.postPaidHostAutoBind = registerOutput<int>('postPaidHostAutoBind');
    this.postPaidHostAutoBindVersion = registerOutput<int>('postPaidHostAutoBindVersion');
    this.postPayModuleSwitch = registerOutput<String?>('postPayModuleSwitch');
    this.postPayModuleSwitchObj = registerOutput<InstancePostPayModuleSwitchObj>('postPayModuleSwitchObj');
    this.raspCount = registerOutput<String?>('raspCount');
    this.renewPeriod = registerOutput<int>('renewPeriod');
    this.renewalPeriodUnit = registerOutput<String>('renewalPeriodUnit');
    this.renewalStatus = registerOutput<String>('renewalStatus');
    this.sasAntiRansomware = registerOutput<String?>('sasAntiRansomware');
    this.sasCspm = registerOutput<String?>('sasCspm');
    this.sasCspmSwitch = registerOutput<String>('sasCspmSwitch');
    this.sasSc = registerOutput<bool?>('sasSc');
    this.sasSdk = registerOutput<String?>('sasSdk');
    this.sasSdkSwitch = registerOutput<String>('sasSdkSwitch');
    this.sasSlsStorage = registerOutput<String?>('sasSlsStorage');
    this.sasWebguardBoolean = registerOutput<String>('sasWebguardBoolean');
    this.sasWebguardOrderNum = registerOutput<String?>('sasWebguardOrderNum');
    this.status = registerOutput<String>('status');
    this.subscriptionType = registerOutput<String?>('subscriptionType');
    this.threatAnalysis = registerOutput<String?>('threatAnalysis');
    this.threatAnalysisFlow = registerOutput<String?>('threatAnalysisFlow');
    this.threatAnalysisSlsStorage = registerOutput<String?>('threatAnalysisSlsStorage');
    this.threatAnalysisSwitch = registerOutput<String>('threatAnalysisSwitch');
    this.threatAnalysisSwitch1 = registerOutput<String>('threatAnalysisSwitch1');
    this.vCore = registerOutput<String?>('vCore');
    this.versionCode = registerOutput<String?>('versionCode');
    this.vulCount = registerOutput<String?>('vulCount');
    this.vulSwitch = registerOutput<String>('vulSwitch');
  }

  /// Gets an existing [Instance] resource's state with the given [name] and [id].
  static Instance get(
    String name,
    pulumi.Input<String> id, {
    InstanceState? state,
  }) {
    return Instance._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Instance._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:threatdetection/instance:Instance',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.buyNumber = registerOutput<String?>('buyNumber');
    this.containerImageScan = registerOutput<String?>('containerImageScan');
    this.containerImageScanNew = registerOutput<String?>('containerImageScanNew');
    this.createTime = registerOutput<String>('createTime');
    this.honeypot = registerOutput<String?>('honeypot');
    this.honeypotSwitch = registerOutput<String>('honeypotSwitch');
    this.modifyType = registerOutput<String?>('modifyType');
    this.paymentType = registerOutput<String>('paymentType');
    this.period = registerOutput<int?>('period');
    this.postPaidFlag = registerOutput<int?>('postPaidFlag');
    this.postPaidHostAutoBind = registerOutput<int>('postPaidHostAutoBind');
    this.postPaidHostAutoBindVersion = registerOutput<int>('postPaidHostAutoBindVersion');
    this.postPayModuleSwitch = registerOutput<String?>('postPayModuleSwitch');
    this.postPayModuleSwitchObj = registerOutput<InstancePostPayModuleSwitchObj>('postPayModuleSwitchObj');
    this.raspCount = registerOutput<String?>('raspCount');
    this.renewPeriod = registerOutput<int>('renewPeriod');
    this.renewalPeriodUnit = registerOutput<String>('renewalPeriodUnit');
    this.renewalStatus = registerOutput<String>('renewalStatus');
    this.sasAntiRansomware = registerOutput<String?>('sasAntiRansomware');
    this.sasCspm = registerOutput<String?>('sasCspm');
    this.sasCspmSwitch = registerOutput<String>('sasCspmSwitch');
    this.sasSc = registerOutput<bool?>('sasSc');
    this.sasSdk = registerOutput<String?>('sasSdk');
    this.sasSdkSwitch = registerOutput<String>('sasSdkSwitch');
    this.sasSlsStorage = registerOutput<String?>('sasSlsStorage');
    this.sasWebguardBoolean = registerOutput<String>('sasWebguardBoolean');
    this.sasWebguardOrderNum = registerOutput<String?>('sasWebguardOrderNum');
    this.status = registerOutput<String>('status');
    this.subscriptionType = registerOutput<String?>('subscriptionType');
    this.threatAnalysis = registerOutput<String?>('threatAnalysis');
    this.threatAnalysisFlow = registerOutput<String?>('threatAnalysisFlow');
    this.threatAnalysisSlsStorage = registerOutput<String?>('threatAnalysisSlsStorage');
    this.threatAnalysisSwitch = registerOutput<String>('threatAnalysisSwitch');
    this.threatAnalysisSwitch1 = registerOutput<String>('threatAnalysisSwitch1');
    this.vCore = registerOutput<String?>('vCore');
    this.versionCode = registerOutput<String?>('versionCode');
    this.vulCount = registerOutput<String?>('vulCount');
    this.vulSwitch = registerOutput<String>('vulSwitch');
  }
}
