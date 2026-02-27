// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_secret_replication_user_managed_replica/get_secret_replication_user_managed_replica.dart';

class GetSecretReplicationUserManaged {
  /// The list of Replicas for this Secret. Cannot be empty.
  final List<GetSecretReplicationUserManagedReplica> replicas;

  GetSecretReplicationUserManaged({
    required this.replicas,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['replicas'] = pulumi.Input.encodeList<
        GetSecretReplicationUserManagedReplica,
        Map<String, dynamic>>(replicas, (value) => value.toMap());
    return map;
  }

  factory GetSecretReplicationUserManaged.fromMap(Map<String, dynamic> map) {
    return GetSecretReplicationUserManaged(
      replicas: pulumi.Input.decodeList<GetSecretReplicationUserManagedReplica>(
          map['replicas'],
          (value) => GetSecretReplicationUserManagedReplica.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
