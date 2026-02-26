// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_secrets_secret_replication_auto/get_secrets_secret_replication_auto.dart';
import '../get_secrets_secret_replication_user_managed/get_secrets_secret_replication_user_managed.dart';

class GetSecretsSecretReplication {
  /// The Secret will automatically be replicated without any restrictions.
  /// Structure is documented below.
  final List<GetSecretsSecretReplicationAuto> autos;

  /// The Secret will be replicated to the regions specified by the user.
  /// Structure is documented below.
  final List<GetSecretsSecretReplicationUserManaged> userManageds;

  GetSecretsSecretReplication({
    required this.autos,
    required this.userManageds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['autos'] =
        Input.encodeList<GetSecretsSecretReplicationAuto, Map<String, dynamic>>(
            autos, (value) => value.toMap());
    map['userManageds'] = Input.encodeList<
        GetSecretsSecretReplicationUserManaged,
        Map<String, dynamic>>(userManageds, (value) => value.toMap());
    return map;
  }

  factory GetSecretsSecretReplication.fromMap(Map<String, dynamic> map) {
    return GetSecretsSecretReplication(
      autos: Input.decodeList<GetSecretsSecretReplicationAuto>(
          map['autos'],
          (value) => GetSecretsSecretReplicationAuto.fromMap(
              (value as Map).cast<String, dynamic>())),
      userManageds: Input.decodeList<GetSecretsSecretReplicationUserManaged>(
          map['userManageds'],
          (value) => GetSecretsSecretReplicationUserManaged.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
