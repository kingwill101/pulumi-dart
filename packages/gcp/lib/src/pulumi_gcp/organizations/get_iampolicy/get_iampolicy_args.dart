// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_iampolicy_audit_config/get_iampolicy_audit_config.dart';
import '../get_iampolicy_binding/get_iampolicy_binding.dart';

/// Arguments for getIAMPolicy.
class GetIAMPolicyArgs {
  /// A nested configuration block that defines logging additional configuration for your project. This field is only supported on <span pulumi-lang-nodejs="`gcp.projects.IAMPolicy`" pulumi-lang-dotnet="`gcp.projects.IAMPolicy`" pulumi-lang-go="`projects.IAMPolicy`" pulumi-lang-python="`projects.IAMPolicy`" pulumi-lang-yaml="`gcp.projects.IAMPolicy`" pulumi-lang-java="`gcp.projects.IAMPolicy`">`gcp.projects.IAMPolicy`</span>, <span pulumi-lang-nodejs="`gcp.folder.IAMPolicy`" pulumi-lang-dotnet="`gcp.folder.IAMPolicy`" pulumi-lang-go="`folder.IAMPolicy`" pulumi-lang-python="`folder.IAMPolicy`" pulumi-lang-yaml="`gcp.folder.IAMPolicy`" pulumi-lang-java="`gcp.folder.IAMPolicy`">`gcp.folder.IAMPolicy`</span> and <span pulumi-lang-nodejs="`gcp.organizations.IAMPolicy`" pulumi-lang-dotnet="`gcp.organizations.IAMPolicy`" pulumi-lang-go="`organizations.IAMPolicy`" pulumi-lang-python="`organizations.IAMPolicy`" pulumi-lang-yaml="`gcp.organizations.IAMPolicy`" pulumi-lang-java="`gcp.organizations.IAMPolicy`">`gcp.organizations.IAMPolicy`</span>.
  final Input<List<GetIAMPolicyAuditConfig>>? auditConfigs;

  /// A nested configuration block (described below)
  /// defining a binding to be included in the policy document. Multiple
  /// <span pulumi-lang-nodejs="`binding`" pulumi-lang-dotnet="`Binding`" pulumi-lang-go="`binding`" pulumi-lang-python="`binding`" pulumi-lang-yaml="`binding`" pulumi-lang-java="`binding`">`binding`</span> arguments are supported.
  ///
  /// Each document configuration must have one or more <span pulumi-lang-nodejs="`binding`" pulumi-lang-dotnet="`Binding`" pulumi-lang-go="`binding`" pulumi-lang-python="`binding`" pulumi-lang-yaml="`binding`" pulumi-lang-java="`binding`">`binding`</span> blocks, which
  /// each accept the following arguments:
  final Input<List<GetIAMPolicyBinding>>? bindings;

  GetIAMPolicyArgs({
    this.auditConfigs,
    this.bindings,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final auditConfigsValue = auditConfigs;
    if (auditConfigsValue != null) {
      map['auditConfigs'] = Input.mapOptionalInputValue<
              List<GetIAMPolicyAuditConfig>, List<Map<String, dynamic>>>(
          auditConfigsValue,
          (value) =>
              Input.encodeList<GetIAMPolicyAuditConfig, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final bindingsValue = bindings;
    if (bindingsValue != null) {
      map['bindings'] = Input.mapOptionalInputValue<List<GetIAMPolicyBinding>,
              List<Map<String, dynamic>>>(
          bindingsValue,
          (value) =>
              Input.encodeList<GetIAMPolicyBinding, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    return map;
  }

  factory GetIAMPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetIAMPolicyArgs(
      auditConfigs: Input.asOptionalInput<List<GetIAMPolicyAuditConfig>>(
          map['auditConfigs']),
      bindings:
          Input.asOptionalInput<List<GetIAMPolicyBinding>>(map['bindings']),
    );
  }
}
