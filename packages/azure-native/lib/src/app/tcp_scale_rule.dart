// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scale_rule_auth.dart';

/// Container App container Tcp scaling rule.
class TcpScaleRule {
  /// Authentication secrets for the tcp scale rule.
  final List<ScaleRuleAuth>? auth;
  /// The resource ID of a user-assigned managed identity that is assigned to the Container App, or 'system' for system-assigned identity.
  final String? identity;
  /// Metadata properties to describe tcp scale rule.
  final Map<String, String>? metadata;

  /// Creates a new [TcpScaleRule].
  /// [auth] Authentication secrets for the tcp scale rule.
  /// [identity] The resource ID of a user-assigned managed identity that is assigned to the Container App, or 'system' for system-assigned identity.
  /// [metadata] Metadata properties to describe tcp scale rule.
  TcpScaleRule({
    this.auth,
    this.identity,
    this.metadata,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'auth': ?auth == null ? null : pulumi.Input.encodeList<ScaleRuleAuth, Map<String, dynamic>>(auth!, (value) => value.toMap()),
      'identity': ?identity,
      'metadata': ?metadata,
    };
  }

  factory TcpScaleRule.fromMap(Map<String, dynamic> map) {
    return TcpScaleRule(
      auth: map['auth'] == null ? null : pulumi.Input.decodeList<ScaleRuleAuth>(map['auth'], (value) => ScaleRuleAuth.fromMap((value as Map).cast<String, dynamic>())),
      identity: map['identity'] == null ? null : map['identity'] as String,
      metadata: map['metadata'] == null ? null : (map['metadata'] as Map).cast<String, String>(),
    );
  }
}

