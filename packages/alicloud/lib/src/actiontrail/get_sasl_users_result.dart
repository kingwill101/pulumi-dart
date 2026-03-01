// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_sasl_users_user.dart';

/// Result data returned by getSaslUsers.
class GetSaslUsersResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String instanceId;
  final String? nameRegex;
  /// A list of Sasl User names.
  final List<String> names;
  final String? outputFile;
  /// A list of Sasl Users. Each element contains the following attributes:
  final List<GetSaslUsersUser> users;

  /// Creates a new [GetSaslUsersResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [instanceId] Required.
  /// [nameRegex] Optional.
  /// [names] A list of Sasl User names.
  /// [outputFile] Optional.
  /// [users] A list of Sasl Users. Each element contains the following attributes:
  GetSaslUsersResult({
    required this.id,
    required this.ids,
    required this.instanceId,
    this.nameRegex,
    required this.names,
    this.outputFile,
    required this.users,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ids': ids,
      'instanceId': instanceId,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'users': pulumi.Input.encodeList<GetSaslUsersUser, Map<String, dynamic>>(users, (value) => value.toMap()),
    };
  }

  factory GetSaslUsersResult.fromMap(Map<String, dynamic> map) {
    return GetSaslUsersResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      instanceId: map['instanceId'] as String,
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      users: pulumi.Input.decodeList<GetSaslUsersUser>(map['users'], (value) => GetSaslUsersUser.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

