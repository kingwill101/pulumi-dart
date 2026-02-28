// ignore_for_file: unused_element, unnecessary_cast

import 'gke_policy_response.dart';

/// Result data returned by getPolicy.
class GetPolicyResult {
  /// Optional. A description comment about the policy.
  final String description;

  /// Optional. GKE platform-specific policy.
  final GkePolicyResponse gkePolicy;

  /// The relative resource name of the Binary Authorization platform policy, in the form of `projects/*/platforms/*/policies/*`.
  final String name;

  /// Time when the policy was last updated.
  final String updateTime;

  /// Creates a new [GetPolicyResult].
  /// [description] Optional. A description comment about the policy.
  /// [gkePolicy] Optional. GKE platform-specific policy.
  /// [name] The relative resource name of the Binary Authorization platform policy, in the form of `projects/*/platforms/*/policies/*`.
  /// [updateTime] Time when the policy was last updated.
  GetPolicyResult({
    required this.description,
    required this.gkePolicy,
    required this.name,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['description'] = description;
    map['gkePolicy'] = gkePolicy.toMap();
    map['name'] = name;
    map['updateTime'] = updateTime;
    return map;
  }

  factory GetPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetPolicyResult(
      description: map['description'] as String,
      gkePolicy: GkePolicyResponse.fromMap(
          (map['gkePolicy'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
