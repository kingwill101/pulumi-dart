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
    Map<String, String>? tags,
    required String userName,
  }) :
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      userName = pulumi.Input.asInput<String>(userName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tags': ?tags,
      'userName': userName,
    };
  }

  factory GetUserArgs.fromMap(Map<String, dynamic> map) {
    return GetUserArgs(
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      userName: map['userName'] as String,
    );
  }
}

