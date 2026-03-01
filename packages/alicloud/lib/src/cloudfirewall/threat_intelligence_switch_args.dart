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
    String? action,
    String? categoryId,
    int? enableStatus,
  }) :
      action = pulumi.Input.asOptionalInput<String>(action),
      categoryId = pulumi.Input.asOptionalInput<String>(categoryId),
      enableStatus = pulumi.Input.asOptionalInput<int>(enableStatus);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'categoryId': ?categoryId,
      'enableStatus': ?enableStatus,
    };
  }

  factory ThreatIntelligenceSwitchArgs.fromMap(Map<String, dynamic> map) {
    return ThreatIntelligenceSwitchArgs(
      action: map['action'] == null ? null : map['action'] as String,
      categoryId: map['categoryId'] == null ? null : map['categoryId'] as String,
      enableStatus: map['enableStatus'] == null ? null : map['enableStatus'] as int,
    );
  }
}

