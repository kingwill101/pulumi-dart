// ignore_for_file: unused_element, unnecessary_cast

import 'duration_compute_beta.dart';

/// Specifies the delay introduced by the load balancer before forwarding the request to the backend service as part of fault injection.
class HttpFaultDelayComputeBeta {
  /// Specifies the value of the fixed delay interval.
  final DurationComputeBeta? fixedDelay;

  /// The percentage of traffic for connections, operations, or requests for which a delay is introduced as part of fault injection. The value must be from 0.0 to 100.0 inclusive.
  final double? percentage;

  HttpFaultDelayComputeBeta({
    this.fixedDelay,
    this.percentage,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final fixedDelayValue = fixedDelay;
    if (fixedDelayValue != null) {
      map['fixedDelay'] = fixedDelayValue.toMap();
    }
    final percentageValue = percentage;
    if (percentageValue != null) {
      map['percentage'] = percentageValue;
    }
    return map;
  }

  factory HttpFaultDelayComputeBeta.fromMap(Map<String, dynamic> map) {
    return HttpFaultDelayComputeBeta(
      fixedDelay: map['fixedDelay'] == null
          ? null
          : DurationComputeBeta.fromMap(
              (map['fixedDelay'] as Map).cast<String, dynamic>()),
      percentage:
          map['percentage'] == null ? null : map['percentage'] as double,
    );
  }
}
