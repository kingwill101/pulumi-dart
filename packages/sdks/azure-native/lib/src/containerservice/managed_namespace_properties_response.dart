// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_policy_response.dart';
import 'resource_quota_response.dart';

/// The namespace properties for the fleet managed namespace.
class ManagedNamespacePropertiesResponse {
  /// The annotations for the fleet managed namespace.
  final pulumi.Input<Map<String, String>>? annotations;
  /// The default network policy for the fleet managed namespace.
  final pulumi.Input<NetworkPolicyResponse>? defaultNetworkPolicy;
  /// The default resource quota for the fleet managed namespace.
  final pulumi.Input<ResourceQuotaResponse>? defaultResourceQuota;
  /// The labels for the fleet managed namespace.
  final pulumi.Input<Map<String, String>>? labels;

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
      'defaultNetworkPolicy': ?pulumi.Input.mapOptionalInputValue<NetworkPolicyResponse, Map<String, dynamic>>(defaultNetworkPolicy, (value) => value.toMap()),
      'defaultResourceQuota': ?pulumi.Input.mapOptionalInputValue<ResourceQuotaResponse, Map<String, dynamic>>(defaultResourceQuota, (value) => value.toMap()),
      'labels': ?labels,
    };
  }

  factory ManagedNamespacePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ManagedNamespacePropertiesResponse(
      annotations: map['annotations'] == null ? null : ((map['annotations'] as Map).cast<String, String>()).input(),
      defaultNetworkPolicy: map['defaultNetworkPolicy'] == null ? null : (NetworkPolicyResponse.fromMap((map['defaultNetworkPolicy'] as Map).cast<String, dynamic>())).input(),
      defaultResourceQuota: map['defaultResourceQuota'] == null ? null : (ResourceQuotaResponse.fromMap((map['defaultResourceQuota'] as Map).cast<String, dynamic>())).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
    );
  }
}

