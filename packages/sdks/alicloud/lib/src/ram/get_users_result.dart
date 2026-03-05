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
      groupName: (() { final guardedValue = map['groupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return guardedValue as String; })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      policyName: (() { final guardedValue = map['policyName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      policyType: (() { final guardedValue = map['policyType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      users: pulumi.Input.decodeList<GetUsersUser>(map['users']!, (value) => GetUsersUser.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

