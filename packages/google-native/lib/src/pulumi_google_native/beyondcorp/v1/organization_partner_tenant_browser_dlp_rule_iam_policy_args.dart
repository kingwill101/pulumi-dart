// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_iam_v1_audit_config_beyondcorp_v1.dart';
import 'google_iam_v1_binding_beyondcorp_v1.dart';

/// The set of arguments for OrganizationPartnerTenantBrowserDlpRuleIamPolicy.
class OrganizationPartnerTenantBrowserDlpRuleIamPolicyArgs {
  /// Specifies cloud audit logging configuration for this policy.
  final pulumi.Input<List<GoogleIamV1AuditConfigBeyondcorpV1>>? auditConfigs;

  /// Associates a list of `members`, or principals, with a `role`. Optionally, may specify a `condition` that determines how and when the `bindings` are applied. Each of the `bindings` must contain at least one principal. The `bindings` in a `Policy` can refer to up to 1,500 principals; up to 250 of these principals can be Google groups. Each occurrence of a principal counts towards these limits. For example, if the `bindings` grant 50 different roles to `user:alice@example.com`, and not to any other principal, then you can add another 1,450 principals to the `bindings` in the `Policy`.
  final pulumi.Input<List<GoogleIamV1BindingBeyondcorpV1>>? bindings;
  final pulumi.Input<String> browserDlpRuleId;

  /// `etag` is used for optimistic concurrency control as a way to help prevent simultaneous updates of a policy from overwriting each other. It is strongly suggested that systems make use of the `etag` in the read-modify-write cycle to perform policy updates in order to avoid race conditions: An `etag` is returned in the response to `getIamPolicy`, and systems are expected to put that etag in the request to `setIamPolicy` to ensure that their change will be applied to the same version of the policy. **Important:** If you use IAM Conditions, you must include the `etag` field whenever you call `setIamPolicy`. If you omit this field, then IAM allows you to overwrite a version `3` policy with a version `1` policy, and all of the conditions in the version `3` policy are lost.
  final pulumi.Input<String>? etag;
  final pulumi.Input<String> organizationId;
  final pulumi.Input<String> partnerTenantId;

  /// OPTIONAL: A FieldMask specifying which fields of the policy to modify. Only the fields in the mask will be modified. If no mask is provided, the following default mask is used: `paths: "bindings, etag"`
  final pulumi.Input<String>? updateMask;

  /// Specifies the format of the policy. Valid values are `0`, `1`, and `3`. Requests that specify an invalid value are rejected. Any operation that affects conditional role bindings must specify version `3`. This requirement applies to the following operations: * Getting a policy that includes a conditional role binding * Adding a conditional role binding to a policy * Changing a conditional role binding in a policy * Removing any role binding, with or without a condition, from a policy that includes conditions **Important:** If you use IAM Conditions, you must include the `etag` field whenever you call `setIamPolicy`. If you omit this field, then IAM allows you to overwrite a version `3` policy with a version `1` policy, and all of the conditions in the version `3` policy are lost. If a policy does not include any conditions, operations on that policy may specify any valid version or leave the field unset. To learn which resources support conditions in their IAM policies, see the [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
  final pulumi.Input<int>? version;

  OrganizationPartnerTenantBrowserDlpRuleIamPolicyArgs({
    this.auditConfigs,
    this.bindings,
    required this.browserDlpRuleId,
    this.etag,
    required this.organizationId,
    required this.partnerTenantId,
    this.updateMask,
    this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final auditConfigsValue = auditConfigs;
    if (auditConfigsValue != null) {
      map['auditConfigs'] = pulumi.Input.mapOptionalInputValue<
              List<GoogleIamV1AuditConfigBeyondcorpV1>,
              List<Map<String, dynamic>>>(
          auditConfigsValue,
          (value) => pulumi.Input.encodeList<GoogleIamV1AuditConfigBeyondcorpV1,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final bindingsValue = bindings;
    if (bindingsValue != null) {
      map['bindings'] = pulumi.Input.mapOptionalInputValue<
              List<GoogleIamV1BindingBeyondcorpV1>, List<Map<String, dynamic>>>(
          bindingsValue,
          (value) => pulumi.Input.encodeList<GoogleIamV1BindingBeyondcorpV1,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    map['browserDlpRuleId'] = browserDlpRuleId;
    final etagValue = etag;
    if (etagValue != null) {
      map['etag'] = etagValue;
    }
    map['organizationId'] = organizationId;
    map['partnerTenantId'] = partnerTenantId;
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

  factory OrganizationPartnerTenantBrowserDlpRuleIamPolicyArgs.fromMap(
      Map<String, dynamic> map) {
    return OrganizationPartnerTenantBrowserDlpRuleIamPolicyArgs(
      auditConfigs: pulumi.Input.asOptionalInput<
          List<GoogleIamV1AuditConfigBeyondcorpV1>>(map['auditConfigs']),
      bindings:
          pulumi.Input.asOptionalInput<List<GoogleIamV1BindingBeyondcorpV1>>(
              map['bindings']),
      browserDlpRuleId: pulumi.Input.asInput<String>(map['browserDlpRuleId']),
      etag: pulumi.Input.asOptionalInput<String>(map['etag']),
      organizationId: pulumi.Input.asInput<String>(map['organizationId']),
      partnerTenantId: pulumi.Input.asInput<String>(map['partnerTenantId']),
      updateMask: pulumi.Input.asOptionalInput<String>(map['updateMask']),
      version: pulumi.Input.asOptionalInput<int>(map['version']),
    );
  }
}
