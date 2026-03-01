// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scale_rule_auth.dart';

/// Container App container Custom scaling rule.
class CustomScaleRule {
  /// Authentication secrets for the custom scale rule.
  final List<ScaleRuleAuth>? auth;
  /// The resource ID of a user-assigned managed identity that is assigned to the Container App, or 'system' for system-assigned identity.
  final String? identity;
  /// Metadata properties to describe custom scale rule.
  final Map<String, String>? metadata;
  /// Type of the custom scale rule
  /// eg: azure-servicebus, redis etc.
  final String? type;

  /// Creates a new [CustomScaleRule].
  /// [auth] Authentication secrets for the custom scale rule.
  /// [identity] The resource ID of a user-assigned managed identity that is assigned to the Container App, or 'system' for system-assigned identity.
  /// [metadata] Metadata properties to describe custom scale rule.
  /// [type] Type of the custom scale rule
  CustomScaleRule({
    this.auth,
    this.identity,
    this.metadata,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'auth': ?auth == null ? null : pulumi.Input.encodeList<ScaleRuleAuth, Map<String, dynamic>>(auth!, (value) => value.toMap()),
      'identity': ?identity,
      'metadata': ?metadata,
      'type': ?type,
    };
  }

  factory CustomScaleRule.fromMap(Map<String, dynamic> map) {
    return CustomScaleRule(
      auth: map['auth'] == null ? null : pulumi.Input.decodeList<ScaleRuleAuth>(map['auth'], (value) => ScaleRuleAuth.fromMap((value as Map).cast<String, dynamic>())),
      identity: map['identity'] == null ? null : map['identity'] as String,
      metadata: map['metadata'] == null ? null : (map['metadata'] as Map).cast<String, String>(),
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

