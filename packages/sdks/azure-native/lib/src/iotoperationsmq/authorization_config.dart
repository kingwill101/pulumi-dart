// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'authorization_basic_rule.dart';

/// Broker AuthorizationConfig properties
class AuthorizationConfig {
  /// Enable caching of the authorization rules.
  final pulumi.Input<bool>? enableCache;
  /// Authorization Rules to be used. If no rule is set, but Authorization Resource is used that would mean DenyAll.
  final pulumi.Input<List<AuthorizationBasicRule>>? rules;

  /// Creates a new [AuthorizationConfig].
  /// [enableCache] Enable caching of the authorization rules.
  /// [rules] Authorization Rules to be used. If no rule is set, but Authorization Resource is used that would mean DenyAll.
  const AuthorizationConfig({
    this.enableCache,
    this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableCache': ?enableCache,
      'rules': ?pulumi.Input.mapOptionalInputValue<List<AuthorizationBasicRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<AuthorizationBasicRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AuthorizationConfig.fromMap(Map<String, dynamic> map) {
    return AuthorizationConfig(
      enableCache: (() { final guardedValue = map['enableCache']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AuthorizationBasicRule>(guardedValue, (value) => AuthorizationBasicRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
