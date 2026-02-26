// ignore_for_file: unused_element, unnecessary_cast

/// Specification of how client requests are aborted as part of fault injection before being sent to a destination.
class HttpRouteFaultInjectionPolicyAbortResponse {
  /// The HTTP status code used to abort the request. The value must be between 200 and 599 inclusive.
  final int httpStatus;

  /// The percentage of traffic which will be aborted. The value must be between [0, 100]
  final int percentage;

  HttpRouteFaultInjectionPolicyAbortResponse({
    required this.httpStatus,
    required this.percentage,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['httpStatus'] = httpStatus;
    map['percentage'] = percentage;
    return map;
  }

  factory HttpRouteFaultInjectionPolicyAbortResponse.fromMap(
      Map<String, dynamic> map) {
    return HttpRouteFaultInjectionPolicyAbortResponse(
      httpStatus: map['httpStatus'] as int,
      percentage: map['percentage'] as int,
    );
  }
}
