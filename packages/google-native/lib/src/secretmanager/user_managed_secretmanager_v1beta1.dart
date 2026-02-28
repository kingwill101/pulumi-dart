// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'replica_secretmanager_v1beta1.dart';

/// A replication policy that replicates the Secret payload into the locations specified in Secret.replication.user_managed.replicas
class UserManagedSecretmanagerV1beta1 {
  /// The list of Replicas for this Secret. Cannot be empty.
  final List<ReplicaSecretmanagerV1beta1> replicas;

  /// Creates a new [UserManagedSecretmanagerV1beta1].
  /// [replicas] The list of Replicas for this Secret. Cannot be empty.
  UserManagedSecretmanagerV1beta1({
    required this.replicas,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['replicas'] = pulumi.Input.encodeList<ReplicaSecretmanagerV1beta1,
        Map<String, dynamic>>(replicas, (value) => value.toMap());
    return map;
  }

  factory UserManagedSecretmanagerV1beta1.fromMap(Map<String, dynamic> map) {
    return UserManagedSecretmanagerV1beta1(
      replicas: pulumi.Input.decodeList<ReplicaSecretmanagerV1beta1>(
          map['replicas'],
          (value) => ReplicaSecretmanagerV1beta1.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
