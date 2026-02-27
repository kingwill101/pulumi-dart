// ignore_for_file: unused_element, unnecessary_cast

import 'http_route_fault_injection_policy_abort_response_networkservices_v1beta1.dart';
import 'http_route_fault_injection_policy_delay_response_networkservices_v1beta1.dart';

/// The specification for fault injection introduced into traffic to test the resiliency of clients to destination service failure. As part of fault injection, when clients send requests to a destination, delays can be introduced by client proxy on a percentage of requests before sending those requests to the destination service. Similarly requests can be aborted by client proxy for a percentage of requests.
class HttpRouteFaultInjectionPolicyResponseNetworkservicesV1beta1 {
  /// The specification for aborting to client requests.
  final HttpRouteFaultInjectionPolicyAbortResponseNetworkservicesV1beta1 abort;

  /// The specification for injecting delay to client requests.
  final HttpRouteFaultInjectionPolicyDelayResponseNetworkservicesV1beta1 delay;

  HttpRouteFaultInjectionPolicyResponseNetworkservicesV1beta1({
    required this.abort,
    required this.delay,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['abort'] = abort.toMap();
    map['delay'] = delay.toMap();
    return map;
  }

  factory HttpRouteFaultInjectionPolicyResponseNetworkservicesV1beta1.fromMap(
      Map<String, dynamic> map) {
    return HttpRouteFaultInjectionPolicyResponseNetworkservicesV1beta1(
      abort: HttpRouteFaultInjectionPolicyAbortResponseNetworkservicesV1beta1
          .fromMap((map['abort'] as Map).cast<String, dynamic>()),
      delay: HttpRouteFaultInjectionPolicyDelayResponseNetworkservicesV1beta1
          .fromMap((map['delay'] as Map).cast<String, dynamic>()),
    );
  }
}
