// ignore_for_file: unused_element, unnecessary_cast

import 'network_policies_response.dart';
import 'resource_quota_response.dart';

/// Properties of a namespace managed by ARM
class NamespacePropertiesResponse {
  /// Action if Kubernetes namespace with same name already exists.
  final String? adoptionPolicy;
  /// The annotations of managed namespace.
  final Map<String, String>? annotations;
  /// The default network policy enforced upon the namespace. Customers can have other Kubernetes network policy objects under the namespace. All the network policies will be enforced.
  final NetworkPoliciesResponse? defaultNetworkPolicy;
  /// The default resource quota enforced upon the namespace. Customers can have other Kubernetes resource quota objects under the namespace. All the resource quotas will be enforced.
  final ResourceQuotaResponse? defaultResourceQuota;
  /// Delete options of a namespace.
  final String? deletePolicy;
  /// The labels of managed namespace.
  final Map<String, String>? labels;
  /// The special FQDN used by the Azure Portal to access the Managed Cluster. This FQDN is for use only by the Azure Portal and should not be used by other clients. The Azure Portal requires certain Cross-Origin Resource Sharing (CORS) headers to be sent in some responses, which Kubernetes APIServer doesn't handle by default. This special FQDN supports CORS, allowing the Azure Portal to function properly.
  final String? portalFqdn;
  /// The current provisioning state of the namespace.
  final String provisioningState;

  /// Creates a new [NamespacePropertiesResponse].
  /// [adoptionPolicy] Action if Kubernetes namespace with same name already exists.
  /// [annotations] The annotations of managed namespace.
  /// [defaultNetworkPolicy] The default network policy enforced upon the namespace. Customers can have other Kubernetes network policy objects under the namespace. All the network policies will be enforced.
  /// [defaultResourceQuota] The default resource quota enforced upon the namespace. Customers can have other Kubernetes resource quota objects under the namespace. All the resource quotas will be enforced.
  /// [deletePolicy] Delete options of a namespace.
  /// [labels] The labels of managed namespace.
  /// [portalFqdn] The special FQDN used by the Azure Portal to access the Managed Cluster. This FQDN is for use only by the Azure Portal and should not be used by other clients. The Azure Portal requires certain Cross-Origin Resource Sharing (CORS) headers to be sent in some responses, which Kubernetes APIServer doesn't handle by default. This special FQDN supports CORS, allowing the Azure Portal to function properly.
  /// [provisioningState] The current provisioning state of the namespace.
  NamespacePropertiesResponse({
    this.adoptionPolicy,
    this.annotations,
    this.defaultNetworkPolicy,
    this.defaultResourceQuota,
    this.deletePolicy,
    this.labels,
    this.portalFqdn,
    required this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adoptionPolicy': ?adoptionPolicy,
      'annotations': ?annotations,
      'defaultNetworkPolicy': ?defaultNetworkPolicy == null ? null : defaultNetworkPolicy!.toMap(),
      'defaultResourceQuota': ?defaultResourceQuota == null ? null : defaultResourceQuota!.toMap(),
      'deletePolicy': ?deletePolicy,
      'labels': ?labels,
      'portalFqdn': ?portalFqdn,
      'provisioningState': provisioningState,
    };
  }

  factory NamespacePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return NamespacePropertiesResponse(
      adoptionPolicy: map['adoptionPolicy'] == null ? null : map['adoptionPolicy'] as String,
      annotations: map['annotations'] == null ? null : (map['annotations'] as Map).cast<String, String>(),
      defaultNetworkPolicy: map['defaultNetworkPolicy'] == null ? null : NetworkPoliciesResponse.fromMap((map['defaultNetworkPolicy'] as Map).cast<String, dynamic>()),
      defaultResourceQuota: map['defaultResourceQuota'] == null ? null : ResourceQuotaResponse.fromMap((map['defaultResourceQuota'] as Map).cast<String, dynamic>()),
      deletePolicy: map['deletePolicy'] == null ? null : map['deletePolicy'] as String,
      labels: map['labels'] == null ? null : (map['labels'] as Map).cast<String, String>(),
      portalFqdn: map['portalFqdn'] == null ? null : map['portalFqdn'] as String,
      provisioningState: map['provisioningState'] as String,
    );
  }
}

