// ignore_for_file: unused_element, unnecessary_cast

import 'pool_start_task_user_identity_auto_user.dart';

class PoolStartTaskUserIdentity {
  /// A `auto_user` block that describes the user identity under which the start task runs as defined below.
  ///
  /// > **Note:** `user_name` and `auto_user` blocks cannot be used both at the same time, but you need to define one or the other.
  final PoolStartTaskUserIdentityAutoUser? autoUser;
  /// The username to be used by the Batch pool start task.
  final String? userName;

  /// Creates a new [PoolStartTaskUserIdentity].
  /// [autoUser] A `auto_user` block that describes the user identity under which the start task runs as defined below.
  /// [userName] The username to be used by the Batch pool start task.
  PoolStartTaskUserIdentity({
    this.autoUser,
    this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoUser': ?autoUser == null ? null : autoUser!.toMap(),
      'userName': ?userName,
    };
  }

  factory PoolStartTaskUserIdentity.fromMap(Map<String, dynamic> map) {
    return PoolStartTaskUserIdentity(
      autoUser: map['autoUser'] == null ? null : PoolStartTaskUserIdentityAutoUser.fromMap((map['autoUser'] as Map).cast<String, dynamic>()),
      userName: map['userName'] == null ? null : map['userName'] as String,
    );
  }
}

