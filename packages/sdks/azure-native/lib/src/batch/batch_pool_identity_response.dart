// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_assigned_identities_response.dart';

/// The identity of the Batch pool, if configured. If the pool identity is updated during update an existing pool, only the new vms which are created after the pool shrinks to 0 will have the updated identities
class BatchPoolIdentityResponse {
  /// The type of identity used for the Batch Pool.
  final String type;
  /// The list of user identities associated with the Batch pool.
  final Map<String, UserAssignedIdentitiesResponse>? userAssignedIdentities;

  /// Creates a new [BatchPoolIdentityResponse].
  /// [type] The type of identity used for the Batch Pool.
  /// [userAssignedIdentities] The list of user identities associated with the Batch pool.
  BatchPoolIdentityResponse({
    required this.type,
    this.userAssignedIdentities,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
      'userAssignedIdentities': ?userAssignedIdentities == null ? null : pulumi.Input.encodeMapValues<UserAssignedIdentitiesResponse, Map<String, dynamic>>(userAssignedIdentities!, (value) => value.toMap()),
    };
  }

  factory BatchPoolIdentityResponse.fromMap(Map<String, dynamic> map) {
    return BatchPoolIdentityResponse(
      type: map['type'] as String,
      userAssignedIdentities: map['userAssignedIdentities'] == null ? null : pulumi.Input.decodeMapValues<UserAssignedIdentitiesResponse>(map['userAssignedIdentities'], (value) => UserAssignedIdentitiesResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

