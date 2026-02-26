// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for DedicatedIpPool.
class DedicatedIpPoolArgs {
  /// Name of the dedicated IP pool.
  ///
  /// The following arguments are optional:
  final Input<String> poolName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// IP pool scaling mode. Valid values: `STANDARD`, `MANAGED`. If omitted, the AWS API will default to a standard pool.
  final Input<String>? scalingMode;

  /// A map of tags to assign to the pool. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  DedicatedIpPoolArgs({
    required this.poolName,
    this.region,
    this.scalingMode,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['poolName'] = poolName;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final scalingModeValue = scalingMode;
    if (scalingModeValue != null) {
      map['scalingMode'] = scalingModeValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory DedicatedIpPoolArgs.fromMap(Map<String, dynamic> map) {
    return DedicatedIpPoolArgs(
      poolName: Input.asInput<String>(map['poolName']),
      region: Input.asOptionalInput<String>(map['region']),
      scalingMode: Input.asOptionalInput<String>(map['scalingMode']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
