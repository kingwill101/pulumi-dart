// ignore_for_file: unused_element, unnecessary_cast

/// Specification of how client requests are aborted as part of fault injection before being sent to a destination.
class HttpRouteFaultInjectionPolicyAbort2 {
  /// The HTTP status code used to abort the request. The value must be between 200 and 599 inclusive.
  final int? httpStatus;

  /// The percentage of traffic which will be aborted. The value must be between [0, 100]
  final int? percentage;

  HttpRouteFaultInjectionPolicyAbort2({
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

  factory HttpRouteFaultInjectionPolicyAbort2.fromMap(
      Map<String, dynamic> map) {
    return HttpRouteFaultInjectionPolicyAbort2(
      httpStatus: map['httpStatus'] == null ? null : map['httpStatus'] as int,
      percentage: map['percentage'] == null ? null : map['percentage'] as int,
    );
  }
}
