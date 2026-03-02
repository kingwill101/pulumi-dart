// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ec2_placement_group_placement_group_args_doc}
/// The set of arguments for PlacementGroup.
/// {@endtemplate}
/// {@macro pulumi_ec2_placement_group_placement_group_args_doc}
class PlacementGroupArgs {
  /// The name of the placement group.
  final pulumi.Input<String>? name;
  /// The number of partitions to create in the
  /// placement group.  Can only be specified when the `strategy` is set to
  /// `partition`.  Must be at least `1`. (default is `2`).
  final pulumi.Input<int>? partitionCount;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Determines how placement groups spread instances. Can only be used
  /// when the `strategy` is set to `spread`. Can be `host` or `rack`. `host` can only be used for Outpost placement groups. Defaults to `rack`.
  final pulumi.Input<String>? spreadLevel;
  /// The placement strategy. Can be `cluster`, `partition` or `spread`.
  final pulumi.Input<String> strategy;
  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [PlacementGroupArgs].
  /// [name] The name of the placement group.
  /// [partitionCount] The number of partitions to create in the
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [spreadLevel] Determines how placement groups spread instances. Can only be used
  /// [strategy] The placement strategy. Can be `cluster`, `partition` or `spread`.
  /// [tags] Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  PlacementGroupArgs({
    this.name,
    this.partitionCount,
    this.region,
    this.spreadLevel,
    required this.strategy,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'partitionCount': ?partitionCount,
      'region': ?region,
      'spreadLevel': ?spreadLevel,
      'strategy': strategy,
      'tags': ?tags,
    };
  }

  factory PlacementGroupArgs.fromMap(Map<String, dynamic> map) {
    return PlacementGroupArgs(
      name: map['name'] == null ? null : (map['name'] as String).input(),
      partitionCount: map['partitionCount'] == null ? null : (map['partitionCount'] as int).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      spreadLevel: map['spreadLevel'] == null ? null : (map['spreadLevel'] as String).input(),
      strategy: (map['strategy'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

