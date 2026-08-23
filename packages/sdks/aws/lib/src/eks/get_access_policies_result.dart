// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_access_policies_access_policy.dart';

/// Result data returned by getAccessPolicies.
class GetAccessPoliciesResult {
  /// List of available access policies.
  final List<GetAccessPoliciesAccessPolicy> accessPolicies;
  final String region;

  /// Creates a new [GetAccessPoliciesResult].
  /// [accessPolicies] List of available access policies.
  /// [region] Required.
  const GetAccessPoliciesResult({
    required this.accessPolicies,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessPolicies': pulumi.Input.encodeList<GetAccessPoliciesAccessPolicy, Map<String, dynamic>>(accessPolicies, (value) => value.toMap()),
      'region': region,
    };
  }

  factory GetAccessPoliciesResult.fromMap(Map<String, dynamic> map) {
    return GetAccessPoliciesResult(
      accessPolicies: pulumi.Input.decodeList<GetAccessPoliciesAccessPolicy>(map['accessPolicies']!, (value) => GetAccessPoliciesAccessPolicy.fromMap((value as Map).cast<String, dynamic>())),
      region: map['region'] as String,
    );
  }
}
