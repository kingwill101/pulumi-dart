// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getPublicIpv4Pool.
class GetPublicIpv4PoolArgs {
  /// AWS resource IDs of a public IPv4 pool (as a string) for which this data source will fetch detailed information.
  final Input<String> poolId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Any tags for the address pool.
  final Input<Map<String, String>>? tags;

  GetPublicIpv4PoolArgs({
    required this.poolId,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['poolId'] = poolId;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory GetPublicIpv4PoolArgs.fromMap(Map<String, dynamic> map) {
    return GetPublicIpv4PoolArgs(
      poolId: Input.asInput<String>(map['poolId']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
