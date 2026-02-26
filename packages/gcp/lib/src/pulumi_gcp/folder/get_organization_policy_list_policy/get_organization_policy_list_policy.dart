// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_organization_policy_list_policy_allow/get_organization_policy_list_policy_allow.dart';
import '../get_organization_policy_list_policy_deny/get_organization_policy_list_policy_deny.dart';

class GetOrganizationPolicyListPolicy {
  /// One or the other must be set.
  final List<GetOrganizationPolicyListPolicyAllow> allows;

  /// One or the other must be set.
  final List<GetOrganizationPolicyListPolicyDeny> denies;

  /// If set to true, the values from the effective Policy of the parent resource are inherited, meaning the values set in this Policy are added to the values inherited up the hierarchy.
  final bool inheritFromParent;

  /// The Google Cloud Console will try to default to a configuration that matches the value specified in this field.
  final String suggestedValue;

  GetOrganizationPolicyListPolicy({
    required this.allows,
    required this.denies,
    required this.inheritFromParent,
    required this.suggestedValue,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['allows'] = Input.encodeList<GetOrganizationPolicyListPolicyAllow,
        Map<String, dynamic>>(allows, (value) => value.toMap());
    map['denies'] = Input.encodeList<GetOrganizationPolicyListPolicyDeny,
        Map<String, dynamic>>(denies, (value) => value.toMap());
    map['inheritFromParent'] = inheritFromParent;
    map['suggestedValue'] = suggestedValue;
    return map;
  }

  factory GetOrganizationPolicyListPolicy.fromMap(Map<String, dynamic> map) {
    return GetOrganizationPolicyListPolicy(
      allows: Input.decodeList<GetOrganizationPolicyListPolicyAllow>(
          map['allows'],
          (value) => GetOrganizationPolicyListPolicyAllow.fromMap(
              (value as Map).cast<String, dynamic>())),
      denies: Input.decodeList<GetOrganizationPolicyListPolicyDeny>(
          map['denies'],
          (value) => GetOrganizationPolicyListPolicyDeny.fromMap(
              (value as Map).cast<String, dynamic>())),
      inheritFromParent: map['inheritFromParent'] as bool,
      suggestedValue: map['suggestedValue'] as String,
    );
  }
}
