// ignore_for_file: unused_element, unnecessary_cast

class URLMapPathMatcherPathRuleRouteActionFaultInjectionPolicyAbort {
  /// The HTTP status code used to abort the request.
  /// The value must be between 200 and 599 inclusive.
  final int httpStatus;

  /// The percentage of traffic (connections/operations/requests) which will be aborted as part of fault injection.
  /// The value must be between 0.0 and 100.0 inclusive.
  final double percentage;

  /// Creates a new [URLMapPathMatcherPathRuleRouteActionFaultInjectionPolicyAbort].
  /// [httpStatus] The HTTP status code used to abort the request.
  /// [percentage] The percentage of traffic (connections/operations/requests) which will be aborted as part of fault injection.
  URLMapPathMatcherPathRuleRouteActionFaultInjectionPolicyAbort({
    required this.httpStatus,
    required this.percentage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'httpStatus': httpStatus,
      'percentage': percentage,
    };
  }

  factory URLMapPathMatcherPathRuleRouteActionFaultInjectionPolicyAbort.fromMap(
    Map<String, dynamic> map,
  ) {
    return URLMapPathMatcherPathRuleRouteActionFaultInjectionPolicyAbort(
      httpStatus: map['httpStatus'] as int,
      percentage: map['percentage'] as double,
    );
  }
}
