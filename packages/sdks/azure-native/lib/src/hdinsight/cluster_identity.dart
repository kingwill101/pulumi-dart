// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_assigned_identity.dart';

/// Identity for the cluster.
class ClusterIdentity {
  /// The type of identity used for the cluster. The type 'SystemAssigned, UserAssigned' includes both an implicitly created identity and a set of user assigned identities.
  final String? type;
  /// The list of user identities associated with the cluster. The user identity dictionary key references will be ARM resource ids in the form: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ManagedIdentity/userAssignedIdentities/{identityName}'.
  final Map<String, UserAssignedIdentity>? userAssignedIdentities;

  /// Creates a new [ClusterIdentity].
  /// [type] The type of identity used for the cluster. The type 'SystemAssigned, UserAssigned' includes both an implicitly created identity and a set of user assigned identities.
  /// [userAssignedIdentities] The list of user identities associated with the cluster. The user identity dictionary key references will be ARM resource ids in the form: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ManagedIdentity/userAssignedIdentities/{identityName}'.
  ClusterIdentity({
    this.type,
    this.userAssignedIdentities,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
      'userAssignedIdentities': ?userAssignedIdentities == null ? null : pulumi.Input.encodeMapValues<UserAssignedIdentity, Map<String, dynamic>>(userAssignedIdentities!, (value) => value.toMap()),
    };
  }

  factory ClusterIdentity.fromMap(Map<String, dynamic> map) {
    return ClusterIdentity(
      type: map['type'] == null ? null : map['type'] as String,
      userAssignedIdentities: map['userAssignedIdentities'] == null ? null : pulumi.Input.decodeMapValues<UserAssignedIdentity>(map['userAssignedIdentities'], (value) => UserAssignedIdentity.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

