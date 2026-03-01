// ignore_for_file: unused_element, unnecessary_cast

import 'network_policy_response.dart';
import 'resource_quota_response.dart';

/// The namespace properties for the fleet managed namespace.
class ManagedNamespacePropertiesResponse {
  /// The annotations for the fleet managed namespace.
  final Map<String, String>? annotations;
  /// The default network policy for the fleet managed namespace.
  final NetworkPolicyResponse? defaultNetworkPolicy;
  /// The default resource quota for the fleet managed namespace.
  final ResourceQuotaResponse? defaultResourceQuota;
  /// The labels for the fleet managed namespace.
  final Map<String, String>? labels;

  /// Creates a new [ManagedNamespacePropertiesResponse].
  /// [annotations] The annotations for the fleet managed namespace.
  /// [defaultNetworkPolicy] The default network policy for the fleet managed namespace.
  /// [defaultResourceQuota] The default resource quota for the fleet managed namespace.
  /// [labels] The labels for the fleet managed namespace.
  ManagedNamespacePropertiesResponse({
    this.annotations,
    this.defaultNetworkPolicy,
    this.defaultResourceQuota,
    this.labels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'defaultNetworkPolicy': ?defaultNetworkPolicy == null ? null : defaultNetworkPolicy!.toMap(),
      'defaultResourceQuota': ?defaultResourceQuota == null ? null : defaultResourceQuota!.toMap(),
      'labels': ?labels,
    };
  }

  factory ManagedNamespacePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ManagedNamespacePropertiesResponse(
      annotations: map['annotations'] == null ? null : (map['annotations'] as Map).cast<String, String>(),
      defaultNetworkPolicy: map['defaultNetworkPolicy'] == null ? null : NetworkPolicyResponse.fromMap((map['defaultNetworkPolicy'] as Map).cast<String, dynamic>()),
      defaultResourceQuota: map['defaultResourceQuota'] == null ? null : ResourceQuotaResponse.fromMap((map['defaultResourceQuota'] as Map).cast<String, dynamic>()),
      labels: map['labels'] == null ? null : (map['labels'] as Map).cast<String, String>(),
    );
  }
}

