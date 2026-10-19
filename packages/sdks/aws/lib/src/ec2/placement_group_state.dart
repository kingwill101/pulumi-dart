// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering PlacementGroup resources.
class PlacementGroupState {
  /// ARN of the placement group.
  final pulumi.Input<String?>? arn;
  /// Name of the placement group.
  final pulumi.Input<String?>? name;
  /// Number of partitions to create in the placement group. Can only be specified when the `strategy` is set to `partition`. Must be at least `1`. (default is `2`).
  final pulumi.Input<int?>? partitionCount;
  /// ID of the placement group.
  final pulumi.Input<String?>? placementGroupId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// How placement groups spread instances. Can only be used when the `strategy` is set to `spread`. Can be `host` or `rack`. `host` can only be used for Outpost placement groups. Defaults to `rack`.
  final pulumi.Input<String?>? spreadLevel;
  /// Placement strategy. Can be `cluster`, `partition` or `spread`.
  final pulumi.Input<dynamic>? strategy;
  /// Key-value map of resource tags. .If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;

  /// Creates a new [PlacementGroupState].
  /// [arn] ARN of the placement group.
  /// [name] Name of the placement group.
  /// [partitionCount] Number of partitions to create in the placement group. Can only be specified when the `strategy` is set to `partition`. Must be at least `1`. (default is `2`).
  /// [placementGroupId] ID of the placement group.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [spreadLevel] How placement groups spread instances. Can only be used when the `strategy` is set to `spread`. Can be `host` or `rack`. `host` can only be used for Outpost placement groups. Defaults to `rack`.
  /// [strategy] Placement strategy. Can be `cluster`, `partition` or `spread`.
  /// [tags] Key-value map of resource tags. .If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  const PlacementGroupState({
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
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      partitionCount: (() { final guardedValue = map['partitionCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      placementGroupId: (() { final guardedValue = map['placementGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      spreadLevel: (() { final guardedValue = map['spreadLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      strategy: (() { final guardedValue = map['strategy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
