// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for UserGroup.
class UserGroupArgs2 {
  /// The current supported value are <span pulumi-lang-nodejs="`redis`" pulumi-lang-dotnet="`Redis`" pulumi-lang-go="`redis`" pulumi-lang-python="`redis`" pulumi-lang-yaml="`redis`" pulumi-lang-java="`redis`">`redis`</span>, <span pulumi-lang-nodejs="`valkey`" pulumi-lang-dotnet="`Valkey`" pulumi-lang-go="`valkey`" pulumi-lang-python="`valkey`" pulumi-lang-yaml="`valkey`" pulumi-lang-java="`valkey`">`valkey`</span> (case insensitive).
  final Input<String> engine;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Key-value map of resource tags. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// The ID of the user group.
  ///
  /// The following arguments are optional:
  final Input<String> userGroupId;

  /// The list of user IDs that belong to the user group.
  final Input<List<String>>? userIds;

  UserGroupArgs2({
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

  factory UserGroupArgs2.fromMap(Map<String, dynamic> map) {
    return UserGroupArgs2(
      engine: Input.asInput<String>(map['engine']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      userGroupId: Input.asInput<String>(map['userGroupId']),
      userIds: Input.asOptionalInput<List<String>>(map['userIds']),
    );
  }
}
