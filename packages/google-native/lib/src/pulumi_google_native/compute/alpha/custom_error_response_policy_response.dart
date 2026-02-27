// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'custom_error_response_policy_custom_error_response_rule_response.dart';

/// Specifies the custom error response policy that must be applied when the backend service or backend bucket responds with an error.
class CustomErrorResponsePolicyResponse {
  /// Specifies rules for returning error responses. In a given policy, if you specify rules for both a range of error codes as well as rules for specific error codes then rules with specific error codes have a higher priority. For example, assume that you configure a rule for 401 (Un-authorized) code, and another for all 4 series error codes (4XX). If the backend service returns a 401, then the rule for 401 will be applied. However if the backend service returns a 403, the rule for 4xx takes effect.
  final List<CustomErrorResponsePolicyCustomErrorResponseRuleResponse>
      errorResponseRules;

  /// The full or partial URL to the BackendBucket resource that contains the custom error content. Examples are: - https://www.googleapis.com/compute/v1/projects/project/global/backendBuckets/myBackendBucket - compute/v1/projects/project/global/backendBuckets/myBackendBucket - global/backendBuckets/myBackendBucket If errorService is not specified at lower levels like pathMatcher, pathRule and routeRule, an errorService specified at a higher level in the UrlMap will be used. If UrlMap.defaultCustomErrorResponsePolicy contains one or more errorResponseRules[], it must specify errorService. If load balancer cannot reach the backendBucket, a simple Not Found Error will be returned, with the original response code (or overrideResponseCode if configured). errorService is not supported for internal or regional HTTP/HTTPS load balancers.
  final String errorService;

  CustomErrorResponsePolicyResponse({
    required this.errorResponseRules,
    required this.errorService,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['errorResponseRules'] = Input.encodeList<
        CustomErrorResponsePolicyCustomErrorResponseRuleResponse,
        Map<String, dynamic>>(errorResponseRules, (value) => value.toMap());
    map['errorService'] = errorService;
    return map;
  }

  factory CustomErrorResponsePolicyResponse.fromMap(Map<String, dynamic> map) {
    return CustomErrorResponsePolicyResponse(
      errorResponseRules: Input.decodeList<
              CustomErrorResponsePolicyCustomErrorResponseRuleResponse>(
          map['errorResponseRules'],
          (value) =>
              CustomErrorResponsePolicyCustomErrorResponseRuleResponse.fromMap(
                  (value as Map).cast<String, dynamic>())),
      errorService: map['errorService'] as String,
    );
  }
}
