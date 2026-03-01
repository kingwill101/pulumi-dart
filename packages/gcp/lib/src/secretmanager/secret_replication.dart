// ignore_for_file: unused_element, unnecessary_cast

import 'secret_replication_auto.dart';
import 'secret_replication_user_managed.dart';

class SecretReplication {
  /// The Secret will automatically be replicated without any restrictions.
  /// Structure is documented below.
  final SecretReplicationAuto? auto;

  /// The Secret will be replicated to the regions specified by the user.
  /// Structure is documented below.
  final SecretReplicationUserManaged? userManaged;

  /// Creates a new [SecretReplication].
  /// [auto] The Secret will automatically be replicated without any restrictions.
  /// [userManaged] The Secret will be replicated to the regions specified by the user.
  SecretReplication({this.auto, this.userManaged});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'auto': ?auto == null ? null : auto!.toMap(),
      'userManaged': ?userManaged == null ? null : userManaged!.toMap(),
    };
  }

  factory SecretReplication.fromMap(Map<String, dynamic> map) {
    return SecretReplication(
      auto: map['auto'] == null
          ? null
          : SecretReplicationAuto.fromMap(
              (map['auto'] as Map).cast<String, dynamic>(),
            ),
      userManaged: map['userManaged'] == null
          ? null
          : SecretReplicationUserManaged.fromMap(
              (map['userManaged'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
