// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'replica.dart';

/// A replication policy that replicates the Secret payload into the locations specified in Secret.replication.user_managed.replicas
class UserManaged {
  /// The list of Replicas for this Secret. Cannot be empty.
  final List<Replica> replicas;

  UserManaged({
    required this.replicas,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['replicas'] = Input.encodeList<Replica, Map<String, dynamic>>(
        replicas, (value) => value.toMap());
    return map;
  }

  factory UserManaged.fromMap(Map<String, dynamic> map) {
    return UserManaged(
      replicas: Input.decodeList<Replica>(map['replicas'],
          (value) => Replica.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
