// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'open_authentication_policy_claim_response.dart';

/// Open authentication access policy defined by user.
class OpenAuthenticationAccessPolicyResponse {
  /// The access policy claims.
  final List<OpenAuthenticationPolicyClaimResponse>? claims;
  /// Type of provider for OAuth.
  final String? type;

  /// Creates a new [OpenAuthenticationAccessPolicyResponse].
  /// [claims] The access policy claims.
  /// [type] Type of provider for OAuth.
  OpenAuthenticationAccessPolicyResponse({
    this.claims,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'claims': ?claims == null ? null : pulumi.Input.encodeList<OpenAuthenticationPolicyClaimResponse, Map<String, dynamic>>(claims!, (value) => value.toMap()),
      'type': ?type,
    };
  }

  factory OpenAuthenticationAccessPolicyResponse.fromMap(Map<String, dynamic> map) {
    return OpenAuthenticationAccessPolicyResponse(
      claims: map['claims'] == null ? null : pulumi.Input.decodeList<OpenAuthenticationPolicyClaimResponse>(map['claims'], (value) => OpenAuthenticationPolicyClaimResponse.fromMap((value as Map).cast<String, dynamic>())),
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

