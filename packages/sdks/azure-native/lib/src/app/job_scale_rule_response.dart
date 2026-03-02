// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scale_rule_auth_response.dart';

/// Scaling rule.
class JobScaleRuleResponse {
  /// Authentication secrets for the scale rule.
  final pulumi.Input<List<ScaleRuleAuthResponse>>? auth;
  /// The resource ID of a user-assigned managed identity that is assigned to the job, or 'system' for system-assigned identity.
  final pulumi.Input<String>? identity;
  /// Metadata properties to describe the scale rule.
  final pulumi.Input<dynamic>? metadata;
  /// Scale Rule Name
  final pulumi.Input<String>? name;
  /// Type of the scale rule
  /// eg: azure-servicebus, redis etc.
  final pulumi.Input<String>? type;

  /// Creates a new [JobScaleRuleResponse].
  /// [auth] Authentication secrets for the scale rule.
  /// [identity] The resource ID of a user-assigned managed identity that is assigned to the job, or 'system' for system-assigned identity.
  /// [metadata] Metadata properties to describe the scale rule.
  /// [name] Scale Rule Name
  /// [type] Type of the scale rule
  JobScaleRuleResponse({
    this.auth,
    this.identity,
    this.metadata,
    this.name,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'auth': ?pulumi.Input.mapOptionalInputValue<List<ScaleRuleAuthResponse>, List<Map<String, dynamic>>>(auth, (value) => pulumi.Input.encodeList<ScaleRuleAuthResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'identity': ?identity,
      'metadata': ?metadata,
      'name': ?name,
      'type': ?type,
    };
  }

  factory JobScaleRuleResponse.fromMap(Map<String, dynamic> map) {
    return JobScaleRuleResponse(
      auth: map['auth'] == null ? null : (pulumi.Input.decodeList<ScaleRuleAuthResponse>(map['auth'], (value) => ScaleRuleAuthResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      identity: map['identity'] == null ? null : (map['identity'] as String).input(),
      metadata: map['metadata'] == null ? null : (map['metadata']).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
    );
  }
}

