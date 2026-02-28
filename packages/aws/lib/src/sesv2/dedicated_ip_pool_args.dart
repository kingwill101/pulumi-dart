// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sesv2_dedicated_ip_pool_dedicated_ip_pool_args_doc}
/// The set of arguments for DedicatedIpPool.
/// {@endtemplate}
/// {@macro pulumi_sesv2_dedicated_ip_pool_dedicated_ip_pool_args_doc}
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

  /// Creates a new [DedicatedIpPoolArgs].
  /// [poolName] Name of the dedicated IP pool.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [scalingMode] IP pool scaling mode. Valid values: `STANDARD`, `MANAGED`. If omitted, the AWS API will default to a standard pool.
  /// [tags] A map of tags to assign to the pool. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  DedicatedIpPoolArgs({
    required String poolName,
    String? region,
    String? scalingMode,
    Map<String, String>? tags,
  })  : poolName = pulumi.Input.asInput<String>(poolName),
        region = pulumi.Input.asOptionalInput<String>(region),
        scalingMode = pulumi.Input.asOptionalInput<String>(scalingMode),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      poolName: map['poolName'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      scalingMode:
          map['scalingMode'] == null ? null : map['scalingMode'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
