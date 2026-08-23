// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Compliance Status details
class ComplianceStatusResponse {
  /// The compliance state of the configuration.
  final pulumi.Input<String> complianceState;
  /// Datetime the configuration was last applied.
  final pulumi.Input<String>? lastConfigApplied;
  /// Message from when the configuration was applied.
  final pulumi.Input<String>? message;
  /// Level of the message.
  final pulumi.Input<String>? messageLevel;

  /// Creates a new [ComplianceStatusResponse].
  /// [complianceState] The compliance state of the configuration.
  /// [lastConfigApplied] Datetime the configuration was last applied.
  /// [message] Message from when the configuration was applied.
  /// [messageLevel] Level of the message.
  const ComplianceStatusResponse({
    required this.complianceState,
    this.lastConfigApplied,
    this.message,
    this.messageLevel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'complianceState': complianceState,
      'lastConfigApplied': ?lastConfigApplied,
      'message': ?message,
      'messageLevel': ?messageLevel,
    };
  }

  factory ComplianceStatusResponse.fromMap(Map<String, dynamic> map) {
    return ComplianceStatusResponse(
      complianceState: pulumi.Input.fromValue(map['complianceState'] as String),
      lastConfigApplied: (() { final guardedValue = map['lastConfigApplied']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      message: (() { final guardedValue = map['message']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      messageLevel: (() { final guardedValue = map['messageLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
