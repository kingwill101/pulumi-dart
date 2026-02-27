// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getInstance.
class GetInstanceArgs {
  /// Returns information on a specific connect instance by alias
  ///
  /// > **NOTE:** One of either `instance_id` or `instance_alias` is required.
  final Input<String>? instanceAlias;

  /// Returns information on a specific connect instance by id
  final Input<String>? instanceId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// A map of tags to assigned to the instance.
  final Input<Map<String, String>>? tags;

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
      instanceAlias: Input.asOptionalInput<String>(map['instanceAlias']),
      instanceId: Input.asOptionalInput<String>(map['instanceId']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
