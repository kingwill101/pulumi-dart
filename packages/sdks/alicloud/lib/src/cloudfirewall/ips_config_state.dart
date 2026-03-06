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
  const IpsConfigState({
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
      basicRules: (() { final guardedValue = map['basicRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      ctiRules: (() { final guardedValue = map['ctiRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      lang: (() { final guardedValue = map['lang']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxSdl: (() { final guardedValue = map['maxSdl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      patchRules: (() { final guardedValue = map['patchRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      ruleClass: (() { final guardedValue = map['ruleClass']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      runMode: (() { final guardedValue = map['runMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

