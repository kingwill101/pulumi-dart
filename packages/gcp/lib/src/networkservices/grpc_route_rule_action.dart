// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'grpc_route_rule_action_destination.dart';
import 'grpc_route_rule_action_fault_injection_policy.dart';
import 'grpc_route_rule_action_retry_policy.dart';

class GrpcRouteRuleAction {
  /// The destination to which traffic should be forwarded.
  /// Structure is documented below.
  final List<GrpcRouteRuleActionDestination>? destinations;
  /// The specification for fault injection introduced into traffic to test the resiliency of clients to backend service failure.
  /// Structure is documented below.
  final GrpcRouteRuleActionFaultInjectionPolicy? faultInjectionPolicy;
  /// Specifies the retry policy associated with this route.
  /// Structure is documented below.
  final GrpcRouteRuleActionRetryPolicy? retryPolicy;
  /// Specifies the timeout for selected route.
  final String? timeout;

  /// Creates a new [GrpcRouteRuleAction].
  /// [destinations] The destination to which traffic should be forwarded.
  /// [faultInjectionPolicy] The specification for fault injection introduced into traffic to test the resiliency of clients to backend service failure.
  /// [retryPolicy] Specifies the retry policy associated with this route.
  /// [timeout] Specifies the timeout for selected route.
  GrpcRouteRuleAction({
    this.destinations,
    this.faultInjectionPolicy,
    this.retryPolicy,
    this.timeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinations': ?destinations == null ? null : pulumi.Input.encodeList<GrpcRouteRuleActionDestination, Map<String, dynamic>>(destinations!, (value) => value.toMap()),
      'faultInjectionPolicy': ?faultInjectionPolicy == null ? null : faultInjectionPolicy!.toMap(),
      'retryPolicy': ?retryPolicy == null ? null : retryPolicy!.toMap(),
      'timeout': ?timeout,
    };
  }

  factory GrpcRouteRuleAction.fromMap(Map<String, dynamic> map) {
    return GrpcRouteRuleAction(
      destinations: map['destinations'] == null ? null : pulumi.Input.decodeList<GrpcRouteRuleActionDestination>(map['destinations'], (value) => GrpcRouteRuleActionDestination.fromMap((value as Map).cast<String, dynamic>())),
      faultInjectionPolicy: map['faultInjectionPolicy'] == null ? null : GrpcRouteRuleActionFaultInjectionPolicy.fromMap((map['faultInjectionPolicy'] as Map).cast<String, dynamic>()),
      retryPolicy: map['retryPolicy'] == null ? null : GrpcRouteRuleActionRetryPolicy.fromMap((map['retryPolicy'] as Map).cast<String, dynamic>()),
      timeout: map['timeout'] == null ? null : map['timeout'] as String,
    );
  }
}

