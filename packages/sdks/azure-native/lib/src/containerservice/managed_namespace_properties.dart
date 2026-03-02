// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_policy.dart';
import 'resource_quota.dart';

/// The namespace properties for the fleet managed namespace.
class ManagedNamespaceProperties {
  /// The annotations for the fleet managed namespace.
  final pulumi.Input<Map<String, String>>? annotations;
  /// The default network policy for the fleet managed namespace.
  final pulumi.Input<NetworkPolicy>? defaultNetworkPolicy;
  /// The default resource quota for the fleet managed namespace.
  final pulumi.Input<ResourceQuota>? defaultResourceQuota;
  /// The labels for the fleet managed namespace.
  final pulumi.Input<Map<String, String>>? labels;

  /// Creates a new [ManagedNamespaceProperties].
  /// [annotations] The annotations for the fleet managed namespace.
  /// [defaultNetworkPolicy] The default network policy for the fleet managed namespace.
  /// [defaultResourceQuota] The default resource quota for the fleet managed namespace.
  /// [labels] The labels for the fleet managed namespace.
  ManagedNamespaceProperties({
    this.annotations,
    this.defaultNetworkPolicy,
    this.defaultResourceQuota,
    this.labels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'defaultNetworkPolicy': ?pulumi.Input.mapOptionalInputValue<NetworkPolicy, String>(defaultNetworkPolicy, (value) => value.value),
      'defaultResourceQuota': ?pulumi.Input.mapOptionalInputValue<ResourceQuota, Map<String, dynamic>>(defaultResourceQuota, (value) => value.toMap()),
      'labels': ?labels,
    };
  }

  factory ManagedNamespaceProperties.fromMap(Map<String, dynamic> map) {
    return ManagedNamespaceProperties(
      annotations: map['annotations'] == null ? null : ((map['annotations'] as Map).cast<String, String>()).input(),
      defaultNetworkPolicy: map['defaultNetworkPolicy'] == null ? null : (NetworkPolicy.fromValue(map['defaultNetworkPolicy'] as String)).input(),
      defaultResourceQuota: map['defaultResourceQuota'] == null ? null : (ResourceQuota.fromMap((map['defaultResourceQuota'] as Map).cast<String, dynamic>())).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
    );
  }
}

