// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_organization_policy_boolean_policy.dart';
import 'get_organization_policy_list_policy.dart';
import 'get_organization_policy_restore_policy.dart';

/// Result data returned by getOrganizationPolicy.
class GetOrganizationPolicyResult {
  final List<GetOrganizationPolicyBooleanPolicy> booleanPolicies;
  final String constraint;
  final String etag;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<GetOrganizationPolicyListPolicy> listPolicies;
  final String project;
  final List<GetOrganizationPolicyRestorePolicy> restorePolicies;
  final String updateTime;
  final int version;

  /// Creates a new [GetOrganizationPolicyResult].
  /// [booleanPolicies] Required.
  /// [constraint] Required.
  /// [etag] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [listPolicies] Required.
  /// [project] Required.
  /// [restorePolicies] Required.
  /// [updateTime] Required.
  /// [version] Required.
  GetOrganizationPolicyResult({
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
    return <String, dynamic>{
      'booleanPolicies': pulumi.Input.encodeList<GetOrganizationPolicyBooleanPolicy, Map<String, dynamic>>(booleanPolicies, (value) => value.toMap()),
      'constraint': constraint,
      'etag': etag,
      'id': id,
      'listPolicies': pulumi.Input.encodeList<GetOrganizationPolicyListPolicy, Map<String, dynamic>>(listPolicies, (value) => value.toMap()),
      'project': project,
      'restorePolicies': pulumi.Input.encodeList<GetOrganizationPolicyRestorePolicy, Map<String, dynamic>>(restorePolicies, (value) => value.toMap()),
      'updateTime': updateTime,
      'version': version,
    };
  }

  factory GetOrganizationPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetOrganizationPolicyResult(
      booleanPolicies: pulumi.Input.decodeList<GetOrganizationPolicyBooleanPolicy>(map['booleanPolicies'], (value) => GetOrganizationPolicyBooleanPolicy.fromMap((value as Map).cast<String, dynamic>())),
      constraint: map['constraint'] as String,
      etag: map['etag'] as String,
      id: map['id'] as String,
      listPolicies: pulumi.Input.decodeList<GetOrganizationPolicyListPolicy>(map['listPolicies'], (value) => GetOrganizationPolicyListPolicy.fromMap((value as Map).cast<String, dynamic>())),
      project: map['project'] as String,
      restorePolicies: pulumi.Input.decodeList<GetOrganizationPolicyRestorePolicy>(map['restorePolicies'], (value) => GetOrganizationPolicyRestorePolicy.fromMap((value as Map).cast<String, dynamic>())),
      updateTime: map['updateTime'] as String,
      version: map['version'] as int,
    );
  }
}

