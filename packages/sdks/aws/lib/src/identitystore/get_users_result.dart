// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_users_user.dart';

/// Result data returned by getUsers.
class GetUsersResult {
  final String? identityStoreId;
  /// Region of the address.
  final String? region;
  /// List of Identity Store Users
  final List<GetUsersUser>? users;

  /// Creates a new [GetUsersResult].
  /// [identityStoreId] Optional.
  /// [region] Region of the address.
  /// [users] List of Identity Store Users
  const GetUsersResult({
    this.identityStoreId,
    this.region,
    this.users,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityStoreId': ?identityStoreId,
      'region': ?region,
      'users': ?(() { final guardedValue = users; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetUsersUser, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetUsersResult.fromMap(Map<String, dynamic> map) {
    return GetUsersResult(
      identityStoreId: (() { final guardedValue = map['identityStoreId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      users: (() { final guardedValue = map['users']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetUsersUser>(guardedValue, (value) => GetUsersUser.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
