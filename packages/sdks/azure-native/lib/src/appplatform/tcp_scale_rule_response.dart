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
  TcpScaleRuleResponse({this.auth, this.metadata});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'auth':
          ?pulumi.Input.mapOptionalInputValue<
            List<ScaleRuleAuthResponse>,
            List<Map<String, dynamic>>
          >(
            auth,
            (value) =>
                pulumi.Input.encodeList<
                  ScaleRuleAuthResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'metadata': ?metadata,
    };
  }

  factory TcpScaleRuleResponse.fromMap(Map<String, dynamic> map) {
    return TcpScaleRuleResponse(
      auth: (() {
        final guardedValue = map['auth'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ScaleRuleAuthResponse>(
            guardedValue,
            (value) => ScaleRuleAuthResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      metadata: (() {
        final guardedValue = map['metadata'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
