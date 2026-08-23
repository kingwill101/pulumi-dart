// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_users_user.dart';

/// Result data returned by getUsers.
class GetUsersResult {
  final String identityStoreId;
  /// Region of the address.
  final String region;
  /// List of Identity Store Users
  final List<GetUsersUser> users;

  /// Creates a new [GetUsersResult].
  /// [identityStoreId] Required.
  /// [region] Region of the address.
  /// [users] List of Identity Store Users
  const GetUsersResult({
    required this.identityStoreId,
    required this.region,
    required this.users,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityStoreId': identityStoreId,
      'region': region,
      'users': pulumi.Input.encodeList<GetUsersUser, Map<String, dynamic>>(users, (value) => value.toMap()),
    };
  }

  factory GetUsersResult.fromMap(Map<String, dynamic> map) {
    return GetUsersResult(
      identityStoreId: map['identityStoreId'] as String,
      region: map['region'] as String,
      users: pulumi.Input.decodeList<GetUsersUser>(map['users']!, (value) => GetUsersUser.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
