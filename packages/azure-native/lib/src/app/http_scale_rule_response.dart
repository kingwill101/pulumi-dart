// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scale_rule_auth_response.dart';

/// Container App container Http scaling rule.
class HttpScaleRuleResponse {
  /// Authentication secrets for the custom scale rule.
  final List<ScaleRuleAuthResponse>? auth;
  /// The resource ID of a user-assigned managed identity that is assigned to the Container App, or 'system' for system-assigned identity.
  final String? identity;
  /// Metadata properties to describe http scale rule.
  final Map<String, String>? metadata;

  /// Creates a new [HttpScaleRuleResponse].
  /// [auth] Authentication secrets for the custom scale rule.
  /// [identity] The resource ID of a user-assigned managed identity that is assigned to the Container App, or 'system' for system-assigned identity.
  /// [metadata] Metadata properties to describe http scale rule.
  HttpScaleRuleResponse({
    this.auth,
    this.identity,
    this.metadata,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'auth': ?auth == null ? null : pulumi.Input.encodeList<ScaleRuleAuthResponse, Map<String, dynamic>>(auth!, (value) => value.toMap()),
      'identity': ?identity,
      'metadata': ?metadata,
    };
  }

  factory HttpScaleRuleResponse.fromMap(Map<String, dynamic> map) {
    return HttpScaleRuleResponse(
      auth: map['auth'] == null ? null : pulumi.Input.decodeList<ScaleRuleAuthResponse>(map['auth'], (value) => ScaleRuleAuthResponse.fromMap((value as Map).cast<String, dynamic>())),
      identity: map['identity'] == null ? null : map['identity'] as String,
      metadata: map['metadata'] == null ? null : (map['metadata'] as Map).cast<String, String>(),
    );
  }
}

