// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'authorization_basic_rule_response.dart';

/// Broker AuthorizationConfig properties
class AuthorizationConfigResponse {
  /// Enable caching of the authorization rules.
  final bool? enableCache;
  /// Authorization Rules to be used. If no rule is set, but Authorization Resource is used that would mean DenyAll.
  final List<AuthorizationBasicRuleResponse>? rules;

  /// Creates a new [AuthorizationConfigResponse].
  /// [enableCache] Enable caching of the authorization rules.
  /// [rules] Authorization Rules to be used. If no rule is set, but Authorization Resource is used that would mean DenyAll.
  AuthorizationConfigResponse({
    this.enableCache,
    this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableCache': ?enableCache,
      'rules': ?rules == null ? null : pulumi.Input.encodeList<AuthorizationBasicRuleResponse, Map<String, dynamic>>(rules!, (value) => value.toMap()),
    };
  }

  factory AuthorizationConfigResponse.fromMap(Map<String, dynamic> map) {
    return AuthorizationConfigResponse(
      enableCache: map['enableCache'] == null ? null : map['enableCache'] as bool,
      rules: map['rules'] == null ? null : pulumi.Input.decodeList<AuthorizationBasicRuleResponse>(map['rules'], (value) => AuthorizationBasicRuleResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

