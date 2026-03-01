// ignore_for_file: unused_element, unnecessary_cast

import 'waf_security_policy_response.dart';

/// SecurityPolicyConfigurations Subresource of Traffic Controller.
class SecurityPolicyConfigurationsResponse {
  /// Contains reference to a WAF-type security policy.
  final WafSecurityPolicyResponse? wafSecurityPolicy;

  /// Creates a new [SecurityPolicyConfigurationsResponse].
  /// [wafSecurityPolicy] Contains reference to a WAF-type security policy.
  SecurityPolicyConfigurationsResponse({
    this.wafSecurityPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'wafSecurityPolicy': ?wafSecurityPolicy == null ? null : wafSecurityPolicy!.toMap(),
    };
  }

  factory SecurityPolicyConfigurationsResponse.fromMap(Map<String, dynamic> map) {
    return SecurityPolicyConfigurationsResponse(
      wafSecurityPolicy: map['wafSecurityPolicy'] == null ? null : WafSecurityPolicyResponse.fromMap((map['wafSecurityPolicy'] as Map).cast<String, dynamic>()),
    );
  }
}

