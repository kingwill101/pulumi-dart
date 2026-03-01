// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'authorization_rule_response.dart';

/// Broker AuthorizationConfig properties
class AuthorizationConfigResponse {
  /// Enable caching of the authorization rules.
  final String? cache;
  /// The authorization rules to follow. If no rule is set, but Authorization Resource is used that would mean DenyAll.
  final List<AuthorizationRuleResponse>? rules;

  /// Creates a new [AuthorizationConfigResponse].
  /// [cache] Enable caching of the authorization rules.
  /// [rules] The authorization rules to follow. If no rule is set, but Authorization Resource is used that would mean DenyAll.
  AuthorizationConfigResponse({
    this.cache,
    this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cache': ?cache,
      'rules': ?rules == null ? null : pulumi.Input.encodeList<AuthorizationRuleResponse, Map<String, dynamic>>(rules!, (value) => value.toMap()),
    };
  }

  factory AuthorizationConfigResponse.fromMap(Map<String, dynamic> map) {
    return AuthorizationConfigResponse(
      cache: map['cache'] == null ? null : map['cache'] as String,
      rules: map['rules'] == null ? null : pulumi.Input.decodeList<AuthorizationRuleResponse>(map['rules'], (value) => AuthorizationRuleResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

