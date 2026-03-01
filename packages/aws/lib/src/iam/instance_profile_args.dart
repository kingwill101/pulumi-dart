// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iam_instance_profile_instance_profile_args_doc}
/// The set of arguments for InstanceProfile.
/// {@endtemplate}
/// {@macro pulumi_iam_instance_profile_instance_profile_args_doc}
class InstanceProfileArgs {
  /// Name of the instance profile. If omitted, this provider will assign a random, unique name. Conflicts with `name_prefix`. Can be a string of characters consisting of upper and lowercase alphanumeric characters and these special characters: `_`, `+`, `=`, `,`, `.`, `@`, `-`. Spaces are not allowed. The `name` must be unique, regardless of the `path` or `role`. In other words, if there are different `role` or `path` values but the same `name` as an existing instance profile, it will still cause an `EntityAlreadyExists` error.
  final pulumi.Input<String>? name;

  /// Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  final pulumi.Input<String>? namePrefix;

  /// Path to the instance profile. For more information about paths, see [IAM Identifiers](https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html) in the IAM User Guide. Can be a string of characters consisting of either a forward slash (`/`) by itself or a string that must begin and end with forward slashes. Can include any ASCII character from the ! (\u0021) through the DEL character (\u007F), including most punctuation characters, digits, and upper and lowercase letters.
  final pulumi.Input<String>? path;

  /// Name of the role to add to the profile.
  final pulumi.Input<String>? role;

  /// Map of resource tags for the IAM Instance Profile. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [InstanceProfileArgs].
  /// [name] Name of the instance profile. If omitted, this provider will assign a random, unique name. Conflicts with `name_prefix`. Can be a string of characters consisting of upper and lowercase alphanumeric characters and these special characters: `_`, `+`, `=`, `,`, `.`, `@`, `-`. Spaces are not allowed. The `name` must be unique, regardless of the `path` or `role`. In other words, if there are different `role` or `path` values but the same `name` as an existing instance profile, it will still cause an `EntityAlreadyExists` error.
  /// [namePrefix] Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  /// [path] Path to the instance profile. For more information about paths, see [IAM Identifiers](https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html) in the IAM User Guide. Can be a string of characters consisting of either a forward slash (`/`) by itself or a string that must begin and end with forward slashes. Can include any ASCII character from the ! (\u0021) through the DEL character (\u007F), including most punctuation characters, digits, and upper and lowercase letters.
  /// [role] Name of the role to add to the profile.
  /// [tags] Map of resource tags for the IAM Instance Profile. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  InstanceProfileArgs({
    String? name,
    String? namePrefix,
    String? path,
    String? role,
    Map<String, String>? tags,
  }) : name = pulumi.Input.asOptionalInput<String>(name),
       namePrefix = pulumi.Input.asOptionalInput<String>(namePrefix),
       path = pulumi.Input.asOptionalInput<String>(path),
       role = pulumi.Input.asOptionalInput<String>(role),
       tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'namePrefix': ?namePrefix,
      'path': ?path,
      'role': ?role,
      'tags': ?tags,
    };
  }

  factory InstanceProfileArgs.fromMap(Map<String, dynamic> map) {
    return InstanceProfileArgs(
      name: map['name'] == null ? null : map['name'] as String,
      namePrefix: map['namePrefix'] == null
          ? null
          : map['namePrefix'] as String,
      path: map['path'] == null ? null : map['path'] as String,
      role: map['role'] == null ? null : map['role'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
