// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ThreatIntelligenceSwitch resources.
class ThreatIntelligenceSwitchState {
  /// Rule action. Value:
  final pulumi.Input<String>? action;
  /// The threat intelligence classification ID.
  final pulumi.Input<String>? categoryId;
  /// Switch status. Value:
  final pulumi.Input<int>? enableStatus;

  /// Creates a new [ThreatIntelligenceSwitchState].
  /// [action] Rule action. Value:
  /// [categoryId] The threat intelligence classification ID.
  /// [enableStatus] Switch status. Value:
  ThreatIntelligenceSwitchState({
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

  factory ThreatIntelligenceSwitchState.fromMap(Map<String, dynamic> map) {
    return ThreatIntelligenceSwitchState(
      action: map['action'] == null ? null : (map['action']! as String).input(),
      categoryId: map['categoryId'] == null ? null : (map['categoryId']! as String).input(),
      enableStatus: map['enableStatus'] == null ? null : (map['enableStatus']! as int).input(),
    );
  }
}

