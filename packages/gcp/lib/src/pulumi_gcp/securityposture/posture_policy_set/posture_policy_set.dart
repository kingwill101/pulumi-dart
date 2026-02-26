// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../posture_policy_set_policy/posture_policy_set_policy.dart';

class PosturePolicySet {
  /// Description of the policy set.
  final String? description;

  /// List of security policy
  /// Structure is documented below.
  final List<PosturePolicySetPolicy> policies;

  /// ID of the policy set.
  final String policySetId;

  PosturePolicySet({
    this.description,
    required this.policies,
    required this.policySetId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['policies'] =
        Input.encodeList<PosturePolicySetPolicy, Map<String, dynamic>>(
            policies, (value) => value.toMap());
    map['policySetId'] = policySetId;
    return map;
  }

  factory PosturePolicySet.fromMap(Map<String, dynamic> map) {
    return PosturePolicySet(
      description:
          map['description'] == null ? null : map['description'] as String,
      policies: Input.decodeList<PosturePolicySetPolicy>(
          map['policies'],
          (value) => PosturePolicySetPolicy.fromMap(
              (value as Map).cast<String, dynamic>())),
      policySetId: map['policySetId'] as String,
    );
  }
}
