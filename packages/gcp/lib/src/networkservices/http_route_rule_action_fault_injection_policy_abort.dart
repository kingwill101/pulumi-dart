// ignore_for_file: unused_element, unnecessary_cast

class HttpRouteRuleActionFaultInjectionPolicyAbort {
  /// The HTTP status code used to abort the request.
  final int? httpStatus;

  /// The percentage of traffic which will be aborted.
  final int? percentage;

  /// Creates a new [HttpRouteRuleActionFaultInjectionPolicyAbort].
  /// [httpStatus] The HTTP status code used to abort the request.
  /// [percentage] The percentage of traffic which will be aborted.
  HttpRouteRuleActionFaultInjectionPolicyAbort({
    this.httpStatus,
    this.percentage,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final httpStatusValue = httpStatus;
    if (httpStatusValue != null) {
      map['httpStatus'] = httpStatusValue;
    }
    final percentageValue = percentage;
    if (percentageValue != null) {
      map['percentage'] = percentageValue;
    }
    return map;
  }

  factory HttpRouteRuleActionFaultInjectionPolicyAbort.fromMap(
      Map<String, dynamic> map) {
    return HttpRouteRuleActionFaultInjectionPolicyAbort(
      httpStatus: map['httpStatus'] == null ? null : map['httpStatus'] as int,
      percentage: map['percentage'] == null ? null : map['percentage'] as int,
    );
  }
}
