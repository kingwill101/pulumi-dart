// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'open_authentication_policy_claim.dart';

/// Open authentication access policy defined by user.
class OpenAuthenticationAccessPolicy {
  /// The access policy claims.
  final pulumi.Input<List<OpenAuthenticationPolicyClaim>>? claims;
  /// Type of provider for OAuth.
  final pulumi.Input<String>? type;

  /// Creates a new [OpenAuthenticationAccessPolicy].
  /// [claims] The access policy claims.
  /// [type] Type of provider for OAuth.
  OpenAuthenticationAccessPolicy({
    this.claims,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'claims': ?pulumi.Input.mapOptionalInputValue<List<OpenAuthenticationPolicyClaim>, List<Map<String, dynamic>>>(claims, (value) => pulumi.Input.encodeList<OpenAuthenticationPolicyClaim, Map<String, dynamic>>(value, (value) => value.toMap())),
      'type': ?type,
    };
  }

  factory OpenAuthenticationAccessPolicy.fromMap(Map<String, dynamic> map) {
    return OpenAuthenticationAccessPolicy(
      claims: (() { final guardedValue = map['claims']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<OpenAuthenticationPolicyClaim>(guardedValue, (value) => OpenAuthenticationPolicyClaim.fromMap((value as Map).cast<String, dynamic>()))); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

