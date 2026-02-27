// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getInstance.
class GetInstanceArgs {
  /// Returns information on a specific connect instance by alias
  ///
  /// > **NOTE:** One of either `instance_id` or `instance_alias` is required.
  final pulumi.Input<String>? instanceAlias;

  /// Returns information on a specific connect instance by id
  final pulumi.Input<String>? instanceId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// A map of tags to assigned to the instance.
  final pulumi.Input<Map<String, String>>? tags;

  GetInstanceArgs({
    this.instanceAlias,
    this.instanceId,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final instanceAliasValue = instanceAlias;
    if (instanceAliasValue != null) {
      map['instanceAlias'] = instanceAliasValue;
    }
    final instanceIdValue = instanceId;
    if (instanceIdValue != null) {
      map['instanceId'] = instanceIdValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory GetInstanceArgs.fromMap(Map<String, dynamic> map) {
    return GetInstanceArgs(
      instanceAlias: pulumi.Input.asOptionalInput<String>(map['instanceAlias']),
      instanceId: pulumi.Input.asOptionalInput<String>(map['instanceId']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
