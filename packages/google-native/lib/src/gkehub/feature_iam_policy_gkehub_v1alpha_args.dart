// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'audit_config_gkehub_v1alpha.dart';
import 'binding_gkehub_v1alpha.dart';

/// {@template pulumi_gkehub_v1alpha_feature_iam_policy_gkehub_v1alpha_args_doc}
/// The set of arguments for FeatureIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_gkehub_v1alpha_feature_iam_policy_gkehub_v1alpha_args_doc}
class FeatureIamPolicyGkehubV1alphaArgs {
  /// Specifies cloud audit logging configuration for this policy.
  final pulumi.Input<List<AuditConfigGkehubV1alpha>>? auditConfigs;

  /// Associates a list of `members`, or principals, with a `role`. Optionally, may specify a `condition` that determines how and when the `bindings` are applied. Each of the `bindings` must contain at least one principal. The `bindings` in a `Policy` can refer to up to 1,500 principals; up to 250 of these principals can be Google groups. Each occurrence of a principal counts towards these limits. For example, if the `bindings` grant 50 different roles to `user:alice@example.com`, and not to any other principal, then you can add another 1,450 principals to the `bindings` in the `Policy`.
  final pulumi.Input<List<BindingGkehubV1alpha>>? bindings;

  /// `etag` is used for optimistic concurrency control as a way to help prevent simultaneous updates of a policy from overwriting each other. It is strongly suggested that systems make use of the `etag` in the read-modify-write cycle to perform policy updates in order to avoid race conditions: An `etag` is returned in the response to `getIamPolicy`, and systems are expected to put that etag in the request to `setIamPolicy` to ensure that their change will be applied to the same version of the policy. **Important:** If you use IAM Conditions, you must include the `etag` field whenever you call `setIamPolicy`. If you omit this field, then IAM allows you to overwrite a version `3` policy with a version `1` policy, and all of the conditions in the version `3` policy are lost.
  final pulumi.Input<String>? etag;
  final pulumi.Input<String> featureId;
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;

  /// OPTIONAL: A FieldMask specifying which fields of the policy to modify. Only the fields in the mask will be modified. If no mask is provided, the following default mask is used: `paths: "bindings, etag"`
  final pulumi.Input<String>? updateMask;

  /// Specifies the format of the policy. Valid values are `0`, `1`, and `3`. Requests that specify an invalid value are rejected. Any operation that affects conditional role bindings must specify version `3`. This requirement applies to the following operations: * Getting a policy that includes a conditional role binding * Adding a conditional role binding to a policy * Changing a conditional role binding in a policy * Removing any role binding, with or without a condition, from a policy that includes conditions **Important:** If you use IAM Conditions, you must include the `etag` field whenever you call `setIamPolicy`. If you omit this field, then IAM allows you to overwrite a version `3` policy with a version `1` policy, and all of the conditions in the version `3` policy are lost. If a policy does not include any conditions, operations on that policy may specify any valid version or leave the field unset. To learn which resources support conditions in their IAM policies, see the [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
  final pulumi.Input<int>? version;

