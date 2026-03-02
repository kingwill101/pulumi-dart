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
    this.action,
    this.clusterId,
    this.instanceName,
    this.namespaces,
    this.parameters,
    this.policyName,
  });

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
      action: map['action'] == null ? null : (map['action']! as String).input(),
      clusterId: map['clusterId'] == null ? null : (map['clusterId']! as String).input(),
      instanceName: map['instanceName'] == null ? null : (map['instanceName']! as String).input(),
      namespaces: map['namespaces'] == null ? null : ((map['namespaces']! as List).cast<String>()).input(),
      parameters: map['parameters'] == null ? null : ((map['parameters']! as Map).cast<String, String>()).input(),
      policyName: map['policyName'] == null ? null : (map['policyName']! as String).input(),
    );
  }
}

