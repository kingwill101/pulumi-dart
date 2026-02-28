// ignore_for_file: unused_element, unnecessary_cast

/// Simplified google.rpc.Status type (omitting details).
class SecurityPolicyRuleRateLimitOptionsRpcStatus {
  /// The status code, which should be an enum value of google.rpc.Code.
  final int? code;

  /// A developer-facing error message, which should be in English.
  final String? message;

  /// Creates a new [SecurityPolicyRuleRateLimitOptionsRpcStatus].
  /// [code] The status code, which should be an enum value of google.rpc.Code.
  /// [message] A developer-facing error message, which should be in English.
  SecurityPolicyRuleRateLimitOptionsRpcStatus({
    this.code,
    this.message,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final codeValue = code;
    if (codeValue != null) {
      map['code'] = codeValue;
    }
    final messageValue = message;
    if (messageValue != null) {
      map['message'] = messageValue;
    }
    return map;
  }

  factory SecurityPolicyRuleRateLimitOptionsRpcStatus.fromMap(
      Map<String, dynamic> map) {
    return SecurityPolicyRuleRateLimitOptionsRpcStatus(
      code: map['code'] == null ? null : map['code'] as int,
      message: map['message'] == null ? null : map['message'] as String,
    );
  }
}
