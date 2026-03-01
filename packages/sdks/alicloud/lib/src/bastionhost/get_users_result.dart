// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_users_user.dart';

/// Result data returned by getUsers.
class GetUsersResult {
  final String? displayName;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String instanceId;
  final String? mobile;
  final String? nameRegex;
  final List<String> names;
  final String? outputFile;
  final String? source;
  final String? sourceUserId;
  final String? status;
  final String? userName;
  final List<GetUsersUser> users;

  /// Creates a new [GetUsersResult].
  /// [displayName] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [instanceId] Required.
  /// [mobile] Optional.
  /// [nameRegex] Optional.
  /// [names] Required.
  /// [outputFile] Optional.
  /// [source] Optional.
  /// [sourceUserId] Optional.
  /// [status] Optional.
  /// [userName] Optional.
  /// [users] Required.
  GetUsersResult({
    this.displayName,
    required this.id,
    required this.ids,
    required this.instanceId,
    this.mobile,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.source,
    this.sourceUserId,
    this.status,
    this.userName,
    required this.users,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'id': id,
      'ids': ids,
      'instanceId': instanceId,
      'mobile': ?mobile,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'source': ?source,
      'sourceUserId': ?sourceUserId,
      'status': ?status,
      'userName': ?userName,
      'users': pulumi.Input.encodeList<GetUsersUser, Map<String, dynamic>>(users, (value) => value.toMap()),
    };
  }

  factory GetUsersResult.fromMap(Map<String, dynamic> map) {
    return GetUsersResult(
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      instanceId: map['instanceId'] as String,
      mobile: map['mobile'] == null ? null : map['mobile'] as String,
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      source: map['source'] == null ? null : map['source'] as String,
      sourceUserId: map['sourceUserId'] == null ? null : map['sourceUserId'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      userName: map['userName'] == null ? null : map['userName'] as String,
      users: pulumi.Input.decodeList<GetUsersUser>(map['users'], (value) => GetUsersUser.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

