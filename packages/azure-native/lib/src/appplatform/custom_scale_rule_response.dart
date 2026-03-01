// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scale_rule_auth_response.dart';

/// Azure Spring Apps App Instance Custom scaling rule.
class CustomScaleRuleResponse {
  /// Authentication secrets for the custom scale rule.
  final List<ScaleRuleAuthResponse>? auth;
  /// Metadata properties to describe custom scale rule.
  final Map<String, String>? metadata;
  /// Type of the custom scale rule
  /// eg: azure-servicebus, redis etc.
  final String? type;

  /// Creates a new [CustomScaleRuleResponse].
  /// [auth] Authentication secrets for the custom scale rule.
  /// [metadata] Metadata properties to describe custom scale rule.
  /// [type] Type of the custom scale rule
  CustomScaleRuleResponse({
    this.auth,
    this.metadata,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'auth': ?auth == null ? null : pulumi.Input.encodeList<ScaleRuleAuthResponse, Map<String, dynamic>>(auth!, (value) => value.toMap()),
      'metadata': ?metadata,
      'type': ?type,
    };
  }

  factory CustomScaleRuleResponse.fromMap(Map<String, dynamic> map) {
    return CustomScaleRuleResponse(
      auth: map['auth'] == null ? null : pulumi.Input.decodeList<ScaleRuleAuthResponse>(map['auth'], (value) => ScaleRuleAuthResponse.fromMap((value as Map).cast<String, dynamic>())),
      metadata: map['metadata'] == null ? null : (map['metadata'] as Map).cast<String, String>(),
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

