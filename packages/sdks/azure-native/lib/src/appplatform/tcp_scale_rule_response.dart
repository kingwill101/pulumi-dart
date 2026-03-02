// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scale_rule_auth_response.dart';

/// Azure Spring Apps App Instance Tcp scaling rule.
class TcpScaleRuleResponse {
  /// Authentication secrets for the tcp scale rule.
  final pulumi.Input<List<ScaleRuleAuthResponse>>? auth;
  /// Metadata properties to describe tcp scale rule.
  final pulumi.Input<Map<String, String>>? metadata;

  /// Creates a new [TcpScaleRuleResponse].
  /// [auth] Authentication secrets for the tcp scale rule.
  /// [metadata] Metadata properties to describe tcp scale rule.
  TcpScaleRuleResponse({
    this.auth,
    this.metadata,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'auth': ?pulumi.Input.mapOptionalInputValue<List<ScaleRuleAuthResponse>, List<Map<String, dynamic>>>(auth, (value) => pulumi.Input.encodeList<ScaleRuleAuthResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'metadata': ?metadata,
    };
  }

  factory TcpScaleRuleResponse.fromMap(Map<String, dynamic> map) {
    return TcpScaleRuleResponse(
      auth: map['auth'] == null ? null : (pulumi.Input.decodeList<ScaleRuleAuthResponse>(map['auth'], (value) => ScaleRuleAuthResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      metadata: map['metadata'] == null ? null : ((map['metadata'] as Map).cast<String, String>()).input(),
    );
  }
}

