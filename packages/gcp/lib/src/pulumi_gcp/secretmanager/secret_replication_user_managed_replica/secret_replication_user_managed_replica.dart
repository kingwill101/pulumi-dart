// ignore_for_file: unused_element, unnecessary_cast

import '../secret_replication_user_managed_replica_customer_managed_encryption/secret_replication_user_managed_replica_customer_managed_encryption.dart';

class SecretReplicationUserManagedReplica {
  /// Customer Managed Encryption for the secret.
  /// Structure is documented below.
  final SecretReplicationUserManagedReplicaCustomerManagedEncryption?
      customerManagedEncryption;

  /// The canonical IDs of the location to replicate data. For example: "us-east1".
  final String location;

  SecretReplicationUserManagedReplica({
    this.customerManagedEncryption,
    required this.location,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final customerManagedEncryptionValue = customerManagedEncryption;
    if (customerManagedEncryptionValue != null) {
      map['customerManagedEncryption'] = customerManagedEncryptionValue.toMap();
    }
    map['location'] = location;
    return map;
  }

  factory SecretReplicationUserManagedReplica.fromMap(
      Map<String, dynamic> map) {
    return SecretReplicationUserManagedReplica(
      customerManagedEncryption: map['customerManagedEncryption'] == null
          ? null
          : SecretReplicationUserManagedReplicaCustomerManagedEncryption
              .fromMap((map['customerManagedEncryption'] as Map)
                  .cast<String, dynamic>()),
      location: map['location'] as String,
    );
  }
}
