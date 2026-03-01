// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering PlacementGroup resources.
class PlacementGroupState {
  /// Amazon Resource Name (ARN) of the placement group.
  final pulumi.Input<String>? arn;
  /// The name of the placement group.
  final pulumi.Input<String>? name;
  /// The number of partitions to create in the
  /// placement group.  Can only be specified when the `strategy` is set to
  /// `partition`.  Must be at least `1`. (default is `2`).
  final pulumi.Input<int>? partitionCount;
  /// The ID of the placement group.
  final pulumi.Input<String>? placementGroupId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Determines how placement groups spread instances. Can only be used
  /// when the `strategy` is set to `spread`. Can be `host` or `rack`. `host` can only be used for Outpost placement groups. Defaults to `rack`.
  final pulumi.Input<String>? spreadLevel;
  /// The placement strategy. Can be `cluster`, `partition` or `spread`.
  final pulumi.Input<String>? strategy;
  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [PlacementGroupState].
  /// [arn] Amazon Resource Name (ARN) of the placement group.
  /// [name] The name of the placement group.
  /// [partitionCount] The number of partitions to create in the
  /// [placementGroupId] The ID of the placement group.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [spreadLevel] Determines how placement groups spread instances. Can only be used
  /// [strategy] The placement strategy. Can be `cluster`, `partition` or `spread`.
  /// [tags] Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  PlacementGroupState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? name,
    pulumi.Output<int>? partitionCount,
    pulumi.Output<String>? placementGroupId,
    pulumi.Output<String>? region,
    pulumi.Output<String>? spreadLevel,
    pulumi.Output<String>? strategy,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      name = pulumi.Input.asOptionalInput<String>(name),
      partitionCount = pulumi.Input.asOptionalInput<int>(partitionCount),
      placementGroupId = pulumi.Input.asOptionalInput<String>(placementGroupId),
      region = pulumi.Input.asOptionalInput<String>(region),
      spreadLevel = pulumi.Input.asOptionalInput<String>(spreadLevel),
      strategy = pulumi.Input.asOptionalInput<String>(strategy),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'name': ?name,
      'partitionCount': ?partitionCount,
      'placementGroupId': ?placementGroupId,
      'region': ?region,
      'spreadLevel': ?spreadLevel,
      'strategy': ?strategy,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory PlacementGroupState.fromMap(Map<String, dynamic> map) {
    return PlacementGroupState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      partitionCount: map['partitionCount'] == null ? null : pulumi.Output.create<int>(map['partitionCount'] as int),
      placementGroupId: map['placementGroupId'] == null ? null : pulumi.Output.create<String>(map['placementGroupId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      spreadLevel: map['spreadLevel'] == null ? null : pulumi.Output.create<String>(map['spreadLevel'] as String),
      strategy: map['strategy'] == null ? null : pulumi.Output.create<String>(map['strategy'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

