// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_organization_policy_list_policy_allow/get_organization_policy_list_policy_allow_projects.dart';
import '../get_organization_policy_list_policy_deny/get_organization_policy_list_policy_deny_projects.dart';

class GetOrganizationPolicyListPolicyProjects {
  /// One or the other must be set.
  final List<GetOrganizationPolicyListPolicyAllowProjects> allows;

  /// One or the other must be set.
  final List<GetOrganizationPolicyListPolicyDenyProjects> denies;

  /// If set to true, the values from the effective Policy of the parent resource are inherited, meaning the values set in this Policy are added to the values inherited up the hierarchy.
  final bool inheritFromParent;

  /// The Google Cloud Console will try to default to a configuration that matches the value specified in this field.
  final String suggestedValue;

  GetOrganizationPolicyListPolicyProjects({
    required this.allows,
    required this.denies,
    required this.inheritFromParent,
    required this.suggestedValue,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['allows'] = pulumi.Input.encodeList<
        GetOrganizationPolicyListPolicyAllowProjects,
        Map<String, dynamic>>(allows, (value) => value.toMap());
    map['denies'] = pulumi.Input.encodeList<
        GetOrganizationPolicyListPolicyDenyProjects,
        Map<String, dynamic>>(denies, (value) => value.toMap());
    map['inheritFromParent'] = inheritFromParent;
    map['suggestedValue'] = suggestedValue;
    return map;
  }

  factory GetOrganizationPolicyListPolicyProjects.fromMap(
      Map<String, dynamic> map) {
    return GetOrganizationPolicyListPolicyProjects(
      allows:
          pulumi.Input.decodeList<GetOrganizationPolicyListPolicyAllowProjects>(
              map['allows'],
              (value) => GetOrganizationPolicyListPolicyAllowProjects.fromMap(
                  (value as Map).cast<String, dynamic>())),
      denies:
          pulumi.Input.decodeList<GetOrganizationPolicyListPolicyDenyProjects>(
              map['denies'],
              (value) => GetOrganizationPolicyListPolicyDenyProjects.fromMap(
                  (value as Map).cast<String, dynamic>())),
      inheritFromParent: map['inheritFromParent'] as bool,
      suggestedValue: map['suggestedValue'] as String,
    );
  }
}
