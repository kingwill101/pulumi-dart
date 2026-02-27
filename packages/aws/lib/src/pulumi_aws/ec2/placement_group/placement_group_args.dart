// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for PlacementGroup.
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

  PlacementGroupArgs({
    this.name,
    this.partitionCount,
    this.region,
    this.spreadLevel,
    required this.strategy,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final partitionCountValue = partitionCount;
    if (partitionCountValue != null) {
      map['partitionCount'] = partitionCountValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final spreadLevelValue = spreadLevel;
    if (spreadLevelValue != null) {
      map['spreadLevel'] = spreadLevelValue;
    }
    map['strategy'] = strategy;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory PlacementGroupArgs.fromMap(Map<String, dynamic> map) {
    return PlacementGroupArgs(
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      partitionCount: pulumi.Input.asOptionalInput<int>(map['partitionCount']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      spreadLevel: pulumi.Input.asOptionalInput<String>(map['spreadLevel']),
      strategy: pulumi.Input.asInput<String>(map['strategy']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
