// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'replica_response.dart';

/// A replication policy that replicates the Secret payload into the locations specified in Secret.replication.user_managed.replicas
class UserManagedResponse {
  /// The list of Replicas for this Secret. Cannot be empty.
  final List<ReplicaResponse> replicas;

  UserManagedResponse({
    required this.replicas,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['replicas'] = Input.encodeList<ReplicaResponse, Map<String, dynamic>>(
        replicas, (value) => value.toMap());
    return map;
  }

  factory UserManagedResponse.fromMap(Map<String, dynamic> map) {
    return UserManagedResponse(
      replicas: Input.decodeList<ReplicaResponse>(
          map['replicas'],
          (value) =>
              ReplicaResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
