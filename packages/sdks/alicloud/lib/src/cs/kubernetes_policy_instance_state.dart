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
      action: (() {
        final guardedValue = map['action'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      clusterId: (() {
        final guardedValue = map['clusterId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      instanceName: (() {
        final guardedValue = map['instanceName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      namespaces: (() {
        final guardedValue = map['namespaces'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      parameters: (() {
        final guardedValue = map['parameters'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      policyName: (() {
        final guardedValue = map['policyName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
