// ignore_for_file: unused_element, unnecessary_cast

class GrpcRouteRuleActionFaultInjectionPolicyAbort {
  /// The HTTP status code used to abort the request.
  final int? httpStatus;

  /// The percentage of traffic which will be aborted.
  final int? percentage;

  /// Creates a new [GrpcRouteRuleActionFaultInjectionPolicyAbort].
  /// [httpStatus] The HTTP status code used to abort the request.
  /// [percentage] The percentage of traffic which will be aborted.
  GrpcRouteRuleActionFaultInjectionPolicyAbort({
    this.httpStatus,
    this.percentage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'httpStatus': ?httpStatus,
      'percentage': ?percentage,
    };
  }

  factory GrpcRouteRuleActionFaultInjectionPolicyAbort.fromMap(
    Map<String, dynamic> map,
  ) {
    return GrpcRouteRuleActionFaultInjectionPolicyAbort(
      httpStatus: map['httpStatus'] == null ? null : map['httpStatus'] as int,
      percentage: map['percentage'] == null ? null : map['percentage'] as int,
    );
  }
}
