// ignore_for_file: unused_element, unnecessary_cast

import 'http_fault_abort.dart';
import 'http_fault_delay.dart';

/// The specification for fault injection introduced into traffic to test the resiliency of clients to backend service failure. As part of fault injection, when clients send requests to a backend service, delays can be introduced by the load balancer on a percentage of requests before sending those request to the backend service. Similarly requests from clients can be aborted by the load balancer for a percentage of requests.
class HttpFaultInjection {
  /// The specification for how client requests are aborted as part of fault injection.
  final HttpFaultAbort? abort;

  /// The specification for how client requests are delayed as part of fault injection, before being sent to a backend service.
  final HttpFaultDelay? delay;

  /// Creates a new [HttpFaultInjection].
  /// [abort] The specification for how client requests are aborted as part of fault injection.
  /// [delay] The specification for how client requests are delayed as part of fault injection, before being sent to a backend service.
  HttpFaultInjection({
    this.abort,
    this.delay,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final abortValue = abort;
    if (abortValue != null) {
      map['abort'] = abortValue.toMap();
    }
    final delayValue = delay;
    if (delayValue != null) {
      map['delay'] = delayValue.toMap();
    }
    return map;
  }

  factory HttpFaultInjection.fromMap(Map<String, dynamic> map) {
    return HttpFaultInjection(
      abort: map['abort'] == null
          ? null
          : HttpFaultAbort.fromMap(
              (map['abort'] as Map).cast<String, dynamic>()),
      delay: map['delay'] == null
          ? null
          : HttpFaultDelay.fromMap(
              (map['delay'] as Map).cast<String, dynamic>()),
    );
  }
}
