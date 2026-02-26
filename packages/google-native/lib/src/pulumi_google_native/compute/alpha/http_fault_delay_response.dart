// ignore_for_file: unused_element, unnecessary_cast

import 'duration_response.dart';

/// Specifies the delay introduced by the load balancer before forwarding the request to the backend service as part of fault injection.
class HttpFaultDelayResponse {
  /// Specifies the value of the fixed delay interval.
  final DurationResponse fixedDelay;

  /// The percentage of traffic for connections, operations, or requests for which a delay is introduced as part of fault injection. The value must be from 0.0 to 100.0 inclusive.
  final double percentage;

  HttpFaultDelayResponse({
    required this.fixedDelay,
    required this.percentage,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['fixedDelay'] = fixedDelay.toMap();
    map['percentage'] = percentage;
    return map;
  }

  factory HttpFaultDelayResponse.fromMap(Map<String, dynamic> map) {
    return HttpFaultDelayResponse(
      fixedDelay: DurationResponse.fromMap(
          (map['fixedDelay'] as Map).cast<String, dynamic>()),
      percentage: map['percentage'] as double,
    );
  }
}
