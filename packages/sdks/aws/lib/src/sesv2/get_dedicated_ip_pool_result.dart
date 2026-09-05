// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_dedicated_ip_pool_dedicated_ip.dart';

/// Result data returned by getDedicatedIpPool.
class GetDedicatedIpPoolResult {
  /// ARN of the Dedicated IP Pool.
  final String? arn;
  /// List of objects describing the pool's dedicated IP's. See `dedicatedIps`.
  final List<GetDedicatedIpPoolDedicatedIp>? dedicatedIps;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? poolName;
  final String? region;
  /// IP pool scaling mode. Valid values: `STANDARD`, `MANAGED`.
  final String? scalingMode;
  /// Map of tags attached to the pool.
  final Map<String, String>? tags;

  /// Creates a new [GetDedicatedIpPoolResult].
  /// [arn] ARN of the Dedicated IP Pool.
  /// [dedicatedIps] List of objects describing the pool's dedicated IP's. See `dedicatedIps`.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [poolName] Optional.
  /// [region] Optional.
  /// [scalingMode] IP pool scaling mode. Valid values: `STANDARD`, `MANAGED`.
  /// [tags] Map of tags attached to the pool.
  const GetDedicatedIpPoolResult({
    this.arn,
    this.dedicatedIps,
    this.id,
    this.poolName,
    this.region,
    this.scalingMode,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'dedicatedIps': ?(() { final guardedValue = dedicatedIps; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDedicatedIpPoolDedicatedIp, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'poolName': ?poolName,
      'region': ?region,
      'scalingMode': ?scalingMode,
      'tags': ?tags,
    };
  }

  factory GetDedicatedIpPoolResult.fromMap(Map<String, dynamic> map) {
    return GetDedicatedIpPoolResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dedicatedIps: (() { final guardedValue = map['dedicatedIps']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDedicatedIpPoolDedicatedIp>(guardedValue, (value) => GetDedicatedIpPoolDedicatedIp.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      poolName: (() { final guardedValue = map['poolName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      scalingMode: (() { final guardedValue = map['scalingMode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
