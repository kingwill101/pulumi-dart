// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_dedicated_ip_pool_dedicated_ip/get_dedicated_ip_pool_dedicated_ip.dart';

/// Result data returned by getDedicatedIpPool.
class GetDedicatedIpPoolResult {
  /// ARN of the Dedicated IP Pool.
  final String arn;

  /// A list of objects describing the pool's dedicated IP's. See `dedicated_ips`.
  final List<GetDedicatedIpPoolDedicatedIp> dedicatedIps;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String poolName;
  final String region;

  /// (Optional) IP pool scaling mode. Valid values: `STANDARD`, `MANAGED`.
  final String scalingMode;

  /// A map of tags attached to the pool.
  final Map<String, String> tags;

  GetDedicatedIpPoolResult({
    required this.arn,
    required this.dedicatedIps,
    required this.id,
    required this.poolName,
    required this.region,
    required this.scalingMode,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['dedicatedIps'] =
        Input.encodeList<GetDedicatedIpPoolDedicatedIp, Map<String, dynamic>>(
            dedicatedIps, (value) => value.toMap());
    map['id'] = id;
    map['poolName'] = poolName;
    map['region'] = region;
    map['scalingMode'] = scalingMode;
    map['tags'] = tags;
    return map;
  }

  factory GetDedicatedIpPoolResult.fromMap(Map<String, dynamic> map) {
    return GetDedicatedIpPoolResult(
      arn: map['arn'] as String,
      dedicatedIps: Input.decodeList<GetDedicatedIpPoolDedicatedIp>(
          map['dedicatedIps'],
          (value) => GetDedicatedIpPoolDedicatedIp.fromMap(
              (value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      poolName: map['poolName'] as String,
      region: map['region'] as String,
      scalingMode: map['scalingMode'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}
