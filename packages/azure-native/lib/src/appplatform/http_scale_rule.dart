// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scale_rule_auth.dart';

/// Azure Spring Apps App Instance Http scaling rule.
class HttpScaleRule {
  /// Authentication secrets for the custom scale rule.
  final List<ScaleRuleAuth>? auth;
  /// Metadata properties to describe http scale rule.
  final Map<String, String>? metadata;

  /// Creates a new [HttpScaleRule].
  /// [auth] Authentication secrets for the custom scale rule.
  /// [metadata] Metadata properties to describe http scale rule.
  HttpScaleRule({
    this.auth,
    this.metadata,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'auth': ?auth == null ? null : pulumi.Input.encodeList<ScaleRuleAuth, Map<String, dynamic>>(auth!, (value) => value.toMap()),
      'metadata': ?metadata,
    };
  }

  factory HttpScaleRule.fromMap(Map<String, dynamic> map) {
    return HttpScaleRule(
      auth: map['auth'] == null ? null : pulumi.Input.decodeList<ScaleRuleAuth>(map['auth'], (value) => ScaleRuleAuth.fromMap((value as Map).cast<String, dynamic>())),
      metadata: map['metadata'] == null ? null : (map['metadata'] as Map).cast<String, String>(),
    );
  }
}

