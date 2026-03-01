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
    pulumi.Output<String>? name,
    pulumi.Output<int>? partitionCount,
    pulumi.Output<String>? region,
    pulumi.Output<String>? spreadLevel,
    required pulumi.Output<String> strategy,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      name = pulumi.Input.asOptionalInput<String>(name),
      partitionCount = pulumi.Input.asOptionalInput<int>(partitionCount),
      region = pulumi.Input.asOptionalInput<String>(region),
      spreadLevel = pulumi.Input.asOptionalInput<String>(spreadLevel),
      strategy = pulumi.Input.asInput<String>(strategy),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      partitionCount: map['partitionCount'] == null ? null : pulumi.Output.create<int>(map['partitionCount'] as int),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      spreadLevel: map['spreadLevel'] == null ? null : pulumi.Output.create<String>(map['spreadLevel'] as String),
      strategy: pulumi.Output.create<String>(map['strategy'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

