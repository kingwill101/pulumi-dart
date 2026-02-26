// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'audit_config22.dart';
import 'binding32.dart';
import 'rule.dart';

/// The set of arguments for InstanceIamPolicy.
class InstanceIamPolicyArgs3 {
  /// Specifies cloud audit logging configuration for this policy.
  final Input<List<AuditConfig22>>? auditConfigs;

  /// Associates a list of `members`, or principals, with a `role`. Optionally, may specify a `condition` that determines how and when the `bindings` are applied. Each of the `bindings` must contain at least one principal. The `bindings` in a `Policy` can refer to up to 1,500 principals; up to 250 of these principals can be Google groups. Each occurrence of a principal counts towards these limits. For example, if the `bindings` grant 50 different roles to `user:alice@example.com`, and not to any other principal, then you can add another 1,450 principals to the `bindings` in the `Policy`.
  final Input<List<Binding32>>? bindings;

  /// `etag` is used for optimistic concurrency control as a way to help prevent simultaneous updates of a policy from overwriting each other. It is strongly suggested that systems make use of the `etag` in the read-modify-write cycle to perform policy updates in order to avoid race conditions: An `etag` is returned in the response to `getIamPolicy`, and systems are expected to put that etag in the request to `setIamPolicy` to ensure that their change will be applied to the same version of the policy. **Important:** If you use IAM Conditions, you must include the `etag` field whenever you call `setIamPolicy`. If you omit this field, then IAM allows you to overwrite a version `3` policy with a version `1` policy, and all of the conditions in the version `3` policy are lost.
  final Input<String>? etag;
  final Input<String>? project;
  final Input<String> resource;

  /// This is deprecated and has no effect. Do not use.
  final Input<List<Rule>>? rules;

  /// Specifies the format of the policy. Valid values are `0`, `1`, and `3`. Requests that specify an invalid value are rejected. Any operation that affects conditional role bindings must specify version `3`. This requirement applies to the following operations: * Getting a policy that includes a conditional role binding * Adding a conditional role binding to a policy * Changing a conditional role binding in a policy * Removing any role binding, with or without a condition, from a policy that includes conditions **Important:** If you use IAM Conditions, you must include the `etag` field whenever you call `setIamPolicy`. If you omit this field, then IAM allows you to overwrite a version `3` policy with a version `1` policy, and all of the conditions in the version `3` policy are lost. If a policy does not include any conditions, operations on that policy may specify any valid version or leave the field unset. To learn which resources support conditions in their IAM policies, see the [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
  final Input<int>? version;
  final Input<String>? zone;

  InstanceIamPolicyArgs3({
    this.auditConfigs,
    this.bindings,
    this.etag,
    this.project,
    required this.resource,
    this.rules,
    this.version,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final auditConfigsValue = auditConfigs;
    if (auditConfigsValue != null) {
      map['auditConfigs'] = Input.mapOptionalInputValue<List<AuditConfig22>,
              List<Map<String, dynamic>>>(
          auditConfigsValue,
          (value) => Input.encodeList<AuditConfig22, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final bindingsValue = bindings;
    if (bindingsValue != null) {
      map['bindings'] = Input.mapOptionalInputValue<List<Binding32>,
              List<Map<String, dynamic>>>(
          bindingsValue,
          (value) => Input.encodeList<Binding32, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final etagValue = etag;
    if (etagValue != null) {
      map['etag'] = etagValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['resource'] = resource;
    final rulesValue = rules;
    if (rulesValue != null) {
      map['rules'] =
          Input.mapOptionalInputValue<List<Rule>, List<Map<String, dynamic>>>(
              rulesValue,
              (value) => Input.encodeList<Rule, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final versionValue = version;
    if (versionValue != null) {
      map['version'] = versionValue;
    }
    final zoneValue = zone;
    if (zoneValue != null) {
      map['zone'] = zoneValue;
    }
    return map;
  }

  factory InstanceIamPolicyArgs3.fromMap(Map<String, dynamic> map) {
    return InstanceIamPolicyArgs3(
      auditConfigs:
          Input.asOptionalInput<List<AuditConfig22>>(map['auditConfigs']),
      bindings: Input.asOptionalInput<List<Binding32>>(map['bindings']),
      etag: Input.asOptionalInput<String>(map['etag']),
      project: Input.asOptionalInput<String>(map['project']),
      resource: Input.asInput<String>(map['resource']),
      rules: Input.asOptionalInput<List<Rule>>(map['rules']),
      version: Input.asOptionalInput<int>(map['version']),
      zone: Input.asOptionalInput<String>(map['zone']),
    );
  }
}
