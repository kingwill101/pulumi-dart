// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_organization_policy_boolean_policy/get_organization_policy_boolean_policy_projects.dart';
import '../get_organization_policy_list_policy/get_organization_policy_list_policy_projects.dart';
import '../get_organization_policy_restore_policy/get_organization_policy_restore_policy_projects.dart';

/// Result data returned by getOrganizationPolicy.
class GetOrganizationPolicyProjectsResult {
  final List<GetOrganizationPolicyBooleanPolicyProjects> booleanPolicies;
  final String constraint;
  final String etag;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<GetOrganizationPolicyListPolicyProjects> listPolicies;
  final String project;
  final List<GetOrganizationPolicyRestorePolicyProjects> restorePolicies;
  final String updateTime;
  final int version;

  GetOrganizationPolicyProjectsResult({
    required this.booleanPolicies,
    required this.constraint,
    required this.etag,
    required this.id,
    required this.listPolicies,
    required this.project,
    required this.restorePolicies,
    required this.updateTime,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['booleanPolicies'] = pulumi.Input.encodeList<
        GetOrganizationPolicyBooleanPolicyProjects,
        Map<String, dynamic>>(booleanPolicies, (value) => value.toMap());
    map['constraint'] = constraint;
    map['etag'] = etag;
    map['id'] = id;
    map['listPolicies'] = pulumi.Input.encodeList<
        GetOrganizationPolicyListPolicyProjects,
        Map<String, dynamic>>(listPolicies, (value) => value.toMap());
    map['project'] = project;
    map['restorePolicies'] = pulumi.Input.encodeList<
        GetOrganizationPolicyRestorePolicyProjects,
        Map<String, dynamic>>(restorePolicies, (value) => value.toMap());
    map['updateTime'] = updateTime;
    map['version'] = version;
    return map;
  }

  factory GetOrganizationPolicyProjectsResult.fromMap(
      Map<String, dynamic> map) {
    return GetOrganizationPolicyProjectsResult(
      booleanPolicies:
          pulumi.Input.decodeList<GetOrganizationPolicyBooleanPolicyProjects>(
              map['booleanPolicies'],
              (value) => GetOrganizationPolicyBooleanPolicyProjects.fromMap(
                  (value as Map).cast<String, dynamic>())),
      constraint: map['constraint'] as String,
      etag: map['etag'] as String,
      id: map['id'] as String,
      listPolicies:
          pulumi.Input.decodeList<GetOrganizationPolicyListPolicyProjects>(
              map['listPolicies'],
              (value) => GetOrganizationPolicyListPolicyProjects.fromMap(
                  (value as Map).cast<String, dynamic>())),
      project: map['project'] as String,
      restorePolicies:
          pulumi.Input.decodeList<GetOrganizationPolicyRestorePolicyProjects>(
              map['restorePolicies'],
              (value) => GetOrganizationPolicyRestorePolicyProjects.fromMap(
                  (value as Map).cast<String, dynamic>())),
      updateTime: map['updateTime'] as String,
      version: map['version'] as int,
    );
  }
}
