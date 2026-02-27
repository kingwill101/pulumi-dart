// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'audit_config53.dart';
import 'binding77.dart';

/// The set of arguments for ServiceBackupIamPolicy.
class ServiceBackupIamPolicyArgs3 {
  /// Specifies cloud audit logging configuration for this policy.
  final Input<List<AuditConfig53>>? auditConfigs;
  final Input<String> backupId;

  /// Associates a list of members, or principals, with a role. Optionally, may specify a condition that determines how and when the bindings are applied. Each of the bindings must contain at least one principal.The bindings in a Policy can refer to up to 1,500 principals; up to 250 of these principals can be Google groups. Each occurrence of a principal counts towards these limits. For example, if the bindings grant 50 different roles to user:alice@example.com, and not to any other principal, then you can add another 1,450 principals to the bindings in the Policy.
  final Input<List<Binding77>>? bindings;

  /// etag is used for optimistic concurrency control as a way to help prevent simultaneous updates of a policy from overwriting each other. It is strongly suggested that systems make use of the etag in the read-modify-write cycle to perform policy updates in order to avoid race conditions: An etag is returned in the response to getIamPolicy, and systems are expected to put that etag in the request to setIamPolicy to ensure that their change will be applied to the same version of the policy.Important: If you use IAM Conditions, you must include the etag field whenever you call setIamPolicy. If you omit this field, then IAM allows you to overwrite a version 3 policy with a version 1 policy, and all of the conditions in the version 3 policy are lost.
  final Input<String>? etag;
  final Input<String>? location;
  final Input<String>? project;
  final Input<String> serviceId;

  /// OPTIONAL: A FieldMask specifying which fields of the policy to modify. Only the fields in the mask will be modified. If no mask is provided, the following default mask is used:paths: "bindings, etag"
  final Input<String>? updateMask;

  /// Specifies the format of the policy.Valid values are 0, 1, and 3. Requests that specify an invalid value are rejected.Any operation that affects conditional role bindings must specify version 3. This requirement applies to the following operations: Getting a policy that includes a conditional role binding Adding a conditional role binding to a policy Changing a conditional role binding in a policy Removing any role binding, with or without a condition, from a policy that includes conditionsImportant: If you use IAM Conditions, you must include the etag field whenever you call setIamPolicy. If you omit this field, then IAM allows you to overwrite a version 3 policy with a version 1 policy, and all of the conditions in the version 3 policy are lost.If a policy does not include any conditions, operations on that policy may specify any valid version or leave the field unset.To learn which resources support conditions in their IAM policies, see the IAM documentation (https://cloud.google.com/iam/help/conditions/resource-policies).
  final Input<int>? version;

  ServiceBackupIamPolicyArgs3({
    this.auditConfigs,
    required this.backupId,
    this.bindings,
    this.etag,
    this.location,
    this.project,
    required this.serviceId,
    this.updateMask,
    this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final auditConfigsValue = auditConfigs;
    if (auditConfigsValue != null) {
      map['auditConfigs'] = Input.mapOptionalInputValue<List<AuditConfig53>,
              List<Map<String, dynamic>>>(
          auditConfigsValue,
          (value) => Input.encodeList<AuditConfig53, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    map['backupId'] = backupId;
    final bindingsValue = bindings;
    if (bindingsValue != null) {
      map['bindings'] = Input.mapOptionalInputValue<List<Binding77>,
              List<Map<String, dynamic>>>(
          bindingsValue,
          (value) => Input.encodeList<Binding77, Map<String, dynamic>>(
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

  factory ServiceBackupIamPolicyArgs3.fromMap(Map<String, dynamic> map) {
    return ServiceBackupIamPolicyArgs3(
      auditConfigs:
          Input.asOptionalInput<List<AuditConfig53>>(map['auditConfigs']),
      backupId: Input.asInput<String>(map['backupId']),
      bindings: Input.asOptionalInput<List<Binding77>>(map['bindings']),
      etag: Input.asOptionalInput<String>(map['etag']),
      location: Input.asOptionalInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      serviceId: Input.asInput<String>(map['serviceId']),
      updateMask: Input.asOptionalInput<String>(map['updateMask']),
      version: Input.asOptionalInput<int>(map['version']),
    );
  }
}
