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
  const DedicatedIpPoolArgs({
    required this.poolName,
    this.region,
    this.scalingMode,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'poolName': poolName,
      'region': ?region,
      'scalingMode': ?scalingMode,
      'tags': ?tags,
    };
  }

  factory DedicatedIpPoolArgs.fromMap(Map<String, dynamic> map) {
    return DedicatedIpPoolArgs(
      poolName: pulumi.Input.fromValue(map['poolName'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scalingMode: (() { final guardedValue = map['scalingMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

