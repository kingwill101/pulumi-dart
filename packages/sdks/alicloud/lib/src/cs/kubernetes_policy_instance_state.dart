// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering KubernetesPolicyInstance resources.
class KubernetesPolicyInstanceState {
  /// Policy Governance Implementation Actions
  final pulumi.Input<String>? action;
  /// Target cluster ID
  final pulumi.Input<String>? clusterId;
  /// Rule Instance Name
  final pulumi.Input<String>? instanceName;
  /// Limits the namespace of the policy implementation. Empty indicates all namespaces.
  final pulumi.Input<List<String>>? namespaces;
  /// The parameter configuration of the current rule instance. For more information about the parameters supported by each policy rule, see [Container Security Policy Rule Base Description](https://www.alibabacloud.com/help/doc-detail/359819.html).
  final pulumi.Input<Map<String, String>>? parameters;
  /// Policy Name
  final pulumi.Input<String>? policyName;

  /// Creates a new [KubernetesPolicyInstanceState].
  /// [action] Policy Governance Implementation Actions
  /// [clusterId] Target cluster ID
  /// [instanceName] Rule Instance Name
  /// [namespaces] Limits the namespace of the policy implementation. Empty indicates all namespaces.
  /// [parameters] The parameter configuration of the current rule instance. For more information about the parameters supported by each policy rule, see [Container Security Policy Rule Base Description](https://www.alibabacloud.com/help/doc-detail/359819.html).
  /// [policyName] Policy Name
  KubernetesPolicyInstanceState({
    pulumi.Output<String>? action,
    pulumi.Output<String>? clusterId,
    pulumi.Output<String>? instanceName,
    pulumi.Output<List<String>>? namespaces,
    pulumi.Output<Map<String, String>>? parameters,
    pulumi.Output<String>? policyName,
  }) :
      action = pulumi.Input.asOptionalInput<String>(action),
      clusterId = pulumi.Input.asOptionalInput<String>(clusterId),
      instanceName = pulumi.Input.asOptionalInput<String>(instanceName),
      namespaces = pulumi.Input.asOptionalInput<List<String>>(namespaces),
      parameters = pulumi.Input.asOptionalInput<Map<String, String>>(parameters),
      policyName = pulumi.Input.asOptionalInput<String>(policyName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'clusterId': ?clusterId,
      'instanceName': ?instanceName,
      'namespaces': ?namespaces,
      'parameters': ?parameters,
      'policyName': ?policyName,
    };
  }

  factory KubernetesPolicyInstanceState.fromMap(Map<String, dynamic> map) {
    return KubernetesPolicyInstanceState(
      action: map['action'] == null ? null : pulumi.Output.create<String>(map['action'] as String),
      clusterId: map['clusterId'] == null ? null : pulumi.Output.create<String>(map['clusterId'] as String),
      instanceName: map['instanceName'] == null ? null : pulumi.Output.create<String>(map['instanceName'] as String),
      namespaces: map['namespaces'] == null ? null : pulumi.Output.create<List<String>>((map['namespaces'] as List).cast<String>()),
      parameters: map['parameters'] == null ? null : pulumi.Output.create<Map<String, String>>((map['parameters'] as Map).cast<String, String>()),
      policyName: map['policyName'] == null ? null : pulumi.Output.create<String>(map['policyName'] as String),
    );
  }
}

