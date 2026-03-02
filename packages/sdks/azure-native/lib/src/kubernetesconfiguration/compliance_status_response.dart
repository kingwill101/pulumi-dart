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
  ComplianceStatusResponse({
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
      complianceState: (map['complianceState'] as String).input(),
      lastConfigApplied: map['lastConfigApplied'] == null ? null : (map['lastConfigApplied'] as String).input(),
      message: map['message'] == null ? null : (map['message'] as String).input(),
      messageLevel: map['messageLevel'] == null ? null : (map['messageLevel'] as String).input(),
    );
  }
}

