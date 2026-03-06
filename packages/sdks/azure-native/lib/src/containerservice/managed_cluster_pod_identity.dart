// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_assigned_identity.dart';

/// Details about the pod identity assigned to the Managed Cluster.
class ManagedClusterPodIdentity {
  /// The binding selector to use for the AzureIdentityBinding resource.
  final pulumi.Input<String>? bindingSelector;
  /// The user assigned identity details.
  final pulumi.Input<UserAssignedIdentity> identity;
  /// The name of the pod identity.
  final pulumi.Input<String> name;
  /// The namespace of the pod identity.
  final pulumi.Input<String> namespace;

  /// Creates a new [ManagedClusterPodIdentity].
  /// [bindingSelector] The binding selector to use for the AzureIdentityBinding resource.
  /// [identity] The user assigned identity details.
  /// [name] The name of the pod identity.
  /// [namespace] The namespace of the pod identity.
  const ManagedClusterPodIdentity({
    this.bindingSelector,
    required this.identity,
    required this.name,
    required this.namespace,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bindingSelector': ?bindingSelector,
      'identity': pulumi.Input.mapInputValue<UserAssignedIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'name': name,
      'namespace': namespace,
    };
  }

  factory ManagedClusterPodIdentity.fromMap(Map<String, dynamic> map) {
    return ManagedClusterPodIdentity(
      bindingSelector: (() { final guardedValue = map['bindingSelector']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      identity: pulumi.Input.fromValue(UserAssignedIdentity.fromMap((map['identity']! as Map).cast<String, dynamic>())),
      name: pulumi.Input.fromValue(map['name'] as String),
      namespace: pulumi.Input.fromValue(map['namespace'] as String),
    );
  }
}

