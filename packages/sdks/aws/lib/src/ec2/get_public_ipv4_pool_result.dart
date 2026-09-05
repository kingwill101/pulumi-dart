// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_public_ipv4_pool_pool_address_range.dart';

/// Result data returned by getPublicIpv4Pool.
class GetPublicIpv4PoolResult {
  /// Description of the pool, if any.
  final String? description;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// Name of the location from which the address pool is advertised.
  /// * poolAddressRanges` - List of Address Ranges in the Pool; each address range record contains:
  final String? networkBorderGroup;
  final List<GetPublicIpv4PoolPoolAddressRange>? poolAddressRanges;
  final String? poolId;
  final String? region;
  /// Any tags for the address pool.
  final Map<String, String>? tags;
  /// Total number of addresses in the pool.
  final int? totalAddressCount;
  /// Total number of available addresses in the pool.
  final int? totalAvailableAddressCount;

  /// Creates a new [GetPublicIpv4PoolResult].
  /// [description] Description of the pool, if any.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [networkBorderGroup] Name of the location from which the address pool is advertised.
  /// [poolAddressRanges] Optional.
  /// [poolId] Optional.
  /// [region] Optional.
  /// [tags] Any tags for the address pool.
  /// [totalAddressCount] Total number of addresses in the pool.
  /// [totalAvailableAddressCount] Total number of available addresses in the pool.
  const GetPublicIpv4PoolResult({
    this.description,
    this.id,
    this.networkBorderGroup,
    this.poolAddressRanges,
    this.poolId,
    this.region,
    this.tags,
    this.totalAddressCount,
    this.totalAvailableAddressCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'id': ?id,
      'networkBorderGroup': ?networkBorderGroup,
      'poolAddressRanges': ?(() { final guardedValue = poolAddressRanges; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetPublicIpv4PoolPoolAddressRange, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'poolId': ?poolId,
      'region': ?region,
      'tags': ?tags,
      'totalAddressCount': ?totalAddressCount,
      'totalAvailableAddressCount': ?totalAvailableAddressCount,
    };
  }

  factory GetPublicIpv4PoolResult.fromMap(Map<String, dynamic> map) {
    return GetPublicIpv4PoolResult(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      networkBorderGroup: (() { final guardedValue = map['networkBorderGroup']; if (guardedValue == null) return null; return guardedValue as String; })(),
      poolAddressRanges: (() { final guardedValue = map['poolAddressRanges']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetPublicIpv4PoolPoolAddressRange>(guardedValue, (value) => GetPublicIpv4PoolPoolAddressRange.fromMap((value as Map).cast<String, dynamic>())); })(),
      poolId: (() { final guardedValue = map['poolId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      totalAddressCount: (() { final guardedValue = map['totalAddressCount']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      totalAvailableAddressCount: (() { final guardedValue = map['totalAvailableAddressCount']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
    );
  }
}
