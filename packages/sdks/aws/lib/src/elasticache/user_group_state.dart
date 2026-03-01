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
    pulumi.Output<String>? arn,
    pulumi.Output<String>? engine,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? userGroupId,
    pulumi.Output<List<String>>? userIds,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      engine = pulumi.Input.asOptionalInput<String>(engine),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      userGroupId = pulumi.Input.asOptionalInput<String>(userGroupId),
      userIds = pulumi.Input.asOptionalInput<List<String>>(userIds);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      engine: map['engine'] == null ? null : pulumi.Output.create<String>(map['engine'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      userGroupId: map['userGroupId'] == null ? null : pulumi.Output.create<String>(map['userGroupId'] as String),
      userIds: map['userIds'] == null ? null : pulumi.Output.create<List<String>>((map['userIds'] as List).cast<String>()),
    );
  }
}

