// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'identity_response.dart';
import 'user_assigned_identity_response.dart';

/// Dictionary of identity properties for the Supercomputer.
class SupercomputerIdentitiesResponse {
  /// Cluster identity ID.
  final pulumi.Input<IdentityResponse> clusterIdentity;
  /// Kubelet identity ID used by the supercomputer.
  /// This identity is used by the supercomputer at node level to access Azure resources.
  /// This identity must have ManagedIdentityOperator role on the clusterIdentity.
  final pulumi.Input<IdentityResponse> kubeletIdentity;
  /// User assigned identity IDs to be used by workloads as federated credentials running on supercomputer. The key value must be the resource ID of the identity resource.
  final pulumi.Input<Map<String, UserAssignedIdentityResponse>>? workloadIdentities;

  /// Creates a new [SupercomputerIdentitiesResponse].
  /// [clusterIdentity] Cluster identity ID.
  /// [kubeletIdentity] Kubelet identity ID used by the supercomputer.
  /// [workloadIdentities] User assigned identity IDs to be used by workloads as federated credentials running on supercomputer. The key value must be the resource ID of the identity resource.
  const SupercomputerIdentitiesResponse({
    required this.clusterIdentity,
    required this.kubeletIdentity,
    this.workloadIdentities,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterIdentity': pulumi.Input.mapInputValue<IdentityResponse, Map<String, dynamic>>(clusterIdentity, (value) => value.toMap()),
      'kubeletIdentity': pulumi.Input.mapInputValue<IdentityResponse, Map<String, dynamic>>(kubeletIdentity, (value) => value.toMap()),
      'workloadIdentities': ?pulumi.Input.mapOptionalInputValue<Map<String, UserAssignedIdentityResponse>, Map<String, Map<String, dynamic>>>(workloadIdentities, (value) => pulumi.Input.encodeMapValues<UserAssignedIdentityResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory SupercomputerIdentitiesResponse.fromMap(Map<String, dynamic> map) {
    return SupercomputerIdentitiesResponse(
      clusterIdentity: pulumi.Input.fromValue(IdentityResponse.fromMap((map['clusterIdentity']! as Map).cast<String, dynamic>())),
      kubeletIdentity: pulumi.Input.fromValue(IdentityResponse.fromMap((map['kubeletIdentity']! as Map).cast<String, dynamic>())),
      workloadIdentities: (() { final guardedValue = map['workloadIdentities']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<UserAssignedIdentityResponse>(guardedValue, (value) => UserAssignedIdentityResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
