// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_scheduling_policy_fair_share_policy.dart';

/// Result data returned by getSchedulingPolicy.
class GetSchedulingPolicyResult {
  final String? arn;
  final List<GetSchedulingPolicyFairSharePolicy>? fairSharePolicies;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// Name of the scheduling policy.
  final String? name;
  final String? region;
  /// Key-value map of resource tags
  final Map<String, String>? tags;

  /// Creates a new [GetSchedulingPolicyResult].
  /// [arn] Optional.
  /// [fairSharePolicies] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Name of the scheduling policy.
  /// [region] Optional.
  /// [tags] Key-value map of resource tags
  const GetSchedulingPolicyResult({
    this.arn,
    this.fairSharePolicies,
    this.id,
    this.name,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'fairSharePolicies': ?(() { final guardedValue = fairSharePolicies; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetSchedulingPolicyFairSharePolicy, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory GetSchedulingPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetSchedulingPolicyResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      fairSharePolicies: (() { final guardedValue = map['fairSharePolicies']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetSchedulingPolicyFairSharePolicy>(guardedValue, (value) => GetSchedulingPolicyFairSharePolicy.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
