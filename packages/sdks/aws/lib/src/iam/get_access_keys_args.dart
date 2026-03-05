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
    required this.user,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'user': user,
    };
  }

  factory GetAccessKeysArgs.fromMap(Map<String, dynamic> map) {
    return GetAccessKeysArgs(
      user: pulumi.Input.fromValue(map['user'] as String),
    );
  }
}

