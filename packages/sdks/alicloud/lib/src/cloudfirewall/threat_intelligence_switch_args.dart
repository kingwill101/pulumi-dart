// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudfirewall_threat_intelligence_switch_threat_intelligence_switch_args_doc}
/// The set of arguments for ThreatIntelligenceSwitch.
/// {@endtemplate}
/// {@macro pulumi_cloudfirewall_threat_intelligence_switch_threat_intelligence_switch_args_doc}
class ThreatIntelligenceSwitchArgs {
  /// Rule action. Value:
  final pulumi.Input<String>? action;

  /// The threat intelligence classification ID.
  final pulumi.Input<String>? categoryId;

  /// Switch status. Value:
  final pulumi.Input<int>? enableStatus;

  /// Creates a new [ThreatIntelligenceSwitchArgs].
  /// [action] Rule action. Value:
  /// [categoryId] The threat intelligence classification ID.
  /// [enableStatus] Switch status. Value:
  ThreatIntelligenceSwitchArgs({
    this.action,
    this.categoryId,
    this.enableStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'categoryId': ?categoryId,
      'enableStatus': ?enableStatus,
    };
  }

  factory ThreatIntelligenceSwitchArgs.fromMap(Map<String, dynamic> map) {
    return ThreatIntelligenceSwitchArgs(
      action: (() {
        final guardedValue = map['action'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      categoryId: (() {
        final guardedValue = map['categoryId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      enableStatus: (() {
        final guardedValue = map['enableStatus'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
