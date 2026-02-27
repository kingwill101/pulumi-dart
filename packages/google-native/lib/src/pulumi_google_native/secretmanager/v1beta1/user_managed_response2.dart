// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'replica_response2.dart';

/// A replication policy that replicates the Secret payload into the locations specified in Secret.replication.user_managed.replicas
class UserManagedResponse2 {
  /// The list of Replicas for this Secret. Cannot be empty.
  final List<ReplicaResponse2> replicas;

  UserManagedResponse2({
    required this.replicas,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['replicas'] = Input.encodeList<ReplicaResponse2, Map<String, dynamic>>(
        replicas, (value) => value.toMap());
    return map;
  }

  factory UserManagedResponse2.fromMap(Map<String, dynamic> map) {
    return UserManagedResponse2(
      replicas: Input.decodeList<ReplicaResponse2>(
          map['replicas'],
          (value) =>
              ReplicaResponse2.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
