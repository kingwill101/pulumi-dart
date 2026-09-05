// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering InstanceProfile resources.
class InstanceProfileState {
  /// ARN assigned by AWS to the instance profile.
  final pulumi.Input<String?>? arn;
  /// Creation timestamp of the instance profile.
  final pulumi.Input<String?>? createDate;
  /// Name of the instance profile. If omitted, this provider will assign a random, unique name. Conflicts with `namePrefix`. Can be a string of characters consisting of upper and lowercase alphanumeric characters and these special characters: `_`, `+`, `=`, `,`, `.`, `@`, `-`. Spaces are not allowed. The `name` must be unique, regardless of the `path` or `role`. In other words, if there are different `role` or `path` values but the same `name` as an existing instance profile, it will still cause an `EntityAlreadyExists` error.
  final pulumi.Input<String?>? name;
  /// Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  final pulumi.Input<String?>? namePrefix;
  /// Path to the instance profile. For more information about paths, see [IAM Identifiers](https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html) in the IAM User Guide. Can be a string of characters consisting of either a forward slash (`/`) by itself or a string that must begin and end with forward slashes. Can include any ASCII character from the ! (\u0021) through the DEL character (\u007F), including most punctuation characters, digits, and upper and lowercase letters.
  final pulumi.Input<String?>? path;
  /// Name of the role to add to the profile.
  final pulumi.Input<dynamic>? role;
  /// Map of resource tags for the IAM Instance Profile. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;
  /// [Unique ID](https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html#GUIDs) assigned by AWS.
  final pulumi.Input<String?>? uniqueId;

  /// Creates a new [InstanceProfileState].
  /// [arn] ARN assigned by AWS to the instance profile.
  /// [createDate] Creation timestamp of the instance profile.
  /// [name] Name of the instance profile. If omitted, this provider will assign a random, unique name. Conflicts with `namePrefix`. Can be a string of characters consisting of upper and lowercase alphanumeric characters and these special characters: `_`, `+`, `=`, `,`, `.`, `@`, `-`. Spaces are not allowed. The `name` must be unique, regardless of the `path` or `role`. In other words, if there are different `role` or `path` values but the same `name` as an existing instance profile, it will still cause an `EntityAlreadyExists` error.
  /// [namePrefix] Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  /// [path] Path to the instance profile. For more information about paths, see [IAM Identifiers](https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html) in the IAM User Guide. Can be a string of characters consisting of either a forward slash (`/`) by itself or a string that must begin and end with forward slashes. Can include any ASCII character from the ! (\u0021) through the DEL character (\u007F), including most punctuation characters, digits, and upper and lowercase letters.
  /// [role] Name of the role to add to the profile.
  /// [tags] Map of resource tags for the IAM Instance Profile. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [uniqueId] [Unique ID](https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html#GUIDs) assigned by AWS.
  const InstanceProfileState({
    this.arn,
    this.createDate,
    this.name,
    this.namePrefix,
    this.path,
    this.role,
    this.tags,
    this.tagsAll,
    this.uniqueId,
  });

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
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createDate: (() { final guardedValue = map['createDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      namePrefix: (() { final guardedValue = map['namePrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      role: (() { final guardedValue = map['role']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      uniqueId: (() { final guardedValue = map['uniqueId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
