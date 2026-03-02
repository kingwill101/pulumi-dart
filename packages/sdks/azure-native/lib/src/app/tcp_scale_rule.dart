// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scale_rule_auth.dart';

/// Container App container Tcp scaling rule.
class TcpScaleRule {
  /// Authentication secrets for the tcp scale rule.
  final pulumi.Input<List<ScaleRuleAuth>>? auth;
  /// The resource ID of a user-assigned managed identity that is assigned to the Container App, or 'system' for system-assigned identity.
  final pulumi.Input<String>? identity;
  /// Metadata properties to describe tcp scale rule.
  final pulumi.Input<Map<String, String>>? metadata;

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
      'auth': ?pulumi.Input.mapOptionalInputValue<List<ScaleRuleAuth>, List<Map<String, dynamic>>>(auth, (value) => pulumi.Input.encodeList<ScaleRuleAuth, Map<String, dynamic>>(value, (value) => value.toMap())),
      'identity': ?identity,
      'metadata': ?metadata,
    };
  }

  factory TcpScaleRule.fromMap(Map<String, dynamic> map) {
    return TcpScaleRule(
      auth: map['auth'] == null ? null : (pulumi.Input.decodeList<ScaleRuleAuth>(map['auth'], (value) => ScaleRuleAuth.fromMap((value as Map).cast<String, dynamic>()))).input(),
      identity: map['identity'] == null ? null : (map['identity'] as String).input(),
      metadata: map['metadata'] == null ? null : ((map['metadata'] as Map).cast<String, String>()).input(),
    );
  }
}

