// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iam_user_user_args_doc}
/// The set of arguments for User.
/// {@endtemplate}
/// {@macro pulumi_iam_user_user_args_doc}
class UserArgs {
  /// When destroying this user, destroy even if it
  /// has non-provider-managed IAM access keys, login profile or MFA devices. Without `forceDestroy`
  /// a user with non-provider-managed access keys and login profile will fail to be destroyed. This only deletes objects when the user is destroyed, not when setting this parameter to true. Once this parameter is set to true, there must be a successful pulumi up run before a destroy is required to update this value in the resource state. Without a successful pulumi up after this parameter is set, this flag will have no effect. If setting this field in the same operation that would require replacing the user or destroying the user, this flag will not work. Additionally when importing a user, a successful pulumi up is required to set this value in state before it will take effect on a destroy operation.
  final pulumi.Input<bool>? forceDestroy;
  /// The user's name. The name must consist of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: `=,.@-_.`. User names are not distinguished by case. For example, you cannot create users named both "TESTUSER" and "testuser".
  final pulumi.Input<String>? name;
  /// Path in which to create the user.
  final pulumi.Input<String>? path;
  /// The ARN of the policy that is used to set the permissions boundary for the user.
  final pulumi.Input<String>? permissionsBoundary;
  /// Key-value mapping of tags for the IAM user. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [UserArgs].
  /// [forceDestroy] When destroying this user, destroy even if it
  /// [name] The user's name. The name must consist of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: `=,.@-_.`. User names are not distinguished by case. For example, you cannot create users named both "TESTUSER" and "testuser".
  /// [path] Path in which to create the user.
  /// [permissionsBoundary] The ARN of the policy that is used to set the permissions boundary for the user.
  /// [tags] Key-value mapping of tags for the IAM user. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  const UserArgs({
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
      forceDestroy: (() { final guardedValue = map['forceDestroy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      permissionsBoundary: (() { final guardedValue = map['permissionsBoundary']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
