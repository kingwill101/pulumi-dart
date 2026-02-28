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
  final String folder;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<GetOrganizationPolicyListPolicy> listPolicies;
  final List<GetOrganizationPolicyRestorePolicy> restorePolicies;
  final String updateTime;
  final int version;

  /// Creates a new [GetOrganizationPolicyResult].
  /// [booleanPolicies] Required.
  /// [constraint] Required.
  /// [etag] Required.
  /// [folder] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [listPolicies] Required.
  /// [restorePolicies] Required.
  /// [updateTime] Required.
  /// [version] Required.
  GetOrganizationPolicyResult({
    required this.booleanPolicies,
    required this.constraint,
    required this.etag,
    required this.folder,
    required this.id,
    required this.listPolicies,
    required this.restorePolicies,
    required this.updateTime,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['booleanPolicies'] = pulumi.Input.encodeList<
        GetOrganizationPolicyBooleanPolicy,
        Map<String, dynamic>>(booleanPolicies, (value) => value.toMap());
    map['constraint'] = constraint;
    map['etag'] = etag;
    map['folder'] = folder;
    map['id'] = id;
    map['listPolicies'] = pulumi.Input.encodeList<
        GetOrganizationPolicyListPolicy,
        Map<String, dynamic>>(listPolicies, (value) => value.toMap());
    map['restorePolicies'] = pulumi.Input.encodeList<
        GetOrganizationPolicyRestorePolicy,
        Map<String, dynamic>>(restorePolicies, (value) => value.toMap());
    map['updateTime'] = updateTime;
    map['version'] = version;
    return map;
  }

  factory GetOrganizationPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetOrganizationPolicyResult(
      booleanPolicies:
          pulumi.Input.decodeList<GetOrganizationPolicyBooleanPolicy>(
              map['booleanPolicies'],
              (value) => GetOrganizationPolicyBooleanPolicy.fromMap(
                  (value as Map).cast<String, dynamic>())),
      constraint: map['constraint'] as String,
      etag: map['etag'] as String,
      folder: map['folder'] as String,
      id: map['id'] as String,
      listPolicies: pulumi.Input.decodeList<GetOrganizationPolicyListPolicy>(
          map['listPolicies'],
          (value) => GetOrganizationPolicyListPolicy.fromMap(
              (value as Map).cast<String, dynamic>())),
      restorePolicies:
          pulumi.Input.decodeList<GetOrganizationPolicyRestorePolicy>(
              map['restorePolicies'],
              (value) => GetOrganizationPolicyRestorePolicy.fromMap(
                  (value as Map).cast<String, dynamic>())),
      updateTime: map['updateTime'] as String,
      version: map['version'] as int,
    );
  }
}
