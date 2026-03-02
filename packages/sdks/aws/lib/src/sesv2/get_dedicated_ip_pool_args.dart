// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sesv2_get_dedicated_ip_pool_get_dedicated_ip_pool_args_doc}
/// Arguments for getDedicatedIpPool.
/// {@endtemplate}
/// {@macro pulumi_sesv2_get_dedicated_ip_pool_get_dedicated_ip_pool_args_doc}
class GetDedicatedIpPoolArgs {
  /// Name of the dedicated IP pool.
  final pulumi.Input<String> poolName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A map of tags attached to the pool.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetDedicatedIpPoolArgs].
  /// [poolName] Name of the dedicated IP pool.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags attached to the pool.
  GetDedicatedIpPoolArgs({
    required this.poolName,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'poolName': poolName,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory GetDedicatedIpPoolArgs.fromMap(Map<String, dynamic> map) {
    return GetDedicatedIpPoolArgs(
      poolName: (map['poolName'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

