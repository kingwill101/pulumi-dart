// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering InstanceProfile resources.
class InstanceProfileState {
  /// ARN assigned by AWS to the instance profile.
  final pulumi.Input<String>? arn;
  /// Creation timestamp of the instance profile.
  final pulumi.Input<String>? createDate;
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
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// [Unique ID][1] assigned by AWS.
  final pulumi.Input<String>? uniqueId;

  /// Creates a new [InstanceProfileState].
  /// [arn] ARN assigned by AWS to the instance profile.
  /// [createDate] Creation timestamp of the instance profile.
  /// [name] Name of the instance profile. If omitted, this provider will assign a random, unique name. Conflicts with `name_prefix`. Can be a string of characters consisting of upper and lowercase alphanumeric characters and these special characters: `_`, `+`, `=`, `,`, `.`, `@`, `-`. Spaces are not allowed. The `name` must be unique, regardless of the `path` or `role`. In other words, if there are different `role` or `path` values but the same `name` as an existing instance profile, it will still cause an `EntityAlreadyExists` error.
  /// [namePrefix] Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  /// [path] Path to the instance profile. For more information about paths, see [IAM Identifiers](https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html) in the IAM User Guide. Can be a string of characters consisting of either a forward slash (`/`) by itself or a string that must begin and end with forward slashes. Can include any ASCII character from the ! (\u0021) through the DEL character (\u007F), including most punctuation characters, digits, and upper and lowercase letters.
  /// [role] Name of the role to add to the profile.
  /// [tags] Map of resource tags for the IAM Instance Profile. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [uniqueId] [Unique ID][1] assigned by AWS.
  InstanceProfileState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? createDate,
    pulumi.Output<String>? name,
    pulumi.Output<String>? namePrefix,
    pulumi.Output<String>? path,
    pulumi.Output<String>? role,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? uniqueId,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      createDate = pulumi.Input.asOptionalInput<String>(createDate),
      name = pulumi.Input.asOptionalInput<String>(name),
      namePrefix = pulumi.Input.asOptionalInput<String>(namePrefix),
      path = pulumi.Input.asOptionalInput<String>(path),
      role = pulumi.Input.asOptionalInput<String>(role),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      uniqueId = pulumi.Input.asOptionalInput<String>(uniqueId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'createDate': ?createDate,
      'name': ?name,
      'namePrefix': ?namePrefix,
      'path': ?path,
      'role': ?role,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'uniqueId': ?uniqueId,
    };
  }

  factory InstanceProfileState.fromMap(Map<String, dynamic> map) {
    return InstanceProfileState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      createDate: map['createDate'] == null ? null : pulumi.Output.create<String>(map['createDate'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      namePrefix: map['namePrefix'] == null ? null : pulumi.Output.create<String>(map['namePrefix'] as String),
      path: map['path'] == null ? null : pulumi.Output.create<String>(map['path'] as String),
      role: map['role'] == null ? null : pulumi.Output.create<String>(map['role'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      uniqueId: map['uniqueId'] == null ? null : pulumi.Output.create<String>(map['uniqueId'] as String),
    );
  }
}

