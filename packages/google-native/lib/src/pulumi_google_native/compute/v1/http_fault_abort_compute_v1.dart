// ignore_for_file: unused_element, unnecessary_cast

/// Specification for how requests are aborted as part of fault injection.
class HttpFaultAbortComputeV1 {
  /// The HTTP status code used to abort the request. The value must be from 200 to 599 inclusive. For gRPC protocol, the gRPC status code is mapped to HTTP status code according to this mapping table. HTTP status 200 is mapped to gRPC status UNKNOWN. Injecting an OK status is currently not supported by Traffic Director.
  final int? httpStatus;

  /// The percentage of traffic for connections, operations, or requests that is aborted as part of fault injection. The value must be from 0.0 to 100.0 inclusive.
  final double? percentage;

  HttpFaultAbortComputeV1({
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

  factory HttpFaultAbortComputeV1.fromMap(Map<String, dynamic> map) {
    return HttpFaultAbortComputeV1(
      httpStatus: map['httpStatus'] == null ? null : map['httpStatus'] as int,
      percentage:
          map['percentage'] == null ? null : map['percentage'] as double,
    );
  }
}
