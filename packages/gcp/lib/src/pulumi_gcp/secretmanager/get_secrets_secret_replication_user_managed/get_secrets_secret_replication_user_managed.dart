// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_secrets_secret_replication_user_managed_replica/get_secrets_secret_replication_user_managed_replica.dart';

class GetSecretsSecretReplicationUserManaged {
  /// The list of Replicas for this Secret.
  /// Structure is documented below.
  final List<GetSecretsSecretReplicationUserManagedReplica> replicas;

  GetSecretsSecretReplicationUserManaged({
    required this.replicas,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['replicas'] = Input.encodeList<
        GetSecretsSecretReplicationUserManagedReplica,
        Map<String, dynamic>>(replicas, (value) => value.toMap());
    return map;
  }

  factory GetSecretsSecretReplicationUserManaged.fromMap(
      Map<String, dynamic> map) {
    return GetSecretsSecretReplicationUserManaged(
      replicas: Input.decodeList<GetSecretsSecretReplicationUserManagedReplica>(
          map['replicas'],
          (value) => GetSecretsSecretReplicationUserManagedReplica.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
