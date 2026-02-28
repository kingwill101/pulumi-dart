// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'audit_config_metastore_v1alpha.dart';
import 'binding_metastore_v1alpha.dart';

/// {@template pulumi_metastore_v1alpha_service_backup_iam_policy_metastore_v1alpha_args_doc}
/// The set of arguments for ServiceBackupIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_metastore_v1alpha_service_backup_iam_policy_metastore_v1alpha_args_doc}
class ServiceBackupIamPolicyMetastoreV1alphaArgs {
  /// Specifies cloud audit logging configuration for this policy.
  final pulumi.Input<List<AuditConfigMetastoreV1alpha>>? auditConfigs;
  final pulumi.Input<String> backupId;
  /// Associates a list of members, or principals, with a role. Optionally, may specify a condition that determines how and when the bindings are applied. Each of the bindings must contain at least one principal.The bindings in a Policy can refer to up to 1,500 principals; up to 250 of these principals can be Google groups. Each occurrence of a principal counts towards these limits. For example, if the bindings grant 50 different roles to user:alice@example.com, and not to any other principal, then you can add another 1,450 principals to the bindings in the Policy.
  final pulumi.Input<List<BindingMetastoreV1alpha>>? bindings;
  /// etag is used for optimistic concurrency control as a way to help prevent simultaneous updates of a policy from overwriting each other. It is strongly suggested that systems make use of the etag in the read-modify-write cycle to perform policy updates in order to avoid race conditions: An etag is returned in the response to getIamPolicy, and systems are expected to put that etag in the request to setIamPolicy to ensure that their change will be applied to the same version of the policy.Important: If you use IAM Conditions, you must include the etag field whenever you call setIamPolicy. If you omit this field, then IAM allows you to overwrite a version 3 policy with a version 1 policy, and all of the conditions in the version 3 policy are lost.
  final pulumi.Input<String>? etag;
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> serviceId;
  /// OPTIONAL: A FieldMask specifying which fields of the policy to modify. Only the fields in the mask will be modified. If no mask is provided, the following default mask is used:paths: "bindings, etag"
  final pulumi.Input<String>? updateMask;
  /// Specifies the format of the policy.Valid values are 0, 1, and 3. Requests that specify an invalid value are rejected.Any operation that affects conditional role bindings must specify version 3. This requirement applies to the following operations: Getting a policy that includes a conditional role binding Adding a conditional role binding to a policy Changing a conditional role binding in a policy Removing any role binding, with or without a condition, from a policy that includes conditionsImportant: If you use IAM Conditions, you must include the etag field whenever you call setIamPolicy. If you omit this field, then IAM allows you to overwrite a version 3 policy with a version 1 policy, and all of the conditions in the version 3 policy are lost.If a policy does not include any conditions, operations on that policy may specify any valid version or leave the field unset.To learn which resources support conditions in their IAM policies, see the IAM documentation (https://cloud.google.com/iam/help/conditions/resource-policies).
  final pulumi.Input<int>? version;

