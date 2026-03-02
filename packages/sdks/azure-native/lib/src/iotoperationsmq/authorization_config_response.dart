// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'authorization_basic_rule_response.dart';

/// Broker AuthorizationConfig properties
class AuthorizationConfigResponse {
  /// Enable caching of the authorization rules.
  final pulumi.Input<bool>? enableCache;
  /// Authorization Rules to be used. If no rule is set, but Authorization Resource is used that would mean DenyAll.
  final pulumi.Input<List<AuthorizationBasicRuleResponse>>? rules;

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
      'rules': ?pulumi.Input.mapOptionalInputValue<List<AuthorizationBasicRuleResponse>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<AuthorizationBasicRuleResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AuthorizationConfigResponse.fromMap(Map<String, dynamic> map) {
    return AuthorizationConfigResponse(
      enableCache: map['enableCache'] == null ? null : (map['enableCache']! as bool).input(),
      rules: map['rules'] == null ? null : (pulumi.Input.decodeList<AuthorizationBasicRuleResponse>(map['rules']!, (value) => AuthorizationBasicRuleResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

