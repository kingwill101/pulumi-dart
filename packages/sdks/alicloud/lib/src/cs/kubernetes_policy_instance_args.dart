// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cs_kubernetes_policy_instance_kubernetes_policy_instance_args_doc}
/// The set of arguments for KubernetesPolicyInstance.
/// {@endtemplate}
/// {@macro pulumi_cs_kubernetes_policy_instance_kubernetes_policy_instance_args_doc}
class KubernetesPolicyInstanceArgs {
  /// Policy Governance Implementation Actions
  final pulumi.Input<String>? action;
  /// Target cluster ID
  final pulumi.Input<String> clusterId;
  /// Limits the namespace of the policy implementation. Empty indicates all namespaces.
  final pulumi.Input<List<String>>? namespaces;
  /// The parameter configuration of the current rule instance. For more information about the parameters supported by each policy rule, see [Container Security Policy Rule Base Description](https://www.alibabacloud.com/help/doc-detail/359819.html).
  final pulumi.Input<Map<String, String>>? parameters;
  /// Policy Name
  final pulumi.Input<String> policyName;

  /// Creates a new [KubernetesPolicyInstanceArgs].
  /// [action] Policy Governance Implementation Actions
  /// [clusterId] Target cluster ID
  /// [namespaces] Limits the namespace of the policy implementation. Empty indicates all namespaces.
  /// [parameters] The parameter configuration of the current rule instance. For more information about the parameters supported by each policy rule, see [Container Security Policy Rule Base Description](https://www.alibabacloud.com/help/doc-detail/359819.html).
  /// [policyName] Policy Name
  const KubernetesPolicyInstanceArgs({
    this.action,
    required this.clusterId,
    this.namespaces,
    this.parameters,
    required this.policyName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'clusterId': clusterId,
      'namespaces': ?namespaces,
      'parameters': ?parameters,
      'policyName': policyName,
    };
  }

  factory KubernetesPolicyInstanceArgs.fromMap(Map<String, dynamic> map) {
    return KubernetesPolicyInstanceArgs(
      action: (() { final guardedValue = map['action']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clusterId: pulumi.Input.fromValue(map['clusterId'] as String),
      namespaces: (() { final guardedValue = map['namespaces']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      policyName: pulumi.Input.fromValue(map['policyName'] as String),
    );
  }
}