  /// Creates a new [ServiceBackupIamPolicyMetastoreV1alphaArgs].
  /// [auditConfigs] Specifies cloud audit logging configuration for this policy.
  /// [backupId] Required.
  /// [bindings] Associates a list of members, or principals, with a role. Optionally, may specify a condition that determines how and when the bindings are applied. Each of the bindings must contain at least one principal.The bindings in a Policy can refer to up to 1,500 principals; up to 250 of these principals can be Google groups. Each occurrence of a principal counts towards these limits. For example, if the bindings grant 50 different roles to user:alice@example.com, and not to any other principal, then you can add another 1,450 principals to the bindings in the Policy.
  /// [etag] etag is used for optimistic concurrency control as a way to help prevent simultaneous updates of a policy from overwriting each other. It is strongly suggested that systems make use of the etag in the read-modify-write cycle to perform policy updates in order to avoid race conditions: An etag is returned in the response to getIamPolicy, and systems are expected to put that etag in the request to setIamPolicy to ensure that their change will be applied to the same version of the policy.Important: If you use IAM Conditions, you must include the etag field whenever you call setIamPolicy. If you omit this field, then IAM allows you to overwrite a version 3 policy with a version 1 policy, and all of the conditions in the version 3 policy are lost.
  /// [location] Optional.
  /// [project] Optional.
  /// [serviceId] Required.
  /// [updateMask] OPTIONAL: A FieldMask specifying which fields of the policy to modify. Only the fields in the mask will be modified. If no mask is provided, the following default mask is used:paths: "bindings, etag"
  /// [version] Specifies the format of the policy.Valid values are 0, 1, and 3. Requests that specify an invalid value are rejected.Any operation that affects conditional role bindings must specify version 3. This requirement applies to the following operations: Getting a policy that includes a conditional role binding Adding a conditional role binding to a policy Changing a conditional role binding in a policy Removing any role binding, with or without a condition, from a policy that includes conditionsImportant: If you use IAM Conditions, you must include the etag field whenever you call setIamPolicy. If you omit this field, then IAM allows you to overwrite a version 3 policy with a version 1 policy, and all of the conditions in the version 3 policy are lost.If a policy does not include any conditions, operations on that policy may specify any valid version or leave the field unset.To learn which resources support conditions in their IAM policies, see the IAM documentation (https://cloud.google.com/iam/help/conditions/resource-policies).
  ServiceBackupIamPolicyMetastoreV1alphaArgs({
    List<AuditConfigMetastoreV1alpha>? auditConfigs,
    required String backupId,
    List<BindingMetastoreV1alpha>? bindings,
    String? etag,
    String? location,
    String? project,
    required String serviceId,
    String? updateMask,
    int? version,
  }) :
      auditConfigs = pulumi.Input.asOptionalInput<List<AuditConfigMetastoreV1alpha>>(auditConfigs),
      backupId = pulumi.Input.asInput<String>(backupId),
      bindings = pulumi.Input.asOptionalInput<List<BindingMetastoreV1alpha>>(bindings),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      location = pulumi.Input.asOptionalInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      serviceId = pulumi.Input.asInput<String>(serviceId),
      updateMask = pulumi.Input.asOptionalInput<String>(updateMask),
      version = pulumi.Input.asOptionalInput<int>(version);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'auditConfigs': ?pulumi.Input.mapOptionalInputValue<List<AuditConfigMetastoreV1alpha>, List<Map<String, dynamic>>>(auditConfigs, (value) => pulumi.Input.encodeList<AuditConfigMetastoreV1alpha, Map<String, dynamic>>(value, (value) => value.toMap())),
      'backupId': backupId,
      'bindings': ?pulumi.Input.mapOptionalInputValue<List<BindingMetastoreV1alpha>, List<Map<String, dynamic>>>(bindings, (value) => pulumi.Input.encodeList<BindingMetastoreV1alpha, Map<String, dynamic>>(value, (value) => value.toMap())),
      'etag': ?etag,
      'location': ?location,
      'project': ?project,
      'serviceId': serviceId,
      'updateMask': ?updateMask,
      'version': ?version,
    };
  }

  factory ServiceBackupIamPolicyMetastoreV1alphaArgs.fromMap(Map<String, dynamic> map) {
    return ServiceBackupIamPolicyMetastoreV1alphaArgs(
      auditConfigs: map['auditConfigs'] == null ? null : pulumi.Input.decodeList<AuditConfigMetastoreV1alpha>(map['auditConfigs'], (value) => AuditConfigMetastoreV1alpha.fromMap((value as Map).cast<String, dynamic>())),
      backupId: map['backupId'] as String,
      bindings: map['bindings'] == null ? null : pulumi.Input.decodeList<BindingMetastoreV1alpha>(map['bindings'], (value) => BindingMetastoreV1alpha.fromMap((value as Map).cast<String, dynamic>())),
      etag: map['etag'] == null ? null : map['etag'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      serviceId: map['serviceId'] as String,
      updateMask: map['updateMask'] == null ? null : map['updateMask'] as String,
      version: map['version'] == null ? null : map['version'] as int,
    );
  }
}

