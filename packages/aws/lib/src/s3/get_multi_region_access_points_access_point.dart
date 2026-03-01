// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_multi_region_access_points_access_point_public_access_block.dart';
import 'get_multi_region_access_points_access_point_region.dart';

class GetMultiRegionAccessPointsAccessPoint {
  /// Alias for the multi-region access point.
  final String alias;

  /// Time the multi-region access point was created.
  final String createdAt;

  /// Name of the multi-region access point.
  final String name;

  /// Public access block configuration for this multi-region access point. See `public_access_block` below.
  final List<GetMultiRegionAccessPointsAccessPointPublicAccessBlock>
  publicAccessBlocks;

  /// List of AWS Regions where the multi-region access point has data support. See `regions` below.
  final List<GetMultiRegionAccessPointsAccessPointRegion> regions;

  /// Current status of the multi-region access point.
  final String status;

  /// Creates a new [GetMultiRegionAccessPointsAccessPoint].
  /// [alias] Alias for the multi-region access point.
  /// [createdAt] Time the multi-region access point was created.
  /// [name] Name of the multi-region access point.
  /// [publicAccessBlocks] Public access block configuration for this multi-region access point. See `public_access_block` below.
  /// [regions] List of AWS Regions where the multi-region access point has data support. See `regions` below.
  /// [status] Current status of the multi-region access point.
  GetMultiRegionAccessPointsAccessPoint({
    required this.alias,
    required this.createdAt,
    required this.name,
    required this.publicAccessBlocks,
    required this.regions,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alias': alias,
      'createdAt': createdAt,
      'name': name,
      'publicAccessBlocks':
          pulumi.Input.encodeList<
            GetMultiRegionAccessPointsAccessPointPublicAccessBlock,
            Map<String, dynamic>
          >(publicAccessBlocks, (value) => value.toMap()),
      'regions':
          pulumi.Input.encodeList<
            GetMultiRegionAccessPointsAccessPointRegion,
            Map<String, dynamic>
          >(regions, (value) => value.toMap()),
      'status': status,
    };
  }

  factory GetMultiRegionAccessPointsAccessPoint.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetMultiRegionAccessPointsAccessPoint(
      alias: map['alias'] as String,
      createdAt: map['createdAt'] as String,
      name: map['name'] as String,
      publicAccessBlocks:
          pulumi.Input.decodeList<
            GetMultiRegionAccessPointsAccessPointPublicAccessBlock
          >(
            map['publicAccessBlocks'],
            (value) =>
                GetMultiRegionAccessPointsAccessPointPublicAccessBlock.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
      regions:
          pulumi.Input.decodeList<GetMultiRegionAccessPointsAccessPointRegion>(
            map['regions'],
            (value) => GetMultiRegionAccessPointsAccessPointRegion.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      status: map['status'] as String,
    );
  }
}
