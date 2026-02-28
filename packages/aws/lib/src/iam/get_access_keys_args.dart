// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iam_get_access_keys_get_access_keys_args_doc}
/// Arguments for getAccessKeys.
/// {@endtemplate}
/// {@macro pulumi_iam_get_access_keys_get_access_keys_args_doc}
class GetAccessKeysArgs {
  /// Name of the IAM user associated with the access keys.
  final pulumi.Input<String> user;

  /// Creates a new [GetAccessKeysArgs].
  /// [user] Name of the IAM user associated with the access keys.
  GetAccessKeysArgs({
    required String user,
  }) : user = pulumi.Input.asInput<String>(user);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['user'] = user;
    return map;
  }

  factory GetAccessKeysArgs.fromMap(Map<String, dynamic> map) {
    return GetAccessKeysArgs(
      user: map['user'] as String,
    );
  }
}
