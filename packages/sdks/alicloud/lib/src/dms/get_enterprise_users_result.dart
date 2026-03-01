// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_enterprise_users_user.dart';

/// Result data returned by getEnterpriseUsers.
class GetEnterpriseUsersResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of DMS Enterprise User IDs (UID).
  final List<String> ids;
  final String? nameRegex;
  /// A list of DMS Enterprise User names.
  final List<String> names;
  final String? outputFile;
  final String? role;
  final String? searchKey;
  /// The status of the user.
  final String? status;
  final int? tid;
  /// A list of DMS Enterprise Users. Each element contains the following attributes:
  final List<GetEnterpriseUsersUser> users;

  /// Creates a new [GetEnterpriseUsersResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of DMS Enterprise User IDs (UID).
  /// [nameRegex] Optional.
  /// [names] A list of DMS Enterprise User names.
  /// [outputFile] Optional.
  /// [role] Optional.
  /// [searchKey] Optional.
  /// [status] The status of the user.
  /// [tid] Optional.
  /// [users] A list of DMS Enterprise Users. Each element contains the following attributes:
  GetEnterpriseUsersResult({
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.role,
    this.searchKey,
    this.status,
    this.tid,
    required this.users,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'role': ?role,
      'searchKey': ?searchKey,
      'status': ?status,
      'tid': ?tid,
      'users': pulumi.Input.encodeList<GetEnterpriseUsersUser, Map<String, dynamic>>(users, (value) => value.toMap()),
    };
  }

  factory GetEnterpriseUsersResult.fromMap(Map<String, dynamic> map) {
    return GetEnterpriseUsersResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      role: map['role'] == null ? null : map['role'] as String,
      searchKey: map['searchKey'] == null ? null : map['searchKey'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      tid: map['tid'] == null ? null : map['tid'] as int,
      users: pulumi.Input.decodeList<GetEnterpriseUsersUser>(map['users'], (value) => GetEnterpriseUsersUser.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

