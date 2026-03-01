// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_policy_rule_preconfigured_waf_config_exclusion_response.dart';

class SecurityPolicyRulePreconfiguredWafConfigResponse {
  /// A list of exclusions to apply during preconfigured WAF evaluation.
  final List<SecurityPolicyRulePreconfiguredWafConfigExclusionResponse>
  exclusions;

  /// Creates a new [SecurityPolicyRulePreconfiguredWafConfigResponse].
  /// [exclusions] A list of exclusions to apply during preconfigured WAF evaluation.
  SecurityPolicyRulePreconfiguredWafConfigResponse({required this.exclusions});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exclusions':
          pulumi.Input.encodeList<
            SecurityPolicyRulePreconfiguredWafConfigExclusionResponse,
            Map<String, dynamic>
          >(exclusions, (value) => value.toMap()),
    };
  }

  factory SecurityPolicyRulePreconfiguredWafConfigResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return SecurityPolicyRulePreconfiguredWafConfigResponse(
      exclusions:
          pulumi.Input.decodeList<
            SecurityPolicyRulePreconfiguredWafConfigExclusionResponse
          >(
            map['exclusions'],
            (value) =>
                SecurityPolicyRulePreconfiguredWafConfigExclusionResponse.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
    );
  }
}
