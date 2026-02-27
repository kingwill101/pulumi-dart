// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for User.
class UserArgs5 {
  /// When destroying this user, destroy even if it
  /// has non-provider-managed IAM access keys, login profile or MFA devices. Without `force_destroy`
  /// a user with non-provider-managed access keys and login profile will fail to be destroyed.
  final Input<bool>? forceDestroy;

  /// The user's name. The name must consist of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: `=,.@-_.`. User names are not distinguished by case. For example, you cannot create users named both "TESTUSER" and "testuser".
  final Input<String>? name;

  /// Path in which to create the user.
  final Input<String>? path;

  /// The ARN of the policy that is used to set the permissions boundary for the user.
  final Input<String>? permissionsBoundary;

  /// Key-value mapping of tags for the IAM user. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  UserArgs5({
    this.forceDestroy,
    this.name,
    this.path,
    this.permissionsBoundary,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final forceDestroyValue = forceDestroy;
    if (forceDestroyValue != null) {
      map['forceDestroy'] = forceDestroyValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final pathValue = path;
    if (pathValue != null) {
      map['path'] = pathValue;
    }
    final permissionsBoundaryValue = permissionsBoundary;
    if (permissionsBoundaryValue != null) {
      map['permissionsBoundary'] = permissionsBoundaryValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory UserArgs5.fromMap(Map<String, dynamic> map) {
    return UserArgs5(
      forceDestroy: Input.asOptionalInput<bool>(map['forceDestroy']),
      name: Input.asOptionalInput<String>(map['name']),
      path: Input.asOptionalInput<String>(map['path']),
      permissionsBoundary:
          Input.asOptionalInput<String>(map['permissionsBoundary']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
