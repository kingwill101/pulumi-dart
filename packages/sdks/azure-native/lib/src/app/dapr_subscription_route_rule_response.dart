// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Dapr Pubsub Event Subscription Route Rule is used to specify the condition for sending a message to a specific path.
class DaprSubscriptionRouteRuleResponse {
  /// The optional CEL expression used to match the event. If the match is not specified, then the route is considered the default. The rules are tested in the order specified, so they should be define from most-to-least specific. The default route should appear last in the list.
  final pulumi.Input<String>? match;
  /// The path for events that match this rule
  final pulumi.Input<String>? path;

  /// Creates a new [DaprSubscriptionRouteRuleResponse].
  /// [match] The optional CEL expression used to match the event. If the match is not specified, then the route is considered the default. The rules are tested in the order specified, so they should be define from most-to-least specific. The default route should appear last in the list.
  /// [path] The path for events that match this rule
  DaprSubscriptionRouteRuleResponse({
    this.match,
    this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'match': ?match,
      'path': ?path,
    };
  }

  factory DaprSubscriptionRouteRuleResponse.fromMap(Map<String, dynamic> map) {
    return DaprSubscriptionRouteRuleResponse(
      match: map['match'] == null ? null : (map['match']! as String).input(),
      path: map['path'] == null ? null : (map['path']! as String).input(),
    );
  }
}

