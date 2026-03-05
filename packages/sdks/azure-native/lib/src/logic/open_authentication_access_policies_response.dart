// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'open_authentication_access_policy_response.dart';

/// AuthenticationPolicy of type Open.
class OpenAuthenticationAccessPoliciesResponse {
  /// Open authentication policies.
  final pulumi.Input<Map<String, OpenAuthenticationAccessPolicyResponse>>? policies;

  /// Creates a new [OpenAuthenticationAccessPoliciesResponse].
  /// [policies] Open authentication policies.
  OpenAuthenticationAccessPoliciesResponse({
    this.policies,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policies': ?pulumi.Input.mapOptionalInputValue<Map<String, OpenAuthenticationAccessPolicyResponse>, Map<String, Map<String, dynamic>>>(policies, (value) => pulumi.Input.encodeMapValues<OpenAuthenticationAccessPolicyResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory OpenAuthenticationAccessPoliciesResponse.fromMap(Map<String, dynamic> map) {
    return OpenAuthenticationAccessPoliciesResponse(
      policies: (() { final guardedValue = map['policies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<OpenAuthenticationAccessPolicyResponse>(guardedValue, (value) => OpenAuthenticationAccessPolicyResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

