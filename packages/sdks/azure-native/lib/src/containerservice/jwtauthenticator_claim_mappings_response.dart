// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'jwtauthenticator_claim_mapping_expression_response.dart';
import 'jwtauthenticator_extra_claim_mapping_expression_response.dart';

/// The claim mappings for JWTAuthenticator.
class JWTAuthenticatorClaimMappingsResponse {
  /// The expression to extract extra attribute from the token claims. When not provided, no extra attributes are extracted from the token claims.
  final pulumi.Input<List<JWTAuthenticatorExtraClaimMappingExpressionResponse>?>? extra;
  /// The expression to extract groups attribute from the token claims. When not provided, no groups are extracted from the token claims.
  final pulumi.Input<JWTAuthenticatorClaimMappingExpressionResponse?>? groups;
  /// The expression to extract uid attribute from the token claims. When not provided, no uid is extracted from the token claims.
  final pulumi.Input<JWTAuthenticatorClaimMappingExpressionResponse?>? uid;
  /// The expression to extract username attribute from the token claims.
  final pulumi.Input<JWTAuthenticatorClaimMappingExpressionResponse> username;

  /// Creates a new [JWTAuthenticatorClaimMappingsResponse].
  /// [extra] The expression to extract extra attribute from the token claims. When not provided, no extra attributes are extracted from the token claims.
  /// [groups] The expression to extract groups attribute from the token claims. When not provided, no groups are extracted from the token claims.
  /// [uid] The expression to extract uid attribute from the token claims. When not provided, no uid is extracted from the token claims.
  /// [username] The expression to extract username attribute from the token claims.
  const JWTAuthenticatorClaimMappingsResponse({
    this.extra,
    this.groups,
    this.uid,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'extra': ?pulumi.Input.mapOptionalInputValue<List<JWTAuthenticatorExtraClaimMappingExpressionResponse>, List<Map<String, dynamic>>>(extra, (value) => pulumi.Input.encodeList<JWTAuthenticatorExtraClaimMappingExpressionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'groups': ?pulumi.Input.mapOptionalInputValue<JWTAuthenticatorClaimMappingExpressionResponse, Map<String, dynamic>>(groups, (value) => value.toMap()),
      'uid': ?pulumi.Input.mapOptionalInputValue<JWTAuthenticatorClaimMappingExpressionResponse, Map<String, dynamic>>(uid, (value) => value.toMap()),
      'username': pulumi.Input.mapInputValue<JWTAuthenticatorClaimMappingExpressionResponse, Map<String, dynamic>>(username, (value) => value.toMap()),
    };
  }

  factory JWTAuthenticatorClaimMappingsResponse.fromMap(Map<String, dynamic> map) {
    return JWTAuthenticatorClaimMappingsResponse(
      extra: (() { final guardedValue = map['extra']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<JWTAuthenticatorExtraClaimMappingExpressionResponse>(guardedValue, (value) => JWTAuthenticatorExtraClaimMappingExpressionResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      groups: (() { final guardedValue = map['groups']; if (guardedValue == null) return null; return pulumi.Input.fromValue(JWTAuthenticatorClaimMappingExpressionResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(JWTAuthenticatorClaimMappingExpressionResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      username: pulumi.Input.fromValue(JWTAuthenticatorClaimMappingExpressionResponse.fromMap((map['username']! as Map).cast<String, dynamic>())),
    );
  }
}
