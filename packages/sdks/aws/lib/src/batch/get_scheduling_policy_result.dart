// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_scheduling_policy_fair_share_policy.dart';

/// Result data returned by getSchedulingPolicy.
class GetSchedulingPolicyResult {
  final String arn;
  final List<GetSchedulingPolicyFairSharePolicy> fairSharePolicies;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// Name of the scheduling policy.
  final String name;
  final String region;

  /// Key-value map of resource tags
  final Map<String, String> tags;

  /// Creates a new [GetSchedulingPolicyResult].
  /// [arn] Required.
  /// [fairSharePolicies] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Name of the scheduling policy.
  /// [region] Required.
  /// [tags] Key-value map of resource tags
  GetSchedulingPolicyResult({
    required this.arn,
    required this.fairSharePolicies,
    required this.id,
    required this.name,
    required this.region,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'fairSharePolicies':
          pulumi.Input.encodeList<
            GetSchedulingPolicyFairSharePolicy,
            Map<String, dynamic>
          >(fairSharePolicies, (value) => value.toMap()),
      'id': id,
      'name': name,
      'region': region,
      'tags': tags,
    };
  }

  factory GetSchedulingPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetSchedulingPolicyResult(
      arn: map['arn'] as String,
      fairSharePolicies:
          pulumi.Input.decodeList<GetSchedulingPolicyFairSharePolicy>(
            map['fairSharePolicies']!,
            (value) => GetSchedulingPolicyFairSharePolicy.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      id: map['id'] as String,
      name: map['name'] as String,
      region: map['region'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}
