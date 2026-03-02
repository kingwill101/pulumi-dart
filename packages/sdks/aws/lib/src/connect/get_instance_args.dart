// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_connect_get_instance_get_instance_args_doc}
/// Arguments for getInstance.
/// {@endtemplate}
/// {@macro pulumi_connect_get_instance_get_instance_args_doc}
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

  /// Creates a new [GetInstanceArgs].
  /// [instanceAlias] Returns information on a specific connect instance by alias
  /// [instanceId] Returns information on a specific connect instance by id
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assigned to the instance.
  GetInstanceArgs({
    this.instanceAlias,
    this.instanceId,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceAlias': ?instanceAlias,
      'instanceId': ?instanceId,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory GetInstanceArgs.fromMap(Map<String, dynamic> map) {
    return GetInstanceArgs(
      instanceAlias: map['instanceAlias'] == null ? null : (map['instanceAlias'] as String).input(),
      instanceId: map['instanceId'] == null ? null : (map['instanceId'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

