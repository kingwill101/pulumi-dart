// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../tcp_route_rule_action_destination/tcp_route_rule_action_destination.dart';

class TcpRouteRuleAction {
  /// The destination services to which traffic should be forwarded. At least one destination service is required.
  /// Structure is documented below.
  final List<TcpRouteRuleActionDestination>? destinations;

  /// Specifies the idle timeout for the selected route. The idle timeout is defined as the period in which there are no bytes sent or received on either the upstream or downstream connection. If not set, the default idle timeout is 30 seconds. If set to 0s, the timeout will be disabled.
  /// A duration in seconds with up to nine fractional digits, ending with 's'. Example: "3.5s".
  final String? idleTimeout;

  /// If true, Router will use the destination IP and port of the original connection as the destination of the request.
  final bool? originalDestination;

  TcpRouteRuleAction({
    this.destinations,
    this.idleTimeout,
    this.originalDestination,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final destinationsValue = destinations;
    if (destinationsValue != null) {
      map['destinations'] = pulumi.Input.encodeList<
          TcpRouteRuleActionDestination,
          Map<String, dynamic>>(destinationsValue, (value) => value.toMap());
    }
    final idleTimeoutValue = idleTimeout;
    if (idleTimeoutValue != null) {
      map['idleTimeout'] = idleTimeoutValue;
    }
    final originalDestinationValue = originalDestination;
    if (originalDestinationValue != null) {
      map['originalDestination'] = originalDestinationValue;
    }
    return map;
  }

  factory TcpRouteRuleAction.fromMap(Map<String, dynamic> map) {
    return TcpRouteRuleAction(
      destinations: map['destinations'] == null
          ? null
          : pulumi.Input.decodeList<TcpRouteRuleActionDestination>(
              map['destinations'],
              (value) => TcpRouteRuleActionDestination.fromMap(
                  (value as Map).cast<String, dynamic>())),
      idleTimeout:
          map['idleTimeout'] == null ? null : map['idleTimeout'] as String,
      originalDestination: map['originalDestination'] == null
          ? null
          : map['originalDestination'] as bool,
    );
  }
}
