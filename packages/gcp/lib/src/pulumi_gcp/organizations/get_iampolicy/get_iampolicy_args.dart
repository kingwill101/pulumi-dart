// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_iampolicy_audit_config/get_iampolicy_audit_config.dart';
import '../get_iampolicy_binding/get_iampolicy_binding.dart';

/// Arguments for getIAMPolicy.
class GetIAMPolicyArgs {
  /// A nested configuration block that defines logging additional configuration for your project. This field is only supported on `gcp.projects.IAMPolicy`, `gcp.folder.IAMPolicy` and `gcp.organizations.IAMPolicy`.
  final pulumi.Input<List<GetIAMPolicyAuditConfig>>? auditConfigs;

  /// A nested configuration block (described below)
  /// defining a binding to be included in the policy document. Multiple
  /// `binding` arguments are supported.
  ///
  /// Each document configuration must have one or more `binding` blocks, which
  /// each accept the following arguments:
  final pulumi.Input<List<GetIAMPolicyBinding>>? bindings;

  GetIAMPolicyArgs({
    this.auditConfigs,
    this.bindings,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final auditConfigsValue = auditConfigs;
    if (auditConfigsValue != null) {
      map['auditConfigs'] = pulumi.Input.mapOptionalInputValue<
              List<GetIAMPolicyAuditConfig>, List<Map<String, dynamic>>>(
          auditConfigsValue,
          (value) => pulumi.Input.encodeList<GetIAMPolicyAuditConfig,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final bindingsValue = bindings;
    if (bindingsValue != null) {
      map['bindings'] = pulumi.Input.mapOptionalInputValue<
              List<GetIAMPolicyBinding>, List<Map<String, dynamic>>>(
          bindingsValue,
          (value) => pulumi.Input.encodeList<GetIAMPolicyBinding,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    return map;
  }

  factory GetIAMPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetIAMPolicyArgs(
      auditConfigs: pulumi.Input.asOptionalInput<List<GetIAMPolicyAuditConfig>>(
          map['auditConfigs']),
      bindings: pulumi.Input.asOptionalInput<List<GetIAMPolicyBinding>>(
          map['bindings']),
    );
  }
}
