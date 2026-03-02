// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering IpsConfig resources.
class IpsConfigState {
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

  /// Creates a new [IpsConfigState].
  /// [basicRules] Basic rule switch. Value:
  /// [ctiRules] Threat intelligence. Value:
  /// [lang] Language
  /// [maxSdl] Sensitive data detection Daily detection traffic limit. Defaults to 0.
  /// [patchRules] Virtual patch switch. Value:
  /// [ruleClass] The IPS rule Group. Value:
  /// [runMode] IPS defense mode. Value:
  IpsConfigState({
    this.basicRules,
    this.ctiRules,
    this.lang,
    this.maxSdl,
    this.patchRules,
    this.ruleClass,
    this.runMode,
  });

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

  factory IpsConfigState.fromMap(Map<String, dynamic> map) {
    return IpsConfigState(
      basicRules: map['basicRules'] == null ? null : (map['basicRules']! as int).input(),
      ctiRules: map['ctiRules'] == null ? null : (map['ctiRules']! as int).input(),
      lang: map['lang'] == null ? null : (map['lang']! as String).input(),
      maxSdl: map['maxSdl'] == null ? null : (map['maxSdl']! as int).input(),
      patchRules: map['patchRules'] == null ? null : (map['patchRules']! as int).input(),
      ruleClass: map['ruleClass'] == null ? null : (map['ruleClass']! as int).input(),
      runMode: map['runMode'] == null ? null : (map['runMode']! as int).input(),
    );
  }
}

