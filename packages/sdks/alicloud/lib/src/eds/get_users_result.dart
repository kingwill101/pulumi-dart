// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_users_user.dart';

/// Result data returned by getUsers.
class GetUsersResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? outputFile;
  final String? status;
  final List<GetUsersUser> users;

  /// Creates a new [GetUsersResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [outputFile] Optional.
  /// [status] Optional.
  /// [users] Required.
  GetUsersResult({
    required this.id,
    required this.ids,
    this.outputFile,
    this.status,
    required this.users,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ids': ids,
      'outputFile': ?outputFile,
      'status': ?status,
      'users': pulumi.Input.encodeList<GetUsersUser, Map<String, dynamic>>(
        users,
        (value) => value.toMap(),
      ),
    };
  }

  factory GetUsersResult.fromMap(Map<String, dynamic> map) {
    return GetUsersResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      users: pulumi.Input.decodeList<GetUsersUser>(
        map['users']!,
        (value) => GetUsersUser.fromMap((value as Map).cast<String, dynamic>()),
      ),
    );
  }
}
