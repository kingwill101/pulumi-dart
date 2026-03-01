// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering User resources.
class UserState {
  /// The ARN assigned by AWS for this user.
  final pulumi.Input<String>? arn;
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
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// The [unique ID][1] assigned by AWS.
  final pulumi.Input<String>? uniqueId;

  /// Creates a new [UserState].
  /// [arn] The ARN assigned by AWS for this user.
  /// [forceDestroy] When destroying this user, destroy even if it
  /// [name] The user's name. The name must consist of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: `=,.@-_.`. User names are not distinguished by case. For example, you cannot create users named both "TESTUSER" and "testuser".
  /// [path] Path in which to create the user.
  /// [permissionsBoundary] The ARN of the policy that is used to set the permissions boundary for the user.
  /// [tags] Key-value mapping of tags for the IAM user. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [uniqueId] The [unique ID][1] assigned by AWS.
  UserState({
    pulumi.Output<String>? arn,
    pulumi.Output<bool>? forceDestroy,
    pulumi.Output<String>? name,
    pulumi.Output<String>? path,
    pulumi.Output<String>? permissionsBoundary,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? uniqueId,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      forceDestroy = pulumi.Input.asOptionalInput<bool>(forceDestroy),
      name = pulumi.Input.asOptionalInput<String>(name),
      path = pulumi.Input.asOptionalInput<String>(path),
      permissionsBoundary = pulumi.Input.asOptionalInput<String>(permissionsBoundary),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      uniqueId = pulumi.Input.asOptionalInput<String>(uniqueId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'forceDestroy': ?forceDestroy,
      'name': ?name,
      'path': ?path,
      'permissionsBoundary': ?permissionsBoundary,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'uniqueId': ?uniqueId,
    };
  }

  factory UserState.fromMap(Map<String, dynamic> map) {
    return UserState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      forceDestroy: map['forceDestroy'] == null ? null : pulumi.Output.create<bool>(map['forceDestroy'] as bool),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      path: map['path'] == null ? null : pulumi.Output.create<String>(map['path'] as String),
      permissionsBoundary: map['permissionsBoundary'] == null ? null : pulumi.Output.create<String>(map['permissionsBoundary'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      uniqueId: map['uniqueId'] == null ? null : pulumi.Output.create<String>(map['uniqueId'] as String),
    );
  }
}

