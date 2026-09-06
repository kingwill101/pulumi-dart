// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_policies_response.dart';
import 'resource_quota_response.dart';

/// Properties of a namespace managed by ARM
class NamespacePropertiesNamespaceResponse {
  /// Action if Kubernetes namespace with same name already exists.
  final pulumi.Input<String?>? adoptionPolicy;
  /// The annotations of managed namespace.
  final pulumi.Input<Map<String, String>?>? annotations;
  /// The default network policy enforced upon the namespace. Customers can have other Kubernetes network policy objects under the namespace. All the network policies will be enforced.
  final pulumi.Input<NetworkPoliciesResponse?>? defaultNetworkPolicy;
  /// The default resource quota enforced upon the namespace. Customers can have other Kubernetes resource quota objects under the namespace. All the resource quotas will be enforced.
  final pulumi.Input<ResourceQuotaResponse?>? defaultResourceQuota;
  /// Delete options of a namespace.
  final pulumi.Input<String?>? deletePolicy;
  /// The labels of managed namespace.
  final pulumi.Input<Map<String, String>?>? labels;
  /// The current provisioning state of the namespace.
  final pulumi.Input<String> provisioningState;

  /// Creates a new [NamespacePropertiesNamespaceResponse].
  /// [adoptionPolicy] Action if Kubernetes namespace with same name already exists.
  /// [annotations] The annotations of managed namespace.
  /// [defaultNetworkPolicy] The default network policy enforced upon the namespace. Customers can have other Kubernetes network policy objects under the namespace. All the network policies will be enforced.
  /// [defaultResourceQuota] The default resource quota enforced upon the namespace. Customers can have other Kubernetes resource quota objects under the namespace. All the resource quotas will be enforced.
  /// [deletePolicy] Delete options of a namespace.
  /// [labels] The labels of managed namespace.
  /// [provisioningState] The current provisioning state of the namespace.
  const NamespacePropertiesNamespaceResponse({
    this.adoptionPolicy,
    this.annotations,
    this.defaultNetworkPolicy,
    this.defaultResourceQuota,
    this.deletePolicy,
    this.labels,
    required this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adoptionPolicy': ?adoptionPolicy,
      'annotations': ?annotations,
      'defaultNetworkPolicy': ?pulumi.Input.mapOptionalInputValue<NetworkPoliciesResponse, Map<String, dynamic>>(defaultNetworkPolicy, (value) => value.toMap()),
      'defaultResourceQuota': ?pulumi.Input.mapOptionalInputValue<ResourceQuotaResponse, Map<String, dynamic>>(defaultResourceQuota, (value) => value.toMap()),
      'deletePolicy': ?deletePolicy,
      'labels': ?labels,
      'provisioningState': provisioningState,
    };
  }

  factory NamespacePropertiesNamespaceResponse.fromMap(Map<String, dynamic> map) {
    return NamespacePropertiesNamespaceResponse(
      adoptionPolicy: (() { final guardedValue = map['adoptionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      defaultNetworkPolicy: (() { final guardedValue = map['defaultNetworkPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NetworkPoliciesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      defaultResourceQuota: (() { final guardedValue = map['defaultResourceQuota']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceQuotaResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      deletePolicy: (() { final guardedValue = map['deletePolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
    );
  }
}
