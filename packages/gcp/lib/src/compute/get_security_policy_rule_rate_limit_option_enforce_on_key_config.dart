// ignore_for_file: unused_element, unnecessary_cast


class GetSecurityPolicyRuleRateLimitOptionEnforceOnKeyConfig {
  /// Rate limit key name applicable only for the following key types: HTTP_HEADER -- Name of the HTTP header whose value is taken as the key value. HTTP_COOKIE -- Name of the HTTP cookie whose value is taken as the key value.
  final String enforceOnKeyName;
  /// Determines the key to enforce the rate_limit_threshold on
  final String enforceOnKeyType;

  /// Creates a new [GetSecurityPolicyRuleRateLimitOptionEnforceOnKeyConfig].
  /// [enforceOnKeyName] Rate limit key name applicable only for the following key types: HTTP_HEADER -- Name of the HTTP header whose value is taken as the key value. HTTP_COOKIE -- Name of the HTTP cookie whose value is taken as the key value.
  /// [enforceOnKeyType] Determines the key to enforce the rate_limit_threshold on
  GetSecurityPolicyRuleRateLimitOptionEnforceOnKeyConfig({
    required this.enforceOnKeyName,
    required this.enforceOnKeyType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enforceOnKeyName': enforceOnKeyName,
      'enforceOnKeyType': enforceOnKeyType,
    };
  }

  factory GetSecurityPolicyRuleRateLimitOptionEnforceOnKeyConfig.fromMap(Map<String, dynamic> map) {
    return GetSecurityPolicyRuleRateLimitOptionEnforceOnKeyConfig(
      enforceOnKeyName: map['enforceOnKeyName'] as String,
      enforceOnKeyType: map['enforceOnKeyType'] as String,
    );
  }
}

