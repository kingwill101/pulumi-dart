// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_elasticache_user_group_user_group_args_doc}
/// The set of arguments for UserGroup.
/// {@endtemplate}
/// {@macro pulumi_elasticache_user_group_user_group_args_doc}
class UserGroupArgs {
  /// The current supported value are `redis`, `valkey` (case insensitive).
  final pulumi.Input<String> engine;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// The ID of the user group.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> userGroupId;
  /// The list of user IDs that belong to the user group.
  final pulumi.Input<List<String>>? userIds;

  /// Creates a new [UserGroupArgs].
  /// [engine] The current supported value are `redis`, `valkey` (case insensitive).
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [userGroupId] The ID of the user group.
  /// [userIds] The list of user IDs that belong to the user group.
  UserGroupArgs({
    required this.engine,
    this.region,
    this.tags,
    required this.userGroupId,
    this.userIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'engine': engine,
      'region': ?region,
      'tags': ?tags,
      'userGroupId': userGroupId,
      'userIds': ?userIds,
    };
  }

  factory UserGroupArgs.fromMap(Map<String, dynamic> map) {
    return UserGroupArgs(
      engine: (map['engine'] as String).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      userGroupId: (map['userGroupId'] as String).input(),
      userIds: map['userIds'] == null ? null : (((map['userIds'] as List).cast<String>()).input()).input(),
    );
  }
}

