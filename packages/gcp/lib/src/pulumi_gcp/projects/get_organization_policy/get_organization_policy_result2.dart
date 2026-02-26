// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_organization_policy_boolean_policy/get_organization_policy_boolean_policy2.dart';
import '../get_organization_policy_list_policy/get_organization_policy_list_policy2.dart';
import '../get_organization_policy_restore_policy/get_organization_policy_restore_policy2.dart';

/// Result data returned by getOrganizationPolicy.
class GetOrganizationPolicyResult2 {
  final List<GetOrganizationPolicyBooleanPolicy2> booleanPolicies;
  final String constraint;
  final String etag;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<GetOrganizationPolicyListPolicy2> listPolicies;
  final String project;
  final List<GetOrganizationPolicyRestorePolicy2> restorePolicies;
  final String updateTime;
  final int version;

  GetOrganizationPolicyResult2({
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
    map['booleanPolicies'] = Input.encodeList<
        GetOrganizationPolicyBooleanPolicy2,
        Map<String, dynamic>>(booleanPolicies, (value) => value.toMap());
    map['constraint'] = constraint;
    map['etag'] = etag;
    map['id'] = id;
    map['listPolicies'] = Input.encodeList<GetOrganizationPolicyListPolicy2,
        Map<String, dynamic>>(listPolicies, (value) => value.toMap());
    map['project'] = project;
    map['restorePolicies'] = Input.encodeList<
        GetOrganizationPolicyRestorePolicy2,
        Map<String, dynamic>>(restorePolicies, (value) => value.toMap());
    map['updateTime'] = updateTime;
    map['version'] = version;
    return map;
  }

  factory GetOrganizationPolicyResult2.fromMap(Map<String, dynamic> map) {
    return GetOrganizationPolicyResult2(
      booleanPolicies: Input.decodeList<GetOrganizationPolicyBooleanPolicy2>(
          map['booleanPolicies'],
          (value) => GetOrganizationPolicyBooleanPolicy2.fromMap(
              (value as Map).cast<String, dynamic>())),
      constraint: map['constraint'] as String,
      etag: map['etag'] as String,
      id: map['id'] as String,
      listPolicies: Input.decodeList<GetOrganizationPolicyListPolicy2>(
          map['listPolicies'],
          (value) => GetOrganizationPolicyListPolicy2.fromMap(
              (value as Map).cast<String, dynamic>())),
      project: map['project'] as String,
      restorePolicies: Input.decodeList<GetOrganizationPolicyRestorePolicy2>(
          map['restorePolicies'],
          (value) => GetOrganizationPolicyRestorePolicy2.fromMap(
              (value as Map).cast<String, dynamic>())),
      updateTime: map['updateTime'] as String,
      version: map['version'] as int,
    );
  }
}
