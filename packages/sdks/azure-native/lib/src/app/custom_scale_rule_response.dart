// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scale_rule_auth_response.dart';

/// Container App container Custom scaling rule.
class CustomScaleRuleResponse {
  /// Authentication secrets for the custom scale rule.
  final pulumi.Input<List<ScaleRuleAuthResponse>>? auth;
  /// The resource ID of a user-assigned managed identity that is assigned to the Container App, or 'system' for system-assigned identity.
  final pulumi.Input<String>? identity;
  /// Metadata properties to describe custom scale rule.
  final pulumi.Input<Map<String, String>>? metadata;
  /// Type of the custom scale rule
  /// eg: azure-servicebus, redis etc.
  final pulumi.Input<String>? type;

  /// Creates a new [CustomScaleRuleResponse].
  /// [auth] Authentication secrets for the custom scale rule.
  /// [identity] The resource ID of a user-assigned managed identity that is assigned to the Container App, or 'system' for system-assigned identity.
  /// [metadata] Metadata properties to describe custom scale rule.
  /// [type] Type of the custom scale rule
  CustomScaleRuleResponse({
    this.auth,
    this.identity,
    this.metadata,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'auth': ?pulumi.Input.mapOptionalInputValue<List<ScaleRuleAuthResponse>, List<Map<String, dynamic>>>(auth, (value) => pulumi.Input.encodeList<ScaleRuleAuthResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'identity': ?identity,
      'metadata': ?metadata,
      'type': ?type,
    };
  }

  factory CustomScaleRuleResponse.fromMap(Map<String, dynamic> map) {
    return CustomScaleRuleResponse(
      auth: map['auth'] == null ? null : (pulumi.Input.decodeList<ScaleRuleAuthResponse>(map['auth']!, (value) => ScaleRuleAuthResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      identity: map['identity'] == null ? null : (map['identity']! as String).input(),
      metadata: map['metadata'] == null ? null : ((map['metadata']! as Map).cast<String, String>()).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
    );
  }
}

