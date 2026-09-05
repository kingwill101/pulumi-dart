// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_securityhub_aggregator_v2_aggregator_v2_args_doc}
/// The set of arguments for AggregatorV2.
/// {@endtemplate}
/// {@macro pulumi_securityhub_aggregator_v2_aggregator_v2_args_doc}
class AggregatorV2Args {
  /// List of Regions linked to the aggregation Region. Required when `regionLinkingMode` is `SPECIFIED_REGIONS` or `ALL_REGIONS_EXCEPT_SPECIFIED`.
  final pulumi.Input<List<String>?>? linkedRegions;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Determines how Regions are linked to the aggregator. Valid values: `ALL_REGIONS`, `ALL_REGIONS_EXCEPT_SPECIFIED`, `SPECIFIED_REGIONS`.
  final pulumi.Input<String> regionLinkingMode;
  /// Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [AggregatorV2Args].
  /// [linkedRegions] List of Regions linked to the aggregation Region. Required when `regionLinkingMode` is `SPECIFIED_REGIONS` or `ALL_REGIONS_EXCEPT_SPECIFIED`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [regionLinkingMode] Determines how Regions are linked to the aggregator. Valid values: `ALL_REGIONS`, `ALL_REGIONS_EXCEPT_SPECIFIED`, `SPECIFIED_REGIONS`.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  const AggregatorV2Args({
    this.linkedRegions,
    this.region,
    required this.regionLinkingMode,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'linkedRegions': ?linkedRegions,
      'region': ?region,
      'regionLinkingMode': regionLinkingMode,
      'tags': ?tags,
    };
  }

  factory AggregatorV2Args.fromMap(Map<String, dynamic> map) {
    return AggregatorV2Args(
      linkedRegions: (() { final guardedValue = map['linkedRegions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      regionLinkingMode: pulumi.Input.fromValue(map['regionLinkingMode'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
