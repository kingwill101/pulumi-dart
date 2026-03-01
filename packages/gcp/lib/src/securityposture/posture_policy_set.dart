// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'posture_policy_set_policy.dart';

class PosturePolicySet {
  /// Description of the policy set.
  final String? description;
  /// List of security policy
  /// Structure is documented below.
  final List<PosturePolicySetPolicy> policies;
  /// ID of the policy set.
  final String policySetId;

  /// Creates a new [PosturePolicySet].
  /// [description] Description of the policy set.
  /// [policies] List of security policy
  /// [policySetId] ID of the policy set.
  PosturePolicySet({
    this.description,
    required this.policies,
    required this.policySetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'policies': pulumi.Input.encodeList<PosturePolicySetPolicy, Map<String, dynamic>>(policies, (value) => value.toMap()),
      'policySetId': policySetId,
    };
  }

  factory PosturePolicySet.fromMap(Map<String, dynamic> map) {
    return PosturePolicySet(
      description: map['description'] == null ? null : map['description'] as String,
      policies: pulumi.Input.decodeList<PosturePolicySetPolicy>(map['policies'], (value) => PosturePolicySetPolicy.fromMap((value as Map).cast<String, dynamic>())),
      policySetId: map['policySetId'] as String,
    );
  }
}

