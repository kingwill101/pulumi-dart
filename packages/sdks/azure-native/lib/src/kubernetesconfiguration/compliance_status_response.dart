// ignore_for_file: unused_element, unnecessary_cast


/// Compliance Status details
class ComplianceStatusResponse {
  /// The compliance state of the configuration.
  final String complianceState;
  /// Datetime the configuration was last applied.
  final String? lastConfigApplied;
  /// Message from when the configuration was applied.
  final String? message;
  /// Level of the message.
  final String? messageLevel;

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
      complianceState: map['complianceState'] as String,
      lastConfigApplied: map['lastConfigApplied'] == null ? null : map['lastConfigApplied'] as String,
      message: map['message'] == null ? null : map['message'] as String,
      messageLevel: map['messageLevel'] == null ? null : map['messageLevel'] as String,
    );
  }
}

