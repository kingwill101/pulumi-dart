// ignore_for_file: unused_element, unnecessary_cast

import 'pool_identity_type.dart';

/// The identity of the Batch pool, if configured. If the pool identity is updated during update an existing pool, only the new vms which are created after the pool shrinks to 0 will have the updated identities
class BatchPoolIdentity {
  /// The type of identity used for the Batch Pool.
  final PoolIdentityType type;
  /// The list of user identities associated with the Batch pool.
  final List<String>? userAssignedIdentities;

  /// Creates a new [BatchPoolIdentity].
  /// [type] The type of identity used for the Batch Pool.
  /// [userAssignedIdentities] The list of user identities associated with the Batch pool.
  BatchPoolIdentity({
    required this.type,
    this.userAssignedIdentities,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type.value,
      'userAssignedIdentities': ?userAssignedIdentities,
    };
  }

  factory BatchPoolIdentity.fromMap(Map<String, dynamic> map) {
    return BatchPoolIdentity(
      type: PoolIdentityType.fromValue(map['type'] as String),
      userAssignedIdentities: map['userAssignedIdentities'] == null ? null : (map['userAssignedIdentities'] as List).cast<String>(),
    );
  }
}

