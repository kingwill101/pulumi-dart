// ignore_for_file: unused_element, unnecessary_cast

import 'duration_response_compute_beta.dart';

/// Specifies the delay introduced by the load balancer before forwarding the request to the backend service as part of fault injection.
class HttpFaultDelayResponseComputeBeta {
  /// Specifies the value of the fixed delay interval.
  final DurationResponseComputeBeta fixedDelay;

  /// The percentage of traffic for connections, operations, or requests for which a delay is introduced as part of fault injection. The value must be from 0.0 to 100.0 inclusive.
  final double percentage;

  HttpFaultDelayResponseComputeBeta({
    required this.fixedDelay,
    required this.percentage,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['fixedDelay'] = fixedDelay.toMap();
    map['percentage'] = percentage;
    return map;
  }

  factory HttpFaultDelayResponseComputeBeta.fromMap(Map<String, dynamic> map) {
    return HttpFaultDelayResponseComputeBeta(
      fixedDelay: DurationResponseComputeBeta.fromMap(
          (map['fixedDelay'] as Map).cast<String, dynamic>()),
      percentage: map['percentage'] as double,
    );
  }
}
