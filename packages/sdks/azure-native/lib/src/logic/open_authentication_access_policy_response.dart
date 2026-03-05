// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'open_authentication_policy_claim_response.dart';

/// Open authentication access policy defined by user.
class OpenAuthenticationAccessPolicyResponse {
  /// The access policy claims.
  final pulumi.Input<List<OpenAuthenticationPolicyClaimResponse>>? claims;
  /// Type of provider for OAuth.
  final pulumi.Input<String>? type;

  /// Creates a new [OpenAuthenticationAccessPolicyResponse].
  /// [claims] The access policy claims.
  /// [type] Type of provider for OAuth.
  OpenAuthenticationAccessPolicyResponse({
    this.claims,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'claims': ?pulumi.Input.mapOptionalInputValue<List<OpenAuthenticationPolicyClaimResponse>, List<Map<String, dynamic>>>(claims, (value) => pulumi.Input.encodeList<OpenAuthenticationPolicyClaimResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'type': ?type,
    };
  }

  factory OpenAuthenticationAccessPolicyResponse.fromMap(Map<String, dynamic> map) {
    return OpenAuthenticationAccessPolicyResponse(
      claims: (() { final guardedValue = map['claims']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<OpenAuthenticationPolicyClaimResponse>(guardedValue, (value) => OpenAuthenticationPolicyClaimResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

