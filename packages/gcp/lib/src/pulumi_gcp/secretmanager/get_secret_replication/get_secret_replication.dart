// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_secret_replication_auto/get_secret_replication_auto.dart';
import '../get_secret_replication_user_managed/get_secret_replication_user_managed.dart';

class GetSecretReplication {
  /// The Secret will automatically be replicated without any restrictions.
  final List<GetSecretReplicationAuto> autos;

  /// The Secret will be replicated to the regions specified by the user.
  final List<GetSecretReplicationUserManaged> userManageds;

  GetSecretReplication({
    required this.autos,
    required this.userManageds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['autos'] =
        Input.encodeList<GetSecretReplicationAuto, Map<String, dynamic>>(
            autos, (value) => value.toMap());
    map['userManageds'] =
        Input.encodeList<GetSecretReplicationUserManaged, Map<String, dynamic>>(
            userManageds, (value) => value.toMap());
    return map;
  }

  factory GetSecretReplication.fromMap(Map<String, dynamic> map) {
    return GetSecretReplication(
      autos: Input.decodeList<GetSecretReplicationAuto>(
          map['autos'],
          (value) => GetSecretReplicationAuto.fromMap(
              (value as Map).cast<String, dynamic>())),
      userManageds: Input.decodeList<GetSecretReplicationUserManaged>(
          map['userManageds'],
          (value) => GetSecretReplicationUserManaged.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
