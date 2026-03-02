// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ec2_get_public_ipv4_pool_get_public_ipv4_pool_args_doc}
/// Arguments for getPublicIpv4Pool.
/// {@endtemplate}
/// {@macro pulumi_ec2_get_public_ipv4_pool_get_public_ipv4_pool_args_doc}
class GetPublicIpv4PoolArgs {
  /// AWS resource IDs of a public IPv4 pool (as a string) for which this data source will fetch detailed information.
  final pulumi.Input<String> poolId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Any tags for the address pool.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetPublicIpv4PoolArgs].
  /// [poolId] AWS resource IDs of a public IPv4 pool (as a string) for which this data source will fetch detailed information.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Any tags for the address pool.
  GetPublicIpv4PoolArgs({
    required this.poolId,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'poolId': poolId,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory GetPublicIpv4PoolArgs.fromMap(Map<String, dynamic> map) {
    return GetPublicIpv4PoolArgs(
      poolId: (map['poolId'] as String).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
    );
  }
}

