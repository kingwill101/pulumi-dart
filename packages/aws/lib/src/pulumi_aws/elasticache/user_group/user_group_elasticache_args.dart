// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for UserGroup.
class UserGroupElasticacheArgs {
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

  UserGroupElasticacheArgs({
    required this.engine,
    this.region,
    this.tags,
    required this.userGroupId,
    this.userIds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['engine'] = engine;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    map['userGroupId'] = userGroupId;
    final userIdsValue = userIds;
    if (userIdsValue != null) {
      map['userIds'] = userIdsValue;
    }
    return map;
  }

  factory UserGroupElasticacheArgs.fromMap(Map<String, dynamic> map) {
    return UserGroupElasticacheArgs(
      engine: pulumi.Input.asInput<String>(map['engine']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      userGroupId: pulumi.Input.asInput<String>(map['userGroupId']),
      userIds: pulumi.Input.asOptionalInput<List<String>>(map['userIds']),
    );
  }
}
