// ignore_for_file: unused_element, unnecessary_cast

import 'http_fault_abort_response3.dart';
import 'http_fault_delay_response3.dart';

/// The specification for fault injection introduced into traffic to test the resiliency of clients to backend service failure. As part of fault injection, when clients send requests to a backend service, delays can be introduced by the load balancer on a percentage of requests before sending those request to the backend service. Similarly requests from clients can be aborted by the load balancer for a percentage of requests.
class HttpFaultInjectionResponse3 {
  /// The specification for how client requests are aborted as part of fault injection.
  final HttpFaultAbortResponse3 abort;

  /// The specification for how client requests are delayed as part of fault injection, before being sent to a backend service.
  final HttpFaultDelayResponse3 delay;

  HttpFaultInjectionResponse3({
    required this.abort,
    required this.delay,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['abort'] = abort.toMap();
    map['delay'] = delay.toMap();
    return map;
  }

  factory HttpFaultInjectionResponse3.fromMap(Map<String, dynamic> map) {
    return HttpFaultInjectionResponse3(
      abort: HttpFaultAbortResponse3.fromMap(
          (map['abort'] as Map).cast<String, dynamic>()),
      delay: HttpFaultDelayResponse3.fromMap(
          (map['delay'] as Map).cast<String, dynamic>()),
    );
  }
}
