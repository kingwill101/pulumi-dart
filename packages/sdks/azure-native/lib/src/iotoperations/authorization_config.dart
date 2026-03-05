// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'authorization_rule.dart';

/// Broker AuthorizationConfig properties
class AuthorizationConfig {
  /// Enable caching of the authorization rules.
  final pulumi.Input<String>? cache;
  /// The authorization rules to follow. If no rule is set, but Authorization Resource is used that would mean DenyAll.
  final pulumi.Input<List<AuthorizationRule>>? rules;

  /// Creates a new [AuthorizationConfig].
  /// [cache] Enable caching of the authorization rules.
  /// [rules] The authorization rules to follow. If no rule is set, but Authorization Resource is used that would mean DenyAll.
  AuthorizationConfig({
    this.cache,
    this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cache': ?cache,
      'rules': ?pulumi.Input.mapOptionalInputValue<List<AuthorizationRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<AuthorizationRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AuthorizationConfig.fromMap(Map<String, dynamic> map) {
    return AuthorizationConfig(
      cache: (() { final guardedValue = map['cache']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AuthorizationRule>(guardedValue, (value) => AuthorizationRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

