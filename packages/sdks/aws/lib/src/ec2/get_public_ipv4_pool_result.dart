// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_public_ipv4_pool_pool_address_range.dart';

/// Result data returned by getPublicIpv4Pool.
class GetPublicIpv4PoolResult {
  /// Description of the pool, if any.
  final String description;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// Name of the location from which the address pool is advertised.
  /// * pool_address_ranges` - List of Address Ranges in the Pool; each address range record contains:
  final String networkBorderGroup;
  final List<GetPublicIpv4PoolPoolAddressRange> poolAddressRanges;
  final String poolId;
  final String region;

  /// Any tags for the address pool.
  final Map<String, String> tags;

  /// Total number of addresses in the pool.
  final int totalAddressCount;

  /// Total number of available addresses in the pool.
  final int totalAvailableAddressCount;

  /// Creates a new [GetPublicIpv4PoolResult].
  /// [description] Description of the pool, if any.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [networkBorderGroup] Name of the location from which the address pool is advertised.
  /// [poolAddressRanges] Required.
  /// [poolId] Required.
  /// [region] Required.
  /// [tags] Any tags for the address pool.
  /// [totalAddressCount] Total number of addresses in the pool.
  /// [totalAvailableAddressCount] Total number of available addresses in the pool.
  GetPublicIpv4PoolResult({
    required this.description,
    required this.id,
    required this.networkBorderGroup,
    required this.poolAddressRanges,
    required this.poolId,
    required this.region,
    required this.tags,
    required this.totalAddressCount,
    required this.totalAvailableAddressCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'id': id,
      'networkBorderGroup': networkBorderGroup,
      'poolAddressRanges':
          pulumi.Input.encodeList<
            GetPublicIpv4PoolPoolAddressRange,
            Map<String, dynamic>
          >(poolAddressRanges, (value) => value.toMap()),
      'poolId': poolId,
      'region': region,
      'tags': tags,
      'totalAddressCount': totalAddressCount,
      'totalAvailableAddressCount': totalAvailableAddressCount,
    };
  }

  factory GetPublicIpv4PoolResult.fromMap(Map<String, dynamic> map) {
    return GetPublicIpv4PoolResult(
      description: map['description'] as String,
      id: map['id'] as String,
      networkBorderGroup: map['networkBorderGroup'] as String,
      poolAddressRanges:
          pulumi.Input.decodeList<GetPublicIpv4PoolPoolAddressRange>(
            map['poolAddressRanges']!,
            (value) => GetPublicIpv4PoolPoolAddressRange.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      poolId: map['poolId'] as String,
      region: map['region'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      totalAddressCount: map['totalAddressCount'] as int,
      totalAvailableAddressCount: map['totalAvailableAddressCount'] as int,
    );
  }
}
