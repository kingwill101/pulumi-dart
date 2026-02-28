// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_iampolicy_audit_config.dart';
import 'get_iampolicy_binding.dart';

/// Result data returned by getIAMPolicy.
class GetIAMPolicyResult {
  final List<GetIAMPolicyAuditConfig>? auditConfigs;
  final List<GetIAMPolicyBinding>? bindings;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// The above bindings serialized in a format suitable for
  /// referencing from a resource that supports IAM.
  final String policyData;

  /// Creates a new [GetIAMPolicyResult].
  /// [auditConfigs] Optional.
  /// [bindings] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [policyData] The above bindings serialized in a format suitable for
  GetIAMPolicyResult({
    this.auditConfigs,
    this.bindings,
    required this.id,
    required this.policyData,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final auditConfigsValue = auditConfigs;
    if (auditConfigsValue != null) {
      map['auditConfigs'] = pulumi.Input.encodeList<GetIAMPolicyAuditConfig,
          Map<String, dynamic>>(auditConfigsValue, (value) => value.toMap());
    }
    final bindingsValue = bindings;
    if (bindingsValue != null) {
      map['bindings'] =
          pulumi.Input.encodeList<GetIAMPolicyBinding, Map<String, dynamic>>(
              bindingsValue, (value) => value.toMap());
    }
    map['id'] = id;
    map['policyData'] = policyData;
    return map;
  }

  factory GetIAMPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetIAMPolicyResult(
      auditConfigs: map['auditConfigs'] == null
          ? null
          : pulumi.Input.decodeList<GetIAMPolicyAuditConfig>(
              map['auditConfigs'],
              (value) => GetIAMPolicyAuditConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
      bindings: map['bindings'] == null
          ? null
          : pulumi.Input.decodeList<GetIAMPolicyBinding>(
              map['bindings'],
              (value) => GetIAMPolicyBinding.fromMap(
                  (value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      policyData: map['policyData'] as String,
    );
  }
}
