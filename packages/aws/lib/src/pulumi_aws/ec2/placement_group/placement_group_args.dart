// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for PlacementGroup.
class PlacementGroupArgs {
  /// The name of the placement group.
  final Input<String>? name;

  /// The number of partitions to create in the
  /// placement group.  Can only be specified when the <span pulumi-lang-nodejs="`strategy`" pulumi-lang-dotnet="`Strategy`" pulumi-lang-go="`strategy`" pulumi-lang-python="`strategy`" pulumi-lang-yaml="`strategy`" pulumi-lang-java="`strategy`">`strategy`</span> is set to
  /// <span pulumi-lang-nodejs="`partition`" pulumi-lang-dotnet="`Partition`" pulumi-lang-go="`partition`" pulumi-lang-python="`partition`" pulumi-lang-yaml="`partition`" pulumi-lang-java="`partition`">`partition`</span>.  Must be at least <span pulumi-lang-nodejs="`1`" pulumi-lang-dotnet="`1`" pulumi-lang-go="`1`" pulumi-lang-python="`1`" pulumi-lang-yaml="`1`" pulumi-lang-java="`1`">`1`</span>. (default is <span pulumi-lang-nodejs="`2`" pulumi-lang-dotnet="`2`" pulumi-lang-go="`2`" pulumi-lang-python="`2`" pulumi-lang-yaml="`2`" pulumi-lang-java="`2`">`2`</span>).
  final Input<int>? partitionCount;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Determines how placement groups spread instances. Can only be used
  /// when the <span pulumi-lang-nodejs="`strategy`" pulumi-lang-dotnet="`Strategy`" pulumi-lang-go="`strategy`" pulumi-lang-python="`strategy`" pulumi-lang-yaml="`strategy`" pulumi-lang-java="`strategy`">`strategy`</span> is set to <span pulumi-lang-nodejs="`spread`" pulumi-lang-dotnet="`Spread`" pulumi-lang-go="`spread`" pulumi-lang-python="`spread`" pulumi-lang-yaml="`spread`" pulumi-lang-java="`spread`">`spread`</span>. Can be <span pulumi-lang-nodejs="`host`" pulumi-lang-dotnet="`Host`" pulumi-lang-go="`host`" pulumi-lang-python="`host`" pulumi-lang-yaml="`host`" pulumi-lang-java="`host`">`host`</span> or <span pulumi-lang-nodejs="`rack`" pulumi-lang-dotnet="`Rack`" pulumi-lang-go="`rack`" pulumi-lang-python="`rack`" pulumi-lang-yaml="`rack`" pulumi-lang-java="`rack`">`rack`</span>. <span pulumi-lang-nodejs="`host`" pulumi-lang-dotnet="`Host`" pulumi-lang-go="`host`" pulumi-lang-python="`host`" pulumi-lang-yaml="`host`" pulumi-lang-java="`host`">`host`</span> can only be used for Outpost placement groups. Defaults to <span pulumi-lang-nodejs="`rack`" pulumi-lang-dotnet="`Rack`" pulumi-lang-go="`rack`" pulumi-lang-python="`rack`" pulumi-lang-yaml="`rack`" pulumi-lang-java="`rack`">`rack`</span>.
  final Input<String>? spreadLevel;

  /// The placement strategy. Can be <span pulumi-lang-nodejs="`cluster`" pulumi-lang-dotnet="`Cluster`" pulumi-lang-go="`cluster`" pulumi-lang-python="`cluster`" pulumi-lang-yaml="`cluster`" pulumi-lang-java="`cluster`">`cluster`</span>, <span pulumi-lang-nodejs="`partition`" pulumi-lang-dotnet="`Partition`" pulumi-lang-go="`partition`" pulumi-lang-python="`partition`" pulumi-lang-yaml="`partition`" pulumi-lang-java="`partition`">`partition`</span> or <span pulumi-lang-nodejs="`spread`" pulumi-lang-dotnet="`Spread`" pulumi-lang-go="`spread`" pulumi-lang-python="`spread`" pulumi-lang-yaml="`spread`" pulumi-lang-java="`spread`">`spread`</span>.
  final Input<String> strategy;

  /// Key-value map of resource tags. .If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

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
      name: Input.asOptionalInput<String>(map['name']),
      partitionCount: Input.asOptionalInput<int>(map['partitionCount']),
      region: Input.asOptionalInput<String>(map['region']),
      spreadLevel: Input.asOptionalInput<String>(map['spreadLevel']),
      strategy: Input.asInput<String>(map['strategy']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
