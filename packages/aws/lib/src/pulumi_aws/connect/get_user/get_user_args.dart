// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getUser.
class GetUserArgs {
  /// Reference to the hosting Amazon Connect Instance
  final Input<String> instanceId;

  /// Returns information on a specific User by name
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// A map of tags to assign to the User.
  final Input<Map<String, String>>? tags;

  /// Returns information on a specific User by User id
  ///
  /// > **NOTE:** <span pulumi-lang-nodejs="`instanceId`" pulumi-lang-dotnet="`InstanceId`" pulumi-lang-go="`instanceId`" pulumi-lang-python="`instance_id`" pulumi-lang-yaml="`instanceId`" pulumi-lang-java="`instanceId`">`instance_id`</span> and one of either <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span> or <span pulumi-lang-nodejs="`userId`" pulumi-lang-dotnet="`UserId`" pulumi-lang-go="`userId`" pulumi-lang-python="`user_id`" pulumi-lang-yaml="`userId`" pulumi-lang-java="`userId`">`user_id`</span> is required.
  final Input<String>? userId;

  GetUserArgs({
    required this.instanceId,
    this.name,
    this.region,
    this.tags,
    this.userId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['instanceId'] = instanceId;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final userIdValue = userId;
    if (userIdValue != null) {
      map['userId'] = userIdValue;
    }
    return map;
  }

  factory GetUserArgs.fromMap(Map<String, dynamic> map) {
    return GetUserArgs(
      instanceId: Input.asInput<String>(map['instanceId']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      userId: Input.asOptionalInput<String>(map['userId']),
    );
  }
}
