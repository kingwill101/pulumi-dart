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
  KubernetesPolicyInstanceArgs({
    pulumi.Output<String>? action,
    required pulumi.Output<String> clusterId,
    pulumi.Output<List<String>>? namespaces,
    pulumi.Output<Map<String, String>>? parameters,
    required pulumi.Output<String> policyName,
  }) :
      action = pulumi.Input.asOptionalInput<String>(action),
      clusterId = pulumi.Input.asInput<String>(clusterId),
      namespaces = pulumi.Input.asOptionalInput<List<String>>(namespaces),
      parameters = pulumi.Input.asOptionalInput<Map<String, String>>(parameters),
      policyName = pulumi.Input.asInput<String>(policyName);

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
      action: map['action'] == null ? null : pulumi.Output.create<String>(map['action'] as String),
      clusterId: pulumi.Output.create<String>(map['clusterId'] as String),
      namespaces: map['namespaces'] == null ? null : pulumi.Output.create<List<String>>((map['namespaces'] as List).cast<String>()),
      parameters: map['parameters'] == null ? null : pulumi.Output.create<Map<String, String>>((map['parameters'] as Map).cast<String, String>()),
      policyName: pulumi.Output.create<String>(map['policyName'] as String),
    );
  }
}

