// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iam_get_user_get_user_args_doc}
/// Arguments for getUser.
/// {@endtemplate}
/// {@macro pulumi_iam_get_user_get_user_args_doc}
class GetUserArgs {
  /// Map of key-value pairs associated with the user.
  final pulumi.Input<Map<String, String>>? tags;
  /// Friendly IAM user name to match.
  final pulumi.Input<String> userName;

  /// Creates a new [GetUserArgs].
  /// [tags] Map of key-value pairs associated with the user.
  /// [userName] Friendly IAM user name to match.
  GetUserArgs({
    this.tags,
    required this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tags': ?tags,
      'userName': userName,
    };
  }

  factory GetUserArgs.fromMap(Map<String, dynamic> map) {
    return GetUserArgs(
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      userName: pulumi.Input.fromValue(map['userName'] as String),
    );
  }
}

