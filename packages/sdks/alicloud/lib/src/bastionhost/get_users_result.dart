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
  const GetUsersResult({
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
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      instanceId: map['instanceId'] as String,
      mobile: (() { final guardedValue = map['mobile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return guardedValue as String; })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sourceUserId: (() { final guardedValue = map['sourceUserId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      userName: (() { final guardedValue = map['userName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      users: pulumi.Input.decodeList<GetUsersUser>(map['users']!, (value) => GetUsersUser.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

