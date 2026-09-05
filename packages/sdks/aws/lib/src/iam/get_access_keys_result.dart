// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_access_keys_access_key.dart';

/// Result data returned by getAccessKeys.
class GetAccessKeysResult {
  /// List of the IAM access keys associated with the specified user. See below.
  final List<GetAccessKeysAccessKey>? accessKeys;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? user;

  /// Creates a new [GetAccessKeysResult].
  /// [accessKeys] List of the IAM access keys associated with the specified user. See below.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [user] Optional.
  const GetAccessKeysResult({
    this.accessKeys,
    this.id,
    this.user,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessKeys': ?(() { final guardedValue = accessKeys; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAccessKeysAccessKey, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'user': ?user,
    };
  }

  factory GetAccessKeysResult.fromMap(Map<String, dynamic> map) {
    return GetAccessKeysResult(
      accessKeys: (() { final guardedValue = map['accessKeys']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAccessKeysAccessKey>(guardedValue, (value) => GetAccessKeysAccessKey.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      user: (() { final guardedValue = map['user']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
