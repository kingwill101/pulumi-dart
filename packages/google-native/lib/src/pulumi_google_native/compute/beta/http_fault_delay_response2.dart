// ignore_for_file: unused_element, unnecessary_cast

import 'duration_response2.dart';

/// Specifies the delay introduced by the load balancer before forwarding the request to the backend service as part of fault injection.
class HttpFaultDelayResponse2 {
  /// Specifies the value of the fixed delay interval.
  final DurationResponse2 fixedDelay;

  /// The percentage of traffic for connections, operations, or requests for which a delay is introduced as part of fault injection. The value must be from 0.0 to 100.0 inclusive.
  final double percentage;

  HttpFaultDelayResponse2({
    required this.fixedDelay,
    required this.percentage,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['fixedDelay'] = fixedDelay.toMap();
    map['percentage'] = percentage;
    return map;
  }

  factory HttpFaultDelayResponse2.fromMap(Map<String, dynamic> map) {
    return HttpFaultDelayResponse2(
      fixedDelay: DurationResponse2.fromMap(
          (map['fixedDelay'] as Map).cast<String, dynamic>()),
      percentage: map['percentage'] as double,
    );
  }
}
