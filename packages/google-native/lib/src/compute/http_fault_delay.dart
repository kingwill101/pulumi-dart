// ignore_for_file: unused_element, unnecessary_cast

import 'duration.dart';

/// Specifies the delay introduced by the load balancer before forwarding the request to the backend service as part of fault injection.
class HttpFaultDelay {
  /// Specifies the value of the fixed delay interval.
  final Duration? fixedDelay;
  /// The percentage of traffic for connections, operations, or requests for which a delay is introduced as part of fault injection. The value must be from 0.0 to 100.0 inclusive.
  final double? percentage;

  /// Creates a new [HttpFaultDelay].
  /// [fixedDelay] Specifies the value of the fixed delay interval.
  /// [percentage] The percentage of traffic for connections, operations, or requests for which a delay is introduced as part of fault injection. The value must be from 0.0 to 100.0 inclusive.
  HttpFaultDelay({
    this.fixedDelay,
    this.percentage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fixedDelay': ?fixedDelay == null ? null : fixedDelay!.toMap(),
      'percentage': ?percentage,
    };
  }

  factory HttpFaultDelay.fromMap(Map<String, dynamic> map) {
    return HttpFaultDelay(
      fixedDelay: map['fixedDelay'] == null ? null : Duration.fromMap((map['fixedDelay'] as Map).cast<String, dynamic>()),
      percentage: map['percentage'] == null ? null : map['percentage'] as double,
    );
  }
}

