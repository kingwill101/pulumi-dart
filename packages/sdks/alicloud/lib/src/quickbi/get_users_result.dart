// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_users_user.dart';

/// Result data returned by getUsers.
class GetUsersResult {
  final bool? enableDetails;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? keyword;
  final String? outputFile;
  final List<GetUsersUser> users;

  /// Creates a new [GetUsersResult].
  /// [enableDetails] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [keyword] Optional.
  /// [outputFile] Optional.
  /// [users] Required.
  GetUsersResult({
    this.enableDetails,
    required this.id,
    required this.ids,
    this.keyword,
    this.outputFile,
    required this.users,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableDetails': ?enableDetails,
      'id': id,
      'ids': ids,
      'keyword': ?keyword,
      'outputFile': ?outputFile,
      'users': pulumi.Input.encodeList<GetUsersUser, Map<String, dynamic>>(
        users,
        (value) => value.toMap(),
      ),
    };
  }

  factory GetUsersResult.fromMap(Map<String, dynamic> map) {
    return GetUsersResult(
      enableDetails: (() {
        final guardedValue = map['enableDetails'];
        if (guardedValue == null) return null;
        return guardedValue as bool;
      })(),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      keyword: (() {
        final guardedValue = map['keyword'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
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
