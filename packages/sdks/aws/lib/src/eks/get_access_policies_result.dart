// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_access_policies_access_policy.dart';

/// Result data returned by getAccessPolicies.
class GetAccessPoliciesResult {
  /// List of available access policies.
  final List<GetAccessPoliciesAccessPolicy>? accessPolicies;
  final String? region;

  /// Creates a new [GetAccessPoliciesResult].
  /// [accessPolicies] List of available access policies.
  /// [region] Optional.
  const GetAccessPoliciesResult({
    this.accessPolicies,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessPolicies': ?(() { final guardedValue = accessPolicies; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAccessPoliciesAccessPolicy, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'region': ?region,
    };
  }

  factory GetAccessPoliciesResult.fromMap(Map<String, dynamic> map) {
    return GetAccessPoliciesResult(
      accessPolicies: (() { final guardedValue = map['accessPolicies']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAccessPoliciesAccessPolicy>(guardedValue, (value) => GetAccessPoliciesAccessPolicy.fromMap((value as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
