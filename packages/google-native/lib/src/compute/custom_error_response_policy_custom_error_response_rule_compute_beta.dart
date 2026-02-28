// ignore_for_file: unused_element, unnecessary_cast

/// Specifies the mapping between the response code that will be returned along with the custom error content and the response code returned by the backend service.
class CustomErrorResponsePolicyCustomErrorResponseRuleComputeBeta {
  /// Valid values include: - A number between 400 and 599: For example 401 or 503, in which case the load balancer applies the policy if the error code exactly matches this value. - 5xx: Load Balancer will apply the policy if the backend service responds with any response code in the range of 500 to 599. - 4xx: Load Balancer will apply the policy if the backend service responds with any response code in the range of 400 to 499. Values must be unique within matchResponseCodes and across all errorResponseRules of CustomErrorResponsePolicy.
  final List<String>? matchResponseCodes;

  /// The HTTP status code returned with the response containing the custom error content. If overrideResponseCode is not supplied, the same response code returned by the original backend bucket or backend service is returned to the client.
  final int? overrideResponseCode;

  /// The full path to a file within backendBucket . For example: /errors/defaultError.html path must start with a leading slash. path cannot have trailing slashes. If the file is not available in backendBucket or the load balancer cannot reach the BackendBucket, a simple Not Found Error is returned to the client. The value must be from 1 to 1024 characters
  final String? path;

  /// Creates a new [CustomErrorResponsePolicyCustomErrorResponseRuleComputeBeta].
  /// [matchResponseCodes] Valid values include: - A number between 400 and 599: For example 401 or 503, in which case the load balancer applies the policy if the error code exactly matches this value. - 5xx: Load Balancer will apply the policy if the backend service responds with any response code in the range of 500 to 599. - 4xx: Load Balancer will apply the policy if the backend service responds with any response code in the range of 400 to 499. Values must be unique within matchResponseCodes and across all errorResponseRules of CustomErrorResponsePolicy.
  /// [overrideResponseCode] The HTTP status code returned with the response containing the custom error content. If overrideResponseCode is not supplied, the same response code returned by the original backend bucket or backend service is returned to the client.
  /// [path] The full path to a file within backendBucket . For example: /errors/defaultError.html path must start with a leading slash. path cannot have trailing slashes. If the file is not available in backendBucket or the load balancer cannot reach the BackendBucket, a simple Not Found Error is returned to the client. The value must be from 1 to 1024 characters
  CustomErrorResponsePolicyCustomErrorResponseRuleComputeBeta({
    this.matchResponseCodes,
    this.overrideResponseCode,
    this.path,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final matchResponseCodesValue = matchResponseCodes;
    if (matchResponseCodesValue != null) {
      map['matchResponseCodes'] = matchResponseCodesValue;
    }
    final overrideResponseCodeValue = overrideResponseCode;
    if (overrideResponseCodeValue != null) {
      map['overrideResponseCode'] = overrideResponseCodeValue;
    }
    final pathValue = path;
    if (pathValue != null) {
      map['path'] = pathValue;
    }
    return map;
  }

  factory CustomErrorResponsePolicyCustomErrorResponseRuleComputeBeta.fromMap(
      Map<String, dynamic> map) {
    return CustomErrorResponsePolicyCustomErrorResponseRuleComputeBeta(
      matchResponseCodes: map['matchResponseCodes'] == null
          ? null
          : (map['matchResponseCodes'] as List).cast<String>(),
      overrideResponseCode: map['overrideResponseCode'] == null
          ? null
          : map['overrideResponseCode'] as int,
      path: map['path'] == null ? null : map['path'] as String,
    );
  }
}
