// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_users_user.dart';

/// Result data returned by getUsers.
class GetUsersResult {
  final String? groupName;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of ram user IDs.
  final List<String> ids;
  final String? nameRegex;
  /// A list of ram user's name.
  final List<String> names;
  final String? outputFile;
  final String? policyName;
  final String? policyType;
  /// A list of users. Each element contains the following attributes:
  final List<GetUsersUser> users;

  /// Creates a new [GetUsersResult].
  /// [groupName] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of ram user IDs.
  /// [nameRegex] Optional.
  /// [names] A list of ram user's name.
  /// [outputFile] Optional.
  /// [policyName] Optional.
  /// [policyType] Optional.
  /// [users] A list of users. Each element contains the following attributes:
  GetUsersResult({
    this.groupName,
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.policyName,
    this.policyType,
    required this.users,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupName': ?groupName,
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'policyName': ?policyName,
      'policyType': ?policyType,
      'users': pulumi.Input.encodeList<GetUsersUser, Map<String, dynamic>>(users, (value) => value.toMap()),
    };
  }

  factory GetUsersResult.fromMap(Map<String, dynamic> map) {
    return GetUsersResult(
      groupName: map['groupName'] == null ? null : map['groupName'] as String,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      policyName: map['policyName'] == null ? null : map['policyName'] as String,
      policyType: map['policyType'] == null ? null : map['policyType'] as String,
      users: pulumi.Input.decodeList<GetUsersUser>(map['users'], (value) => GetUsersUser.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

