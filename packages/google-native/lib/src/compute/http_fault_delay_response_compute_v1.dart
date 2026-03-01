// ignore_for_file: unused_element, unnecessary_cast

import 'duration_response_compute_v1.dart';

/// Specifies the delay introduced by the load balancer before forwarding the request to the backend service as part of fault injection.
class HttpFaultDelayResponseComputeV1 {
  /// Specifies the value of the fixed delay interval.
  final DurationResponseComputeV1 fixedDelay;

  /// The percentage of traffic for connections, operations, or requests for which a delay is introduced as part of fault injection. The value must be from 0.0 to 100.0 inclusive.
  final double percentage;

  /// Creates a new [HttpFaultDelayResponseComputeV1].
  /// [fixedDelay] Specifies the value of the fixed delay interval.
  /// [percentage] The percentage of traffic for connections, operations, or requests for which a delay is introduced as part of fault injection. The value must be from 0.0 to 100.0 inclusive.
  HttpFaultDelayResponseComputeV1({
    required this.fixedDelay,
    required this.percentage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fixedDelay': fixedDelay.toMap(),
      'percentage': percentage,
    };
  }

  factory HttpFaultDelayResponseComputeV1.fromMap(Map<String, dynamic> map) {
    return HttpFaultDelayResponseComputeV1(
      fixedDelay: DurationResponseComputeV1.fromMap(
        (map['fixedDelay'] as Map).cast<String, dynamic>(),
      ),
      percentage: map['percentage'] as double,
    );
  }
}
