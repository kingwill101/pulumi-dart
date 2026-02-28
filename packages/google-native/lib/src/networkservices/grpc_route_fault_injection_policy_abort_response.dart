// ignore_for_file: unused_element, unnecessary_cast


/// Specification of how client requests are aborted as part of fault injection before being sent to a destination.
class GrpcRouteFaultInjectionPolicyAbortResponse {
  /// The HTTP status code used to abort the request. The value must be between 200 and 599 inclusive.
  final int httpStatus;
  /// The percentage of traffic which will be aborted. The value must be between [0, 100]
  final int percentage;

  /// Creates a new [GrpcRouteFaultInjectionPolicyAbortResponse].
  /// [httpStatus] The HTTP status code used to abort the request. The value must be between 200 and 599 inclusive.
  /// [percentage] The percentage of traffic which will be aborted. The value must be between [0, 100]
  GrpcRouteFaultInjectionPolicyAbortResponse({
    required this.httpStatus,
    required this.percentage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'httpStatus': httpStatus,
      'percentage': percentage,
    };
  }

  factory GrpcRouteFaultInjectionPolicyAbortResponse.fromMap(Map<String, dynamic> map) {
    return GrpcRouteFaultInjectionPolicyAbortResponse(
      httpStatus: map['httpStatus'] as int,
      percentage: map['percentage'] as int,
    );
  }
}

