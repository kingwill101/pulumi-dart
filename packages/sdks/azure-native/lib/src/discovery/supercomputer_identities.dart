// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'identity.dart';

/// Dictionary of identity properties for the Supercomputer.
class SupercomputerIdentities {
  /// Cluster identity ID.
  final pulumi.Input<Identity> clusterIdentity;
  /// Kubelet identity ID used by the supercomputer.
  /// This identity is used by the supercomputer at node level to access Azure resources.
  /// This identity must have ManagedIdentityOperator role on the clusterIdentity.
  final pulumi.Input<Identity> kubeletIdentity;
  /// User assigned identity IDs to be used by workloads as federated credentials running on supercomputer. The key value must be the resource ID of the identity resource.
  final pulumi.Input<List<String>>? workloadIdentities;

  /// Creates a new [SupercomputerIdentities].
  /// [clusterIdentity] Cluster identity ID.
  /// [kubeletIdentity] Kubelet identity ID used by the supercomputer.
  /// [workloadIdentities] User assigned identity IDs to be used by workloads as federated credentials running on supercomputer. The key value must be the resource ID of the identity resource.
  const SupercomputerIdentities({
    required this.clusterIdentity,
    required this.kubeletIdentity,
    this.workloadIdentities,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterIdentity': pulumi.Input.mapInputValue<Identity, Map<String, dynamic>>(clusterIdentity, (value) => value.toMap()),
      'kubeletIdentity': pulumi.Input.mapInputValue<Identity, Map<String, dynamic>>(kubeletIdentity, (value) => value.toMap()),
      'workloadIdentities': ?workloadIdentities,
    };
  }

  factory SupercomputerIdentities.fromMap(Map<String, dynamic> map) {
    return SupercomputerIdentities(
      clusterIdentity: pulumi.Input.fromValue(Identity.fromMap((map['clusterIdentity']! as Map).cast<String, dynamic>())),
      kubeletIdentity: pulumi.Input.fromValue(Identity.fromMap((map['kubeletIdentity']! as Map).cast<String, dynamic>())),
      workloadIdentities: (() { final guardedValue = map['workloadIdentities']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
