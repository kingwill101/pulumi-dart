// ignore_for_file: unused_element, unnecessary_cast

import '../http_route_rule_action_request_mirror_policy_destination/http_route_rule_action_request_mirror_policy_destination.dart';

class HttpRouteRuleActionRequestMirrorPolicy {
  /// The destination the requests will be mirrored to.
  /// Structure is documented below.
  final HttpRouteRuleActionRequestMirrorPolicyDestination? destination;

  HttpRouteRuleActionRequestMirrorPolicy({
    this.destination,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final destinationValue = destination;
    if (destinationValue != null) {
      map['destination'] = destinationValue.toMap();
    }
    return map;
  }

  factory HttpRouteRuleActionRequestMirrorPolicy.fromMap(
      Map<String, dynamic> map) {
    return HttpRouteRuleActionRequestMirrorPolicy(
      destination: map['destination'] == null
          ? null
          : HttpRouteRuleActionRequestMirrorPolicyDestination.fromMap(
              (map['destination'] as Map).cast<String, dynamic>()),
    );
  }
}
