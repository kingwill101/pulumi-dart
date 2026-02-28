// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_secrets_secret_replication_user_managed_replica.dart';

class GetSecretsSecretReplicationUserManaged {
  /// The list of Replicas for this Secret.
  /// Structure is documented below.
  final List<GetSecretsSecretReplicationUserManagedReplica> replicas;

  /// Creates a new [GetSecretsSecretReplicationUserManaged].
  /// [replicas] The list of Replicas for this Secret.
  GetSecretsSecretReplicationUserManaged({
    required this.replicas,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['replicas'] = pulumi.Input.encodeList<
        GetSecretsSecretReplicationUserManagedReplica,
        Map<String, dynamic>>(replicas, (value) => value.toMap());
    return map;
  }

  factory GetSecretsSecretReplicationUserManaged.fromMap(
      Map<String, dynamic> map) {
    return GetSecretsSecretReplicationUserManaged(
      replicas: pulumi.Input.decodeList<
              GetSecretsSecretReplicationUserManagedReplica>(
          map['replicas'],
          (value) => GetSecretsSecretReplicationUserManagedReplica.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
