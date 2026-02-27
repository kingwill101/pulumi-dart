// ignore_for_file: unused_element, unnecessary_cast

import 'grpc_route_fault_injection_policy_abort_networkservices_v1beta1.dart';
import 'grpc_route_fault_injection_policy_delay_networkservices_v1beta1.dart';

/// The specification for fault injection introduced into traffic to test the resiliency of clients to destination service failure. As part of fault injection, when clients send requests to a destination, delays can be introduced on a percentage of requests before sending those requests to the destination service. Similarly requests from clients can be aborted by for a percentage of requests.
class GrpcRouteFaultInjectionPolicyNetworkservicesV1beta1 {
  /// The specification for aborting to client requests.
  final GrpcRouteFaultInjectionPolicyAbortNetworkservicesV1beta1? abort;

  /// The specification for injecting delay to client requests.
  final GrpcRouteFaultInjectionPolicyDelayNetworkservicesV1beta1? delay;

  GrpcRouteFaultInjectionPolicyNetworkservicesV1beta1({
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

  factory GrpcRouteFaultInjectionPolicyNetworkservicesV1beta1.fromMap(
      Map<String, dynamic> map) {
    return GrpcRouteFaultInjectionPolicyNetworkservicesV1beta1(
      abort: map['abort'] == null
          ? null
          : GrpcRouteFaultInjectionPolicyAbortNetworkservicesV1beta1.fromMap(
              (map['abort'] as Map).cast<String, dynamic>()),
      delay: map['delay'] == null
          ? null
          : GrpcRouteFaultInjectionPolicyDelayNetworkservicesV1beta1.fromMap(
              (map['delay'] as Map).cast<String, dynamic>()),
    );
  }
}
