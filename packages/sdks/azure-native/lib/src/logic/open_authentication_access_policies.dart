// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'open_authentication_access_policy.dart';

/// AuthenticationPolicy of type Open.
class OpenAuthenticationAccessPolicies {
  /// Open authentication policies.
  final pulumi.Input<Map<String, OpenAuthenticationAccessPolicy>>? policies;

  /// Creates a new [OpenAuthenticationAccessPolicies].
  /// [policies] Open authentication policies.
  OpenAuthenticationAccessPolicies({
    this.policies,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policies': ?pulumi.Input.mapOptionalInputValue<Map<String, OpenAuthenticationAccessPolicy>, Map<String, Map<String, dynamic>>>(policies, (value) => pulumi.Input.encodeMapValues<OpenAuthenticationAccessPolicy, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory OpenAuthenticationAccessPolicies.fromMap(Map<String, dynamic> map) {
    return OpenAuthenticationAccessPolicies(
      policies: map['policies'] == null ? null : (pulumi.Input.decodeMapValues<OpenAuthenticationAccessPolicy>(map['policies'], (value) => OpenAuthenticationAccessPolicy.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

