// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'jwtauthenticator_claim_mapping_expression.dart';
import 'jwtauthenticator_extra_claim_mapping_expression.dart';

/// The claim mappings for JWTAuthenticator.
class JWTAuthenticatorClaimMappings {
  /// The expression to extract extra attribute from the token claims. When not provided, no extra attributes are extracted from the token claims.
  final List<JWTAuthenticatorExtraClaimMappingExpression>? extra;
  /// The expression to extract groups attribute from the token claims. When not provided, no groups are extracted from the token claims.
  final JWTAuthenticatorClaimMappingExpression? groups;
  /// The expression to extract uid attribute from the token claims. When not provided, no uid is extracted from the token claims.
  final JWTAuthenticatorClaimMappingExpression? uid;
  /// The expression to extract username attribute from the token claims.
  final JWTAuthenticatorClaimMappingExpression username;

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
      'extra': ?extra == null ? null : pulumi.Input.encodeList<JWTAuthenticatorExtraClaimMappingExpression, Map<String, dynamic>>(extra!, (value) => value.toMap()),
      'groups': ?groups == null ? null : groups!.toMap(),
      'uid': ?uid == null ? null : uid!.toMap(),
      'username': username.toMap(),
    };
  }

  factory JWTAuthenticatorClaimMappings.fromMap(Map<String, dynamic> map) {
    return JWTAuthenticatorClaimMappings(
      extra: map['extra'] == null ? null : pulumi.Input.decodeList<JWTAuthenticatorExtraClaimMappingExpression>(map['extra'], (value) => JWTAuthenticatorExtraClaimMappingExpression.fromMap((value as Map).cast<String, dynamic>())),
      groups: map['groups'] == null ? null : JWTAuthenticatorClaimMappingExpression.fromMap((map['groups'] as Map).cast<String, dynamic>()),
      uid: map['uid'] == null ? null : JWTAuthenticatorClaimMappingExpression.fromMap((map['uid'] as Map).cast<String, dynamic>()),
      username: JWTAuthenticatorClaimMappingExpression.fromMap((map['username'] as Map).cast<String, dynamic>()),
    );
  }
}

