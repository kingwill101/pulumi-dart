// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_policies.dart';
import 'resource_quota.dart';

/// Properties of a namespace managed by ARM
class NamespaceProperties {
  /// Action if Kubernetes namespace with same name already exists.
  final pulumi.Input<String>? adoptionPolicy;
  /// The annotations of managed namespace.
  final pulumi.Input<Map<String, String>>? annotations;
  /// The default network policy enforced upon the namespace. Customers can have other Kubernetes network policy objects under the namespace. All the network policies will be enforced.
  final pulumi.Input<NetworkPolicies>? defaultNetworkPolicy;
  /// The default resource quota enforced upon the namespace. Customers can have other Kubernetes resource quota objects under the namespace. All the resource quotas will be enforced.
  final pulumi.Input<ResourceQuota>? defaultResourceQuota;
  /// Delete options of a namespace.
  final pulumi.Input<String>? deletePolicy;
  /// The labels of managed namespace.
  final pulumi.Input<Map<String, String>>? labels;

  /// Creates a new [NamespaceProperties].
  /// [adoptionPolicy] Action if Kubernetes namespace with same name already exists.
  /// [annotations] The annotations of managed namespace.
  /// [defaultNetworkPolicy] The default network policy enforced upon the namespace. Customers can have other Kubernetes network policy objects under the namespace. All the network policies will be enforced.
  /// [defaultResourceQuota] The default resource quota enforced upon the namespace. Customers can have other Kubernetes resource quota objects under the namespace. All the resource quotas will be enforced.
  /// [deletePolicy] Delete options of a namespace.
  /// [labels] The labels of managed namespace.
  const NamespaceProperties({
    this.adoptionPolicy,
    this.annotations,
    this.defaultNetworkPolicy,
    this.defaultResourceQuota,
    this.deletePolicy,
    this.labels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adoptionPolicy': ?adoptionPolicy,
      'annotations': ?annotations,
      'defaultNetworkPolicy': ?pulumi.Input.mapOptionalInputValue<NetworkPolicies, Map<String, dynamic>>(defaultNetworkPolicy, (value) => value.toMap()),
      'defaultResourceQuota': ?pulumi.Input.mapOptionalInputValue<ResourceQuota, Map<String, dynamic>>(defaultResourceQuota, (value) => value.toMap()),
      'deletePolicy': ?deletePolicy,
      'labels': ?labels,
    };
  }

  factory NamespaceProperties.fromMap(Map<String, dynamic> map) {
    return NamespaceProperties(
      adoptionPolicy: (() { final guardedValue = map['adoptionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      defaultNetworkPolicy: (() { final guardedValue = map['defaultNetworkPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NetworkPolicies.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      defaultResourceQuota: (() { final guardedValue = map['defaultResourceQuota']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceQuota.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      deletePolicy: (() { final guardedValue = map['deletePolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
