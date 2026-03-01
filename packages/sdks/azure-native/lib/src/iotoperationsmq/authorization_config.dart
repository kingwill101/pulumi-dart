// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'authorization_basic_rule.dart';

/// Broker AuthorizationConfig properties
class AuthorizationConfig {
  /// Enable caching of the authorization rules.
  final bool? enableCache;
  /// Authorization Rules to be used. If no rule is set, but Authorization Resource is used that would mean DenyAll.
  final List<AuthorizationBasicRule>? rules;

  /// Creates a new [AuthorizationConfig].
  /// [enableCache] Enable caching of the authorization rules.
  /// [rules] Authorization Rules to be used. If no rule is set, but Authorization Resource is used that would mean DenyAll.
  AuthorizationConfig({
    this.enableCache,
    this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableCache': ?enableCache,
      'rules': ?rules == null ? null : pulumi.Input.encodeList<AuthorizationBasicRule, Map<String, dynamic>>(rules!, (value) => value.toMap()),
    };
  }

  factory AuthorizationConfig.fromMap(Map<String, dynamic> map) {
    return AuthorizationConfig(
      enableCache: map['enableCache'] == null ? null : map['enableCache'] as bool,
      rules: map['rules'] == null ? null : pulumi.Input.decodeList<AuthorizationBasicRule>(map['rules'], (value) => AuthorizationBasicRule.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

