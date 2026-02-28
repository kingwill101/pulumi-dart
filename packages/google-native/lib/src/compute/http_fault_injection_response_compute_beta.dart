// ignore_for_file: unused_element, unnecessary_cast

import 'http_fault_abort_response_compute_beta.dart';
import 'http_fault_delay_response_compute_beta.dart';

/// The specification for fault injection introduced into traffic to test the resiliency of clients to backend service failure. As part of fault injection, when clients send requests to a backend service, delays can be introduced by the load balancer on a percentage of requests before sending those request to the backend service. Similarly requests from clients can be aborted by the load balancer for a percentage of requests.
class HttpFaultInjectionResponseComputeBeta {
  /// The specification for how client requests are aborted as part of fault injection.
  final HttpFaultAbortResponseComputeBeta abort;
  /// The specification for how client requests are delayed as part of fault injection, before being sent to a backend service.
  final HttpFaultDelayResponseComputeBeta delay;

  /// Creates a new [HttpFaultInjectionResponseComputeBeta].
  /// [abort] The specification for how client requests are aborted as part of fault injection.
  /// [delay] The specification for how client requests are delayed as part of fault injection, before being sent to a backend service.
  HttpFaultInjectionResponseComputeBeta({
    required this.abort,
    required this.delay,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'abort': abort.toMap(),
      'delay': delay.toMap(),
    };
  }

  factory HttpFaultInjectionResponseComputeBeta.fromMap(Map<String, dynamic> map) {
    return HttpFaultInjectionResponseComputeBeta(
      abort: HttpFaultAbortResponseComputeBeta.fromMap((map['abort'] as Map).cast<String, dynamic>()),
      delay: HttpFaultDelayResponseComputeBeta.fromMap((map['delay'] as Map).cast<String, dynamic>()),
    );
  }
}

