// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_users_user.dart';

/// Result data returned by getUsers.
class GetUsersResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String identityStoreId;

  /// Region of the address.
  final String region;

  /// List of Identity Store Users
  final List<GetUsersUser> users;

  /// Creates a new [GetUsersResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [identityStoreId] Required.
  /// [region] Region of the address.
  /// [users] List of Identity Store Users
  GetUsersResult({
    required this.id,
    required this.identityStoreId,
    required this.region,
    required this.users,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['identityStoreId'] = identityStoreId;
    map['region'] = region;
    map['users'] = pulumi.Input.encodeList<GetUsersUser, Map<String, dynamic>>(
        users, (value) => value.toMap());
    return map;
  }

  factory GetUsersResult.fromMap(Map<String, dynamic> map) {
    return GetUsersResult(
      id: map['id'] as String,
      identityStoreId: map['identityStoreId'] as String,
      region: map['region'] as String,
      users: pulumi.Input.decodeList<GetUsersUser>(
          map['users'],
          (value) =>
              GetUsersUser.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
