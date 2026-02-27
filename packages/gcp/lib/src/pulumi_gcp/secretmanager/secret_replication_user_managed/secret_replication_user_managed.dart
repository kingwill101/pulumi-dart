// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../secret_replication_user_managed_replica/secret_replication_user_managed_replica.dart';

class SecretReplicationUserManaged {
  /// The list of Replicas for this Secret. Cannot be empty.
  /// Structure is documented below.
  final List<SecretReplicationUserManagedReplica> replicas;

  SecretReplicationUserManaged({
    required this.replicas,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['replicas'] = pulumi.Input.encodeList<
        SecretReplicationUserManagedReplica,
        Map<String, dynamic>>(replicas, (value) => value.toMap());
    return map;
  }

  factory SecretReplicationUserManaged.fromMap(Map<String, dynamic> map) {
    return SecretReplicationUserManaged(
      replicas: pulumi.Input.decodeList<SecretReplicationUserManagedReplica>(
          map['replicas'],
          (value) => SecretReplicationUserManagedReplica.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
