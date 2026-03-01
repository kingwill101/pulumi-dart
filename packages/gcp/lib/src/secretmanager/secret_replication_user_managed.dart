// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'secret_replication_user_managed_replica.dart';

class SecretReplicationUserManaged {
  /// The list of Replicas for this Secret. Cannot be empty.
  /// Structure is documented below.
  final List<SecretReplicationUserManagedReplica> replicas;

  /// Creates a new [SecretReplicationUserManaged].
  /// [replicas] The list of Replicas for this Secret. Cannot be empty.
  SecretReplicationUserManaged({required this.replicas});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'replicas':
          pulumi.Input.encodeList<
            SecretReplicationUserManagedReplica,
            Map<String, dynamic>
          >(replicas, (value) => value.toMap()),
    };
  }

  factory SecretReplicationUserManaged.fromMap(Map<String, dynamic> map) {
    return SecretReplicationUserManaged(
      replicas: pulumi.Input.decodeList<SecretReplicationUserManagedReplica>(
        map['replicas'],
        (value) => SecretReplicationUserManagedReplica.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
