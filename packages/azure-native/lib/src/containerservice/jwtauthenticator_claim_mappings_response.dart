// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'jwtauthenticator_claim_mapping_expression_response.dart';
import 'jwtauthenticator_extra_claim_mapping_expression_response.dart';

/// The claim mappings for JWTAuthenticator.
class JWTAuthenticatorClaimMappingsResponse {
  /// The expression to extract extra attribute from the token claims. When not provided, no extra attributes are extracted from the token claims.
  final List<JWTAuthenticatorExtraClaimMappingExpressionResponse>? extra;
  /// The expression to extract groups attribute from the token claims. When not provided, no groups are extracted from the token claims.
  final JWTAuthenticatorClaimMappingExpressionResponse? groups;
  /// The expression to extract uid attribute from the token claims. When not provided, no uid is extracted from the token claims.
  final JWTAuthenticatorClaimMappingExpressionResponse? uid;
  /// The expression to extract username attribute from the token claims.
  final JWTAuthenticatorClaimMappingExpressionResponse username;

  /// Creates a new [JWTAuthenticatorClaimMappingsResponse].
  /// [extra] The expression to extract extra attribute from the token claims. When not provided, no extra attributes are extracted from the token claims.
  /// [groups] The expression to extract groups attribute from the token claims. When not provided, no groups are extracted from the token claims.
  /// [uid] The expression to extract uid attribute from the token claims. When not provided, no uid is extracted from the token claims.
  /// [username] The expression to extract username attribute from the token claims.
  JWTAuthenticatorClaimMappingsResponse({
    this.extra,
    this.groups,
    this.uid,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'extra': ?extra == null ? null : pulumi.Input.encodeList<JWTAuthenticatorExtraClaimMappingExpressionResponse, Map<String, dynamic>>(extra!, (value) => value.toMap()),
      'groups': ?groups == null ? null : groups!.toMap(),
      'uid': ?uid == null ? null : uid!.toMap(),
      'username': username.toMap(),
    };
  }

  factory JWTAuthenticatorClaimMappingsResponse.fromMap(Map<String, dynamic> map) {
    return JWTAuthenticatorClaimMappingsResponse(
      extra: map['extra'] == null ? null : pulumi.Input.decodeList<JWTAuthenticatorExtraClaimMappingExpressionResponse>(map['extra'], (value) => JWTAuthenticatorExtraClaimMappingExpressionResponse.fromMap((value as Map).cast<String, dynamic>())),
      groups: map['groups'] == null ? null : JWTAuthenticatorClaimMappingExpressionResponse.fromMap((map['groups'] as Map).cast<String, dynamic>()),
      uid: map['uid'] == null ? null : JWTAuthenticatorClaimMappingExpressionResponse.fromMap((map['uid'] as Map).cast<String, dynamic>()),
      username: JWTAuthenticatorClaimMappingExpressionResponse.fromMap((map['username'] as Map).cast<String, dynamic>()),
    );
  }
}

