// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_policy_response.dart';
import 'resource_quota_response.dart';

/// The namespace properties for the fleet managed namespace.
class ManagedNamespacePropertiesResponse {
  /// The annotations for the fleet managed namespace.
  final pulumi.Input<Map<String, String>?>? annotations;
  /// The default network policy for the fleet managed namespace.
  final pulumi.Input<NetworkPolicyResponse?>? defaultNetworkPolicy;
  /// The default resource quota for the fleet managed namespace.
  final pulumi.Input<ResourceQuotaResponse?>? defaultResourceQuota;
  /// The labels for the fleet managed namespace.
  final pulumi.Input<Map<String, String>?>? labels;

  /// Creates a new [ManagedNamespacePropertiesResponse].
  /// [annotations] The annotations for the fleet managed namespace.
  /// [defaultNetworkPolicy] The default network policy for the fleet managed namespace.
  /// [defaultResourceQuota] The default resource quota for the fleet managed namespace.
  /// [labels] The labels for the fleet managed namespace.
  const ManagedNamespacePropertiesResponse({
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
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      defaultNetworkPolicy: (() { final guardedValue = map['defaultNetworkPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NetworkPolicyResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      defaultResourceQuota: (() { final guardedValue = map['defaultResourceQuota']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceQuotaResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
