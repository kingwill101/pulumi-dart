// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Action that need to performed.
class NetworkTapRuleAction {
  /// Destination Id. The ARM resource Id may be either Network To Network Interconnect or NeighborGroup.
  final pulumi.Input<String>? destinationId;
  /// The parameter to enable or disable the timestamp.
  final pulumi.Input<String>? isTimestampEnabled;
  /// The name of the match configuration. This is used when Goto type is provided. If Goto type is selected and no match configuration name is provided. It goes to next configuration.
  final pulumi.Input<String>? matchConfigurationName;
  /// Truncate. 0 indicates do not truncate.
  final pulumi.Input<String>? truncate;
  /// Type of actions that can be performed.
  final pulumi.Input<String>? type;

  /// Creates a new [NetworkTapRuleAction].
  /// [destinationId] Destination Id. The ARM resource Id may be either Network To Network Interconnect or NeighborGroup.
  /// [isTimestampEnabled] The parameter to enable or disable the timestamp.
  /// [matchConfigurationName] The name of the match configuration. This is used when Goto type is provided. If Goto type is selected and no match configuration name is provided. It goes to next configuration.
  /// [truncate] Truncate. 0 indicates do not truncate.
  /// [type] Type of actions that can be performed.
  NetworkTapRuleAction({
    this.destinationId,
    this.isTimestampEnabled,
    this.matchConfigurationName,
    this.truncate,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationId': ?destinationId,
      'isTimestampEnabled': ?isTimestampEnabled,
      'matchConfigurationName': ?matchConfigurationName,
      'truncate': ?truncate,
      'type': ?type,
    };
  }

  factory NetworkTapRuleAction.fromMap(Map<String, dynamic> map) {
    return NetworkTapRuleAction(
      destinationId: (() { final guardedValue = map['destinationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isTimestampEnabled: (() { final guardedValue = map['isTimestampEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      matchConfigurationName: (() { final guardedValue = map['matchConfigurationName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      truncate: (() { final guardedValue = map['truncate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