  /// Creates a new [FeatureIamPolicyGkehubV1alphaArgs].
  /// [auditConfigs] Specifies cloud audit logging configuration for this policy.
  /// [bindings] Associates a list of `members`, or principals, with a `role`. Optionally, may specify a `condition` that determines how and when the `bindings` are applied. Each of the `bindings` must contain at least one principal. The `bindings` in a `Policy` can refer to up to 1,500 principals; up to 250 of these principals can be Google groups. Each occurrence of a principal counts towards these limits. For example, if the `bindings` grant 50 different roles to `user:alice@example.com`, and not to any other principal, then you can add another 1,450 principals to the `bindings` in the `Policy`.
  /// [etag] `etag` is used for optimistic concurrency control as a way to help prevent simultaneous updates of a policy from overwriting each other. It is strongly suggested that systems make use of the `etag` in the read-modify-write cycle to perform policy updates in order to avoid race conditions: An `etag` is returned in the response to `getIamPolicy`, and systems are expected to put that etag in the request to `setIamPolicy` to ensure that their change will be applied to the same version of the policy. **Important:** If you use IAM Conditions, you must include the `etag` field whenever you call `setIamPolicy`. If you omit this field, then IAM allows you to overwrite a version `3` policy with a version `1` policy, and all of the conditions in the version `3` policy are lost.
  /// [featureId] Required.
  /// [location] Optional.
  /// [project] Optional.
  /// [updateMask] OPTIONAL: A FieldMask specifying which fields of the policy to modify. Only the fields in the mask will be modified. If no mask is provided, the following default mask is used: `paths: "bindings, etag"`
  /// [version] Specifies the format of the policy. Valid values are `0`, `1`, and `3`. Requests that specify an invalid value are rejected. Any operation that affects conditional role bindings must specify version `3`. This requirement applies to the following operations: * Getting a policy that includes a conditional role binding * Adding a conditional role binding to a policy * Changing a conditional role binding in a policy * Removing any role binding, with or without a condition, from a policy that includes conditions **Important:** If you use IAM Conditions, you must include the `etag` field whenever you call `setIamPolicy`. If you omit this field, then IAM allows you to overwrite a version `3` policy with a version `1` policy, and all of the conditions in the version `3` policy are lost. If a policy does not include any conditions, operations on that policy may specify any valid version or leave the field unset. To learn which resources support conditions in their IAM policies, see the [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
  FeatureIamPolicyGkehubV1alphaArgs({
    List<AuditConfigGkehubV1alpha>? auditConfigs,
    List<BindingGkehubV1alpha>? bindings,
    String? etag,
    required String featureId,
    String? location,
    String? project,
    String? updateMask,
    int? version,
  })  : auditConfigs =
            pulumi.Input.asOptionalInput<List<AuditConfigGkehubV1alpha>>(
                auditConfigs),
        bindings =
            pulumi.Input.asOptionalInput<List<BindingGkehubV1alpha>>(bindings),
        etag = pulumi.Input.asOptionalInput<String>(etag),
        featureId = pulumi.Input.asInput<String>(featureId),
        location = pulumi.Input.asOptionalInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project),
        updateMask = pulumi.Input.asOptionalInput<String>(updateMask),
        version = pulumi.Input.asOptionalInput<int>(version);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final auditConfigsValue = auditConfigs;
    if (auditConfigsValue != null) {
      map['auditConfigs'] = pulumi.Input.mapOptionalInputValue<
              List<AuditConfigGkehubV1alpha>, List<Map<String, dynamic>>>(
          auditConfigsValue,
          (value) => pulumi.Input.encodeList<AuditConfigGkehubV1alpha,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final bindingsValue = bindings;
    if (bindingsValue != null) {
      map['bindings'] = pulumi.Input.mapOptionalInputValue<
              List<BindingGkehubV1alpha>, List<Map<String, dynamic>>>(
          bindingsValue,
          (value) => pulumi.Input.encodeList<BindingGkehubV1alpha,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final etagValue = etag;
    if (etagValue != null) {
      map['etag'] = etagValue;
    }
    map['featureId'] = featureId;
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final updateMaskValue = updateMask;
    if (updateMaskValue != null) {
      map['updateMask'] = updateMaskValue;
    }
    final versionValue = version;
    if (versionValue != null) {
      map['version'] = versionValue;
    }
    return map;
  }

  factory FeatureIamPolicyGkehubV1alphaArgs.fromMap(Map<String, dynamic> map) {
    return FeatureIamPolicyGkehubV1alphaArgs(
      auditConfigs: map['auditConfigs'] == null
          ? null
          : pulumi.Input.decodeList<AuditConfigGkehubV1alpha>(
              map['auditConfigs'],
              (value) => AuditConfigGkehubV1alpha.fromMap(
                  (value as Map).cast<String, dynamic>())),
      bindings: map['bindings'] == null
          ? null
          : pulumi.Input.decodeList<BindingGkehubV1alpha>(
              map['bindings'],
              (value) => BindingGkehubV1alpha.fromMap(
                  (value as Map).cast<String, dynamic>())),
      etag: map['etag'] == null ? null : map['etag'] as String,
      featureId: map['featureId'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      updateMask:
          map['updateMask'] == null ? null : map['updateMask'] as String,
      version: map['version'] == null ? null : map['version'] as int,
    );
  }
}
