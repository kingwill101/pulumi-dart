// ignore_for_file: unused_element, unnecessary_cast

import 'http_route_rule_action_request_mirror_policy_destination.dart';

class HttpRouteRuleActionRequestMirrorPolicy {
  /// The destination the requests will be mirrored to.
  /// Structure is documented below.
  final HttpRouteRuleActionRequestMirrorPolicyDestination? destination;

  /// Creates a new [HttpRouteRuleActionRequestMirrorPolicy].
  /// [destination] The destination the requests will be mirrored to.
  HttpRouteRuleActionRequestMirrorPolicy({this.destination});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destination': ?destination == null ? null : destination!.toMap(),
    };
  }

  factory HttpRouteRuleActionRequestMirrorPolicy.fromMap(
    Map<String, dynamic> map,
  ) {
    return HttpRouteRuleActionRequestMirrorPolicy(
      destination: map['destination'] == null
          ? null
          : HttpRouteRuleActionRequestMirrorPolicyDestination.fromMap(
              (map['destination'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
