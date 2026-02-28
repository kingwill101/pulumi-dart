// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'authorization_policy_rule_destination.dart';
import 'authorization_policy_rule_source.dart';

class AuthorizationPolicyRule {
  /// List of attributes for the traffic destination. All of the destinations must match. A destination is a match if a request matches all the specified hosts, ports, methods and headers.
  /// If not set, the action specified in the 'action' field will be applied without any rule checks for the destination.
  /// Structure is documented below.
  final List<AuthorizationPolicyRuleDestination>? destinations;

  /// List of attributes for the traffic source. All of the sources must match. A source is a match if both principals and ipBlocks match.
  /// If not set, the action specified in the 'action' field will be applied without any rule checks for the source.
  /// Structure is documented below.
  final List<AuthorizationPolicyRuleSource>? sources;

  /// Creates a new [AuthorizationPolicyRule].
  /// [destinations] List of attributes for the traffic destination. All of the destinations must match. A destination is a match if a request matches all the specified hosts, ports, methods and headers.
  /// [sources] List of attributes for the traffic source. All of the sources must match. A source is a match if both principals and ipBlocks match.
  AuthorizationPolicyRule({
    this.destinations,
    this.sources,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final destinationsValue = destinations;
    if (destinationsValue != null) {
      map['destinations'] = pulumi.Input.encodeList<
          AuthorizationPolicyRuleDestination,
          Map<String, dynamic>>(destinationsValue, (value) => value.toMap());
    }
    final sourcesValue = sources;
    if (sourcesValue != null) {
      map['sources'] = pulumi.Input.encodeList<AuthorizationPolicyRuleSource,
          Map<String, dynamic>>(sourcesValue, (value) => value.toMap());
    }
    return map;
  }

  factory AuthorizationPolicyRule.fromMap(Map<String, dynamic> map) {
    return AuthorizationPolicyRule(
      destinations: map['destinations'] == null
          ? null
          : pulumi.Input.decodeList<AuthorizationPolicyRuleDestination>(
              map['destinations'],
              (value) => AuthorizationPolicyRuleDestination.fromMap(
                  (value as Map).cast<String, dynamic>())),
      sources: map['sources'] == null
          ? null
          : pulumi.Input.decodeList<AuthorizationPolicyRuleSource>(
              map['sources'],
              (value) => AuthorizationPolicyRuleSource.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
