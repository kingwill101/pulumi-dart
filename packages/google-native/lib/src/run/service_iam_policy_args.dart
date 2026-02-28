// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'audit_config.dart';
import 'binding.dart';

/// {@template pulumi_run_v1_service_iam_policy_args_doc}
/// The set of arguments for ServiceIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_run_v1_service_iam_policy_args_doc}
class ServiceIamPolicyArgs {
  /// Specifies cloud audit logging configuration for this policy.
  final pulumi.Input<List<AuditConfig>>? auditConfigs;

  /// Associates a list of `members`, or principals, with a `role`. Optionally, may specify a `condition` that determines how and when the `bindings` are applied. Each of the `bindings` must contain at least one principal. The `bindings` in a `Policy` can refer to up to 1,500 principals; up to 250 of these principals can be Google groups. Each occurrence of a principal counts towards these limits. For example, if the `bindings` grant 50 different roles to `user:alice@example.com`, and not to any other principal, then you can add another 1,450 principals to the `bindings` in the `Policy`.
  final pulumi.Input<List<Binding>>? bindings;

  /// `etag` is used for optimistic concurrency control as a way to help prevent simultaneous updates of a policy from overwriting each other. It is strongly suggested that systems make use of the `etag` in the read-modify-write cycle to perform policy updates in order to avoid race conditions: An `etag` is returned in the response to `getIamPolicy`, and systems are expected to put that etag in the request to `setIamPolicy` to ensure that their change will be applied to the same version of the policy. **Important:** If you use IAM Conditions, you must include the `etag` field whenever you call `setIamPolicy`. If you omit this field, then IAM allows you to overwrite a version `3` policy with a version `1` policy, and all of the conditions in the version `3` policy are lost.
  final pulumi.Input<String>? etag;
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> serviceId;

  /// OPTIONAL: A FieldMask specifying which fields of the policy to modify. Only the fields in the mask will be modified. If no mask is provided, the following default mask is used: `paths: "bindings, etag"`
  final pulumi.Input<String>? updateMask;

  /// Specifies the format of the policy. Valid values are `0`, `1`, and `3`. Requests that specify an invalid value are rejected. Any operation that affects conditional role bindings must specify version `3`. This requirement applies to the following operations: * Getting a policy that includes a conditional role binding * Adding a conditional role binding to a policy * Changing a conditional role binding in a policy * Removing any role binding, with or without a condition, from a policy that includes conditions **Important:** If you use IAM Conditions, you must include the `etag` field whenever you call `setIamPolicy`. If you omit this field, then IAM allows you to overwrite a version `3` policy with a version `1` policy, and all of the conditions in the version `3` policy are lost. If a policy does not include any conditions, operations on that policy may specify any valid version or leave the field unset. To learn which resources support conditions in their IAM policies, see the [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
  final pulumi.Input<int>? version;

  /// Creates a new [ServiceIamPolicyArgs].
  /// [auditConfigs] Specifies cloud audit logging configuration for this policy.
  /// [bindings] Associates a list of `members`, or principals, with a `role`. Optionally, may specify a `condition` that determines how and when the `bindings` are applied. Each of the `bindings` must contain at least one principal. The `bindings` in a `Policy` can refer to up to 1,500 principals; up to 250 of these principals can be Google groups. Each occurrence of a principal counts towards these limits. For example, if the `bindings` grant 50 different roles to `user:alice@example.com`, and not to any other principal, then you can add another 1,450 principals to the `bindings` in the `Policy`.
  /// [etag] `etag` is used for optimistic concurrency control as a way to help prevent simultaneous updates of a policy from overwriting each other. It is strongly suggested that systems make use of the `etag` in the read-modify-write cycle to perform policy updates in order to avoid race conditions: An `etag` is returned in the response to `getIamPolicy`, and systems are expected to put that etag in the request to `setIamPolicy` to ensure that their change will be applied to the same version of the policy. **Important:** If you use IAM Conditions, you must include the `etag` field whenever you call `setIamPolicy`. If you omit this field, then IAM allows you to overwrite a version `3` policy with a version `1` policy, and all of the conditions in the version `3` policy are lost.
  /// [location] Optional.
  /// [project] Optional.
  /// [serviceId] Required.
  /// [updateMask] OPTIONAL: A FieldMask specifying which fields of the policy to modify. Only the fields in the mask will be modified. If no mask is provided, the following default mask is used: `paths: "bindings, etag"`
  /// [version] Specifies the format of the policy. Valid values are `0`, `1`, and `3`. Requests that specify an invalid value are rejected. Any operation that affects conditional role bindings must specify version `3`. This requirement applies to the following operations: * Getting a policy that includes a conditional role binding * Adding a conditional role binding to a policy * Changing a conditional role binding in a policy * Removing any role binding, with or without a condition, from a policy that includes conditions **Important:** If you use IAM Conditions, you must include the `etag` field whenever you call `setIamPolicy`. If you omit this field, then IAM allows you to overwrite a version `3` policy with a version `1` policy, and all of the conditions in the version `3` policy are lost. If a policy does not include any conditions, operations on that policy may specify any valid version or leave the field unset. To learn which resources support conditions in their IAM policies, see the [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
  ServiceIamPolicyArgs({
    List<AuditConfig>? auditConfigs,
    List<Binding>? bindings,
    String? etag,
    String? location,
    String? project,
    required String serviceId,
    String? updateMask,
    int? version,
  })  : auditConfigs =
            pulumi.Input.asOptionalInput<List<AuditConfig>>(auditConfigs),
        bindings = pulumi.Input.asOptionalInput<List<Binding>>(bindings),
        etag = pulumi.Input.asOptionalInput<String>(etag),
        location = pulumi.Input.asOptionalInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project),
        serviceId = pulumi.Input.asInput<String>(serviceId),
        updateMask = pulumi.Input.asOptionalInput<String>(updateMask),
        version = pulumi.Input.asOptionalInput<int>(version);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final auditConfigsValue = auditConfigs;
    if (auditConfigsValue != null) {
      map['auditConfigs'] = pulumi.Input.mapOptionalInputValue<
              List<AuditConfig>, List<Map<String, dynamic>>>(
          auditConfigsValue,
          (value) => pulumi.Input.encodeList<AuditConfig, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final bindingsValue = bindings;
    if (bindingsValue != null) {
      map['bindings'] = pulumi.Input.mapOptionalInputValue<List<Binding>,
              List<Map<String, dynamic>>>(
          bindingsValue,
          (value) => pulumi.Input.encodeList<Binding, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final etagValue = etag;
    if (etagValue != null) {
      map['etag'] = etagValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['serviceId'] = serviceId;
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

  factory ServiceIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return ServiceIamPolicyArgs(
      auditConfigs: map['auditConfigs'] == null
          ? null
          : pulumi.Input.decodeList<AuditConfig>(
              map['auditConfigs'],
              (value) =>
                  AuditConfig.fromMap((value as Map).cast<String, dynamic>())),
      bindings: map['bindings'] == null
          ? null
          : pulumi.Input.decodeList<Binding>(
              map['bindings'],
              (value) =>
                  Binding.fromMap((value as Map).cast<String, dynamic>())),
      etag: map['etag'] == null ? null : map['etag'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      serviceId: map['serviceId'] as String,
      updateMask:
          map['updateMask'] == null ? null : map['updateMask'] as String,
      version: map['version'] == null ? null : map['version'] as int,
    );
  }
}
