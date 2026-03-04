// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering UserGroup resources.
class UserGroupState {
  /// The ARN that identifies the user group.
  final pulumi.Input<String>? arn;

  /// The current supported value are `redis`, `valkey` (case insensitive).
  final pulumi.Input<String>? engine;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// The ID of the user group.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? userGroupId;

  /// The list of user IDs that belong to the user group.
  final pulumi.Input<List<String>>? userIds;

  /// Creates a new [UserGroupState].
  /// [arn] The ARN that identifies the user group.
  /// [engine] The current supported value are `redis`, `valkey` (case insensitive).
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [userGroupId] The ID of the user group.
  /// [userIds] The list of user IDs that belong to the user group.
  UserGroupState({
    this.arn,
    this.engine,
    this.region,
    this.tags,
    this.tagsAll,
    this.userGroupId,
    this.userIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'engine': ?engine,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'userGroupId': ?userGroupId,
      'userIds': ?userIds,
    };
  }

  factory UserGroupState.fromMap(Map<String, dynamic> map) {
    return UserGroupState(
      arn: (() {
        final guardedValue = map['arn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      engine: (() {
        final guardedValue = map['engine'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      tagsAll: (() {
        final guardedValue = map['tagsAll'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      userGroupId: (() {
        final guardedValue = map['userGroupId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      userIds: (() {
        final guardedValue = map['userIds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
