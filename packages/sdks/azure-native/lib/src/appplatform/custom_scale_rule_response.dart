// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scale_rule_auth_response.dart';

/// Azure Spring Apps App Instance Custom scaling rule.
class CustomScaleRuleResponse {
  /// Authentication secrets for the custom scale rule.
  final pulumi.Input<List<ScaleRuleAuthResponse>?>? auth;
  /// Metadata properties to describe custom scale rule.
  final pulumi.Input<Map<String, String>?>? metadata;
  /// Type of the custom scale rule
  /// eg: azure-servicebus, redis etc.
  final pulumi.Input<String?>? type;

  /// Creates a new [CustomScaleRuleResponse].
  /// [auth] Authentication secrets for the custom scale rule.
  /// [metadata] Metadata properties to describe custom scale rule.
  /// [type] Type of the custom scale rule
  const CustomScaleRuleResponse({
    this.auth,
    this.metadata,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'auth': ?pulumi.Input.mapOptionalInputValue<List<ScaleRuleAuthResponse>, List<Map<String, dynamic>>>(auth, (value) => pulumi.Input.encodeList<ScaleRuleAuthResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'metadata': ?metadata,
      'type': ?type,
    };
  }

  factory CustomScaleRuleResponse.fromMap(Map<String, dynamic> map) {
    return CustomScaleRuleResponse(
      auth: (() { final guardedValue = map['auth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ScaleRuleAuthResponse>(guardedValue, (value) => ScaleRuleAuthResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
