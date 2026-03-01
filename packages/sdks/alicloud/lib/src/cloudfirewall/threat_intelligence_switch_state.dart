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
    pulumi.Output<String>? action,
    pulumi.Output<String>? categoryId,
    pulumi.Output<int>? enableStatus,
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

  factory ThreatIntelligenceSwitchState.fromMap(Map<String, dynamic> map) {
    return ThreatIntelligenceSwitchState(
      action: map['action'] == null ? null : pulumi.Output.create<String>(map['action'] as String),
      categoryId: map['categoryId'] == null ? null : pulumi.Output.create<String>(map['categoryId'] as String),
      enableStatus: map['enableStatus'] == null ? null : pulumi.Output.create<int>(map['enableStatus'] as int),
    );
  }
}

