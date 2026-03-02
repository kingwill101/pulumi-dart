// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iam_user_user_args_doc}
/// The set of arguments for User.
/// {@endtemplate}
/// {@macro pulumi_iam_user_user_args_doc}
class UserArgs {
  /// When destroying this user, destroy even if it
  /// has non-provider-managed IAM access keys, login profile or MFA devices. Without `force_destroy`
  /// a user with non-provider-managed access keys and login profile will fail to be destroyed.
  final pulumi.Input<bool>? forceDestroy;
  /// The user's name. The name must consist of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: `=,.@-_.`. User names are not distinguished by case. For example, you cannot create users named both "TESTUSER" and "testuser".
  final pulumi.Input<String>? name;
  /// Path in which to create the user.
  final pulumi.Input<String>? path;
  /// The ARN of the policy that is used to set the permissions boundary for the user.
  final pulumi.Input<String>? permissionsBoundary;
  /// Key-value mapping of tags for the IAM user. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [UserArgs].
  /// [forceDestroy] When destroying this user, destroy even if it
  /// [name] The user's name. The name must consist of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: `=,.@-_.`. User names are not distinguished by case. For example, you cannot create users named both "TESTUSER" and "testuser".
  /// [path] Path in which to create the user.
  /// [permissionsBoundary] The ARN of the policy that is used to set the permissions boundary for the user.
  /// [tags] Key-value mapping of tags for the IAM user. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  UserArgs({
    this.forceDestroy,
    this.name,
    this.path,
    this.permissionsBoundary,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'forceDestroy': ?forceDestroy,
      'name': ?name,
      'path': ?path,
      'permissionsBoundary': ?permissionsBoundary,
      'tags': ?tags,
    };
  }

  factory UserArgs.fromMap(Map<String, dynamic> map) {
    return UserArgs(
      forceDestroy: map['forceDestroy'] == null ? null : ((map['forceDestroy'] as bool).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      path: map['path'] == null ? null : ((map['path'] as String).input()).input(),
      permissionsBoundary: map['permissionsBoundary'] == null ? null : ((map['permissionsBoundary'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
    );
  }
}

