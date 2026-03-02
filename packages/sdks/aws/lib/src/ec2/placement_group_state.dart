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
    this.arn,
    this.name,
    this.partitionCount,
    this.placementGroupId,
    this.region,
    this.spreadLevel,
    this.strategy,
    this.tags,
    this.tagsAll,
  });

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
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      partitionCount: map['partitionCount'] == null ? null : (map['partitionCount'] as int).input(),
      placementGroupId: map['placementGroupId'] == null ? null : (map['placementGroupId'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      spreadLevel: map['spreadLevel'] == null ? null : (map['spreadLevel'] as String).input(),
      strategy: map['strategy'] == null ? null : (map['strategy'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
    );
  }
}

