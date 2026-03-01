// ignore_for_file: unused_element, unnecessary_cast

import 'network_policies.dart';
import 'resource_quota.dart';

/// Properties of a namespace managed by ARM
class NamespaceProperties {
  /// Action if Kubernetes namespace with same name already exists.
  final String? adoptionPolicy;
  /// The annotations of managed namespace.
  final Map<String, String>? annotations;
  /// The default network policy enforced upon the namespace. Customers can have other Kubernetes network policy objects under the namespace. All the network policies will be enforced.
  final NetworkPolicies? defaultNetworkPolicy;
  /// The default resource quota enforced upon the namespace. Customers can have other Kubernetes resource quota objects under the namespace. All the resource quotas will be enforced.
  final ResourceQuota? defaultResourceQuota;
  /// Delete options of a namespace.
  final String? deletePolicy;
  /// The labels of managed namespace.
  final Map<String, String>? labels;

  /// Creates a new [NamespaceProperties].
  /// [adoptionPolicy] Action if Kubernetes namespace with same name already exists.
  /// [annotations] The annotations of managed namespace.
  /// [defaultNetworkPolicy] The default network policy enforced upon the namespace. Customers can have other Kubernetes network policy objects under the namespace. All the network policies will be enforced.
  /// [defaultResourceQuota] The default resource quota enforced upon the namespace. Customers can have other Kubernetes resource quota objects under the namespace. All the resource quotas will be enforced.
  /// [deletePolicy] Delete options of a namespace.
  /// [labels] The labels of managed namespace.
  NamespaceProperties({
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
      'defaultNetworkPolicy': ?defaultNetworkPolicy == null ? null : defaultNetworkPolicy!.toMap(),
      'defaultResourceQuota': ?defaultResourceQuota == null ? null : defaultResourceQuota!.toMap(),
      'deletePolicy': ?deletePolicy,
      'labels': ?labels,
    };
  }

  factory NamespaceProperties.fromMap(Map<String, dynamic> map) {
    return NamespaceProperties(
      adoptionPolicy: map['adoptionPolicy'] == null ? null : map['adoptionPolicy'] as String,
      annotations: map['annotations'] == null ? null : (map['annotations'] as Map).cast<String, String>(),
      defaultNetworkPolicy: map['defaultNetworkPolicy'] == null ? null : NetworkPolicies.fromMap((map['defaultNetworkPolicy'] as Map).cast<String, dynamic>()),
      defaultResourceQuota: map['defaultResourceQuota'] == null ? null : ResourceQuota.fromMap((map['defaultResourceQuota'] as Map).cast<String, dynamic>()),
      deletePolicy: map['deletePolicy'] == null ? null : map['deletePolicy'] as String,
      labels: map['labels'] == null ? null : (map['labels'] as Map).cast<String, String>(),
    );
  }
}

