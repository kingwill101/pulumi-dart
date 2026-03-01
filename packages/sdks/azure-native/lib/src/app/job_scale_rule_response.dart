// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scale_rule_auth_response.dart';

/// Scaling rule.
class JobScaleRuleResponse {
  /// Authentication secrets for the scale rule.
  final List<ScaleRuleAuthResponse>? auth;
  /// The resource ID of a user-assigned managed identity that is assigned to the job, or 'system' for system-assigned identity.
  final String? identity;
  /// Metadata properties to describe the scale rule.
  final dynamic metadata;
  /// Scale Rule Name
  final String? name;
  /// Type of the scale rule
  /// eg: azure-servicebus, redis etc.
  final String? type;

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
      'auth': ?auth == null ? null : pulumi.Input.encodeList<ScaleRuleAuthResponse, Map<String, dynamic>>(auth!, (value) => value.toMap()),
      'identity': ?identity,
      'metadata': ?metadata,
      'name': ?name,
      'type': ?type,
    };
  }

  factory JobScaleRuleResponse.fromMap(Map<String, dynamic> map) {
    return JobScaleRuleResponse(
      auth: map['auth'] == null ? null : pulumi.Input.decodeList<ScaleRuleAuthResponse>(map['auth'], (value) => ScaleRuleAuthResponse.fromMap((value as Map).cast<String, dynamic>())),
      identity: map['identity'] == null ? null : map['identity'] as String,
      metadata: map['metadata'] == null ? null : map['metadata'],
      name: map['name'] == null ? null : map['name'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

