// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for DedicatedIpPool.
class DedicatedIpPoolArgs {
  /// Name of the dedicated IP pool.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> poolName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// IP pool scaling mode. Valid values: `STANDARD`, `MANAGED`. If omitted, the AWS API will default to a standard pool.
  final pulumi.Input<String>? scalingMode;

  /// A map of tags to assign to the pool. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

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
      poolName: pulumi.Input.asInput<String>(map['poolName']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      scalingMode: pulumi.Input.asOptionalInput<String>(map['scalingMode']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
