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
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      engine: map['engine'] == null ? null : (map['engine'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
      userGroupId: map['userGroupId'] == null ? null : (map['userGroupId'] as String).input(),
      userIds: map['userIds'] == null ? null : ((map['userIds'] as List).cast<String>()).input(),
    );
  }
}

