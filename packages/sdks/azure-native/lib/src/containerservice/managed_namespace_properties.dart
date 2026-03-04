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
      'defaultNetworkPolicy':
          ?pulumi.Input.mapOptionalInputValue<NetworkPolicy, String>(
            defaultNetworkPolicy,
            (value) => value.wireValue,
          ),
      'defaultResourceQuota':
          ?pulumi.Input.mapOptionalInputValue<
            ResourceQuota,
            Map<String, dynamic>
          >(defaultResourceQuota, (value) => value.toMap()),
      'labels': ?labels,
    };
  }

  factory ManagedNamespaceProperties.fromMap(Map<String, dynamic> map) {
    return ManagedNamespaceProperties(
      annotations: (() {
        final guardedValue = map['annotations'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      defaultNetworkPolicy: (() {
        final guardedValue = map['defaultNetworkPolicy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          NetworkPolicy.fromValue(guardedValue as String),
        );
      })(),
      defaultResourceQuota: (() {
        final guardedValue = map['defaultResourceQuota'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ResourceQuota.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      labels: (() {
        final guardedValue = map['labels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
