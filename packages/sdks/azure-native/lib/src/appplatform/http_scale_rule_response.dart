// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scale_rule_auth_response.dart';

/// Azure Spring Apps App Instance Http scaling rule.
class HttpScaleRuleResponse {
  /// Authentication secrets for the custom scale rule.
  final pulumi.Input<List<ScaleRuleAuthResponse>>? auth;
  /// Metadata properties to describe http scale rule.
  final pulumi.Input<Map<String, String>>? metadata;

  /// Creates a new [HttpScaleRuleResponse].
  /// [auth] Authentication secrets for the custom scale rule.
  /// [metadata] Metadata properties to describe http scale rule.
  HttpScaleRuleResponse({
    this.auth,
    this.metadata,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'auth': ?pulumi.Input.mapOptionalInputValue<List<ScaleRuleAuthResponse>, List<Map<String, dynamic>>>(auth, (value) => pulumi.Input.encodeList<ScaleRuleAuthResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'metadata': ?metadata,
    };
  }

  factory HttpScaleRuleResponse.fromMap(Map<String, dynamic> map) {
    return HttpScaleRuleResponse(
      auth: map['auth'] == null ? null : (pulumi.Input.decodeList<ScaleRuleAuthResponse>(map['auth'], (value) => ScaleRuleAuthResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      metadata: map['metadata'] == null ? null : ((map['metadata'] as Map).cast<String, String>()).input(),
    );
  }
}

