// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_secret_replication_user_managed_replica_customer_managed_encryption/get_secret_replication_user_managed_replica_customer_managed_encryption.dart';

class GetSecretReplicationUserManagedReplica {
  /// Customer Managed Encryption for the secret.
  final List<GetSecretReplicationUserManagedReplicaCustomerManagedEncryption>
      customerManagedEncryptions;

  /// The canonical IDs of the location to replicate data. For example: "us-east1".
  final String location;

  GetSecretReplicationUserManagedReplica({
    required this.customerManagedEncryptions,
    required this.location,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['customerManagedEncryptions'] = Input.encodeList<
            GetSecretReplicationUserManagedReplicaCustomerManagedEncryption,
            Map<String, dynamic>>(
        customerManagedEncryptions, (value) => value.toMap());
    map['location'] = location;
    return map;
  }

  factory GetSecretReplicationUserManagedReplica.fromMap(
      Map<String, dynamic> map) {
    return GetSecretReplicationUserManagedReplica(
      customerManagedEncryptions: Input.decodeList<
              GetSecretReplicationUserManagedReplicaCustomerManagedEncryption>(
          map['customerManagedEncryptions'],
          (value) =>
              GetSecretReplicationUserManagedReplicaCustomerManagedEncryption
                  .fromMap((value as Map).cast<String, dynamic>())),
      location: map['location'] as String,
    );
  }
}
