// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AggregatorV2 resources.
class AggregatorV2State {
  /// The AWS Region where data is aggregated.
  final pulumi.Input<String?>? aggregationRegion;
  /// ARN of the Security Hub V2 Aggregator.
  final pulumi.Input<String?>? arn;
  /// List of Regions linked to the aggregation Region. Required when `regionLinkingMode` is `SPECIFIED_REGIONS` or `ALL_REGIONS_EXCEPT_SPECIFIED`.
  final pulumi.Input<List<String>?>? linkedRegions;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Determines how Regions are linked to the aggregator. Valid values: `ALL_REGIONS`, `ALL_REGIONS_EXCEPT_SPECIFIED`, `SPECIFIED_REGIONS`.
  final pulumi.Input<String?>? regionLinkingMode;
  /// Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;

  /// Creates a new [AggregatorV2State].
  /// [aggregationRegion] The AWS Region where data is aggregated.
  /// [arn] ARN of the Security Hub V2 Aggregator.
  /// [linkedRegions] List of Regions linked to the aggregation Region. Required when `regionLinkingMode` is `SPECIFIED_REGIONS` or `ALL_REGIONS_EXCEPT_SPECIFIED`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [regionLinkingMode] Determines how Regions are linked to the aggregator. Valid values: `ALL_REGIONS`, `ALL_REGIONS_EXCEPT_SPECIFIED`, `SPECIFIED_REGIONS`.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  const AggregatorV2State({
    this.aggregationRegion,
    this.arn,
    this.linkedRegions,
    this.region,
    this.regionLinkingMode,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aggregationRegion': ?aggregationRegion,
      'arn': ?arn,
      'linkedRegions': ?linkedRegions,
      'region': ?region,
      'regionLinkingMode': ?regionLinkingMode,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory AggregatorV2State.fromMap(Map<String, dynamic> map) {
    return AggregatorV2State(
      aggregationRegion: (() { final guardedValue = map['aggregationRegion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      linkedRegions: (() { final guardedValue = map['linkedRegions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      regionLinkingMode: (() { final guardedValue = map['regionLinkingMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
