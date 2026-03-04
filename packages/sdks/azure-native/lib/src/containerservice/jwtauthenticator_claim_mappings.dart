// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'jwtauthenticator_claim_mapping_expression.dart';
import 'jwtauthenticator_extra_claim_mapping_expression.dart';

/// The claim mappings for JWTAuthenticator.
class JWTAuthenticatorClaimMappings {
  /// The expression to extract extra attribute from the token claims. When not provided, no extra attributes are extracted from the token claims.
  final pulumi.Input<List<JWTAuthenticatorExtraClaimMappingExpression>>? extra;

  /// The expression to extract groups attribute from the token claims. When not provided, no groups are extracted from the token claims.
  final pulumi.Input<JWTAuthenticatorClaimMappingExpression>? groups;

  /// The expression to extract uid attribute from the token claims. When not provided, no uid is extracted from the token claims.
  final pulumi.Input<JWTAuthenticatorClaimMappingExpression>? uid;

  /// The expression to extract username attribute from the token claims.
  final pulumi.Input<JWTAuthenticatorClaimMappingExpression> username;

  /// Creates a new [JWTAuthenticatorClaimMappings].
  /// [extra] The expression to extract extra attribute from the token claims. When not provided, no extra attributes are extracted from the token claims.
  /// [groups] The expression to extract groups attribute from the token claims. When not provided, no groups are extracted from the token claims.
  /// [uid] The expression to extract uid attribute from the token claims. When not provided, no uid is extracted from the token claims.
  /// [username] The expression to extract username attribute from the token claims.
  JWTAuthenticatorClaimMappings({
    this.extra,
    this.groups,
    this.uid,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'extra':
          ?pulumi.Input.mapOptionalInputValue<
            List<JWTAuthenticatorExtraClaimMappingExpression>,
            List<Map<String, dynamic>>
          >(
            extra,
            (value) =>
                pulumi.Input.encodeList<
                  JWTAuthenticatorExtraClaimMappingExpression,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'groups':
          ?pulumi.Input.mapOptionalInputValue<
            JWTAuthenticatorClaimMappingExpression,
            Map<String, dynamic>
          >(groups, (value) => value.toMap()),
      'uid':
          ?pulumi.Input.mapOptionalInputValue<
            JWTAuthenticatorClaimMappingExpression,
            Map<String, dynamic>
          >(uid, (value) => value.toMap()),
      'username':
          pulumi.Input.mapInputValue<
            JWTAuthenticatorClaimMappingExpression,
            Map<String, dynamic>
          >(username, (value) => value.toMap()),
    };
  }

  factory JWTAuthenticatorClaimMappings.fromMap(Map<String, dynamic> map) {
    return JWTAuthenticatorClaimMappings(
      extra: (() {
        final guardedValue = map['extra'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<JWTAuthenticatorExtraClaimMappingExpression>(
            guardedValue,
            (value) => JWTAuthenticatorExtraClaimMappingExpression.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      groups: (() {
        final guardedValue = map['groups'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          JWTAuthenticatorClaimMappingExpression.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      uid: (() {
        final guardedValue = map['uid'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          JWTAuthenticatorClaimMappingExpression.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      username: pulumi.Input.fromValue(
        JWTAuthenticatorClaimMappingExpression.fromMap(
          (map['username']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
