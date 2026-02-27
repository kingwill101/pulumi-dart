// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'replica2.dart';

/// A replication policy that replicates the Secret payload into the locations specified in Secret.replication.user_managed.replicas
class UserManaged2 {
  /// The list of Replicas for this Secret. Cannot be empty.
  final List<Replica2> replicas;

  UserManaged2({
    required this.replicas,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['replicas'] = Input.encodeList<Replica2, Map<String, dynamic>>(
        replicas, (value) => value.toMap());
    return map;
  }

  factory UserManaged2.fromMap(Map<String, dynamic> map) {
    return UserManaged2(
      replicas: Input.decodeList<Replica2>(map['replicas'],
          (value) => Replica2.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
