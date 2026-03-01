// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'open_authentication_policy_claim.dart';

/// Open authentication access policy defined by user.
class OpenAuthenticationAccessPolicy {
  /// The access policy claims.
  final List<OpenAuthenticationPolicyClaim>? claims;
  /// Type of provider for OAuth.
  final String? type;

  /// Creates a new [OpenAuthenticationAccessPolicy].
  /// [claims] The access policy claims.
  /// [type] Type of provider for OAuth.
  OpenAuthenticationAccessPolicy({
    this.claims,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'claims': ?claims == null ? null : pulumi.Input.encodeList<OpenAuthenticationPolicyClaim, Map<String, dynamic>>(claims!, (value) => value.toMap()),
      'type': ?type,
    };
  }

  factory OpenAuthenticationAccessPolicy.fromMap(Map<String, dynamic> map) {
    return OpenAuthenticationAccessPolicy(
      claims: map['claims'] == null ? null : pulumi.Input.decodeList<OpenAuthenticationPolicyClaim>(map['claims'], (value) => OpenAuthenticationPolicyClaim.fromMap((value as Map).cast<String, dynamic>())),
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

