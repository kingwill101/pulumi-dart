// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudfirewall_ips_config_ips_config_args_doc}
/// The set of arguments for IpsConfig.
/// {@endtemplate}
/// {@macro pulumi_cloudfirewall_ips_config_ips_config_args_doc}
class IpsConfigArgs {
  /// Basic rule switch. Value:
  /// - 1: Open.
  /// - 0: Closed (Default).
  final pulumi.Input<int>? basicRules;
  /// Threat intelligence. Value:
  /// - 1: Open.
  /// - 0: Closed (Default).
  final pulumi.Input<int>? ctiRules;
  /// Language
  final pulumi.Input<String>? lang;
  /// Sensitive data detection Daily detection traffic limit. Defaults to 0.
  final pulumi.Input<int>? maxSdl;
  /// Virtual patch switch. Value:
  /// - 1: Open.
  /// - 0: Closed (Default).
  final pulumi.Input<int>? patchRules;
  /// The IPS rule Group. Value:
  /// - 1: loose rule Group.
  /// - 2: Medium rule Group.
  /// - 3: Strict rule groups.
  final pulumi.Input<int>? ruleClass;
  /// IPS defense mode. Value:
  /// - 1: Intercept mode.
  /// - 0: Observation mode (Default).
  final pulumi.Input<int>? runMode;

  /// Creates a new [IpsConfigArgs].
  /// [basicRules] Basic rule switch. Value:
  /// [ctiRules] Threat intelligence. Value:
  /// [lang] Language
  /// [maxSdl] Sensitive data detection Daily detection traffic limit. Defaults to 0.
  /// [patchRules] Virtual patch switch. Value:
  /// [ruleClass] The IPS rule Group. Value:
  /// [runMode] IPS defense mode. Value:
  IpsConfigArgs({
    int? basicRules,
    int? ctiRules,
    String? lang,
    int? maxSdl,
    int? patchRules,
    int? ruleClass,
    int? runMode,
  }) :
      basicRules = pulumi.Input.asOptionalInput<int>(basicRules),
      ctiRules = pulumi.Input.asOptionalInput<int>(ctiRules),
      lang = pulumi.Input.asOptionalInput<String>(lang),
      maxSdl = pulumi.Input.asOptionalInput<int>(maxSdl),
      patchRules = pulumi.Input.asOptionalInput<int>(patchRules),
      ruleClass = pulumi.Input.asOptionalInput<int>(ruleClass),
      runMode = pulumi.Input.asOptionalInput<int>(runMode);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'basicRules': ?basicRules,
      'ctiRules': ?ctiRules,
      'lang': ?lang,
      'maxSdl': ?maxSdl,
      'patchRules': ?patchRules,
      'ruleClass': ?ruleClass,
      'runMode': ?runMode,
    };
  }

  factory IpsConfigArgs.fromMap(Map<String, dynamic> map) {
    return IpsConfigArgs(
      basicRules: map['basicRules'] == null ? null : map['basicRules'] as int,
      ctiRules: map['ctiRules'] == null ? null : map['ctiRules'] as int,
      lang: map['lang'] == null ? null : map['lang'] as String,
      maxSdl: map['maxSdl'] == null ? null : map['maxSdl'] as int,
      patchRules: map['patchRules'] == null ? null : map['patchRules'] as int,
      ruleClass: map['ruleClass'] == null ? null : map['ruleClass'] as int,
      runMode: map['runMode'] == null ? null : map['runMode'] as int,
    );
  }
}

