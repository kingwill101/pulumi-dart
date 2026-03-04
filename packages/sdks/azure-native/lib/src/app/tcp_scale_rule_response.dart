// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scale_rule_auth_response.dart';

/// Container App container Tcp scaling rule.
class TcpScaleRuleResponse {
  /// Authentication secrets for the tcp scale rule.
  final pulumi.Input<List<ScaleRuleAuthResponse>>? auth;

  /// The resource ID of a user-assigned managed identity that is assigned to the Container App, or 'system' for system-assigned identity.
  final pulumi.Input<String>? identity;

  /// Metadata properties to describe tcp scale rule.
  final pulumi.Input<Map<String, String>>? metadata;

  /// Creates a new [TcpScaleRuleResponse].
  /// [auth] Authentication secrets for the tcp scale rule.
  /// [identity] The resource ID of a user-assigned managed identity that is assigned to the Container App, or 'system' for system-assigned identity.
  /// [metadata] Metadata properties to describe tcp scale rule.
  TcpScaleRuleResponse({this.auth, this.identity, this.metadata});

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
      'identity': ?identity,
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
      identity: (() {
        final guardedValue = map['identity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
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
