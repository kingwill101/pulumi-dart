// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_secret_replication_auto.dart';
import 'get_secret_replication_user_managed.dart';

class GetSecretReplication {
  /// The Secret will automatically be replicated without any restrictions.
  final List<GetSecretReplicationAuto> autos;

  /// The Secret will be replicated to the regions specified by the user.
  final List<GetSecretReplicationUserManaged> userManageds;

  /// Creates a new [GetSecretReplication].
  /// [autos] The Secret will automatically be replicated without any restrictions.
  /// [userManageds] The Secret will be replicated to the regions specified by the user.
  GetSecretReplication({
    required this.autos,
    required this.userManageds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['autos'] =
        pulumi.Input.encodeList<GetSecretReplicationAuto, Map<String, dynamic>>(
            autos, (value) => value.toMap());
    map['userManageds'] = pulumi.Input.encodeList<
        GetSecretReplicationUserManaged,
        Map<String, dynamic>>(userManageds, (value) => value.toMap());
    return map;
  }

  factory GetSecretReplication.fromMap(Map<String, dynamic> map) {
    return GetSecretReplication(
      autos: pulumi.Input.decodeList<GetSecretReplicationAuto>(
          map['autos'],
          (value) => GetSecretReplicationAuto.fromMap(
              (value as Map).cast<String, dynamic>())),
      userManageds: pulumi.Input.decodeList<GetSecretReplicationUserManaged>(
          map['userManageds'],
          (value) => GetSecretReplicationUserManaged.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
