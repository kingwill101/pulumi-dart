// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_access_keys_access_key.dart';

/// Result data returned by getAccessKeys.
class GetAccessKeysResult {
  /// List of the IAM access keys associated with the specified user. See below.
  final List<GetAccessKeysAccessKey> accessKeys;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String user;

  /// Creates a new [GetAccessKeysResult].
  /// [accessKeys] List of the IAM access keys associated with the specified user. See below.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [user] Required.
  const GetAccessKeysResult({
    required this.accessKeys,
    required this.id,
    required this.user,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessKeys': pulumi.Input.encodeList<GetAccessKeysAccessKey, Map<String, dynamic>>(accessKeys, (value) => value.toMap()),
      'id': id,
      'user': user,
    };
  }

  factory GetAccessKeysResult.fromMap(Map<String, dynamic> map) {
    return GetAccessKeysResult(
      accessKeys: pulumi.Input.decodeList<GetAccessKeysAccessKey>(map['accessKeys']!, (value) => GetAccessKeysAccessKey.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      user: map['user'] as String,
    );
  }
}

