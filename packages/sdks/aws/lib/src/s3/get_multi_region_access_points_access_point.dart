// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_multi_region_access_points_access_point_public_access_block.dart';
import 'get_multi_region_access_points_access_point_region.dart';

class GetMultiRegionAccessPointsAccessPoint {
  /// Alias for the multi-region access point.
  final pulumi.Input<String> alias;
  /// Time the multi-region access point was created.
  final pulumi.Input<String> createdAt;
  /// Name of the multi-region access point.
  final pulumi.Input<String> name;
  /// Public access block configuration for this multi-region access point. See `public_access_block` below.
  final pulumi.Input<List<GetMultiRegionAccessPointsAccessPointPublicAccessBlock>> publicAccessBlocks;
  /// List of AWS Regions where the multi-region access point has data support. See `regions` below.
  final pulumi.Input<List<GetMultiRegionAccessPointsAccessPointRegion>> regions;
  /// Current status of the multi-region access point.
  final pulumi.Input<String> status;

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
      'publicAccessBlocks': pulumi.Input.mapInputValue<List<GetMultiRegionAccessPointsAccessPointPublicAccessBlock>, List<Map<String, dynamic>>>(publicAccessBlocks, (value) => pulumi.Input.encodeList<GetMultiRegionAccessPointsAccessPointPublicAccessBlock, Map<String, dynamic>>(value, (value) => value.toMap())),
      'regions': pulumi.Input.mapInputValue<List<GetMultiRegionAccessPointsAccessPointRegion>, List<Map<String, dynamic>>>(regions, (value) => pulumi.Input.encodeList<GetMultiRegionAccessPointsAccessPointRegion, Map<String, dynamic>>(value, (value) => value.toMap())),
      'status': status,
    };
  }

  factory GetMultiRegionAccessPointsAccessPoint.fromMap(Map<String, dynamic> map) {
    return GetMultiRegionAccessPointsAccessPoint(
      alias: pulumi.Input.fromValue(map['alias'] as String),
      createdAt: pulumi.Input.fromValue(map['createdAt'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      publicAccessBlocks: pulumi.Input.fromValue(pulumi.Input.decodeList<GetMultiRegionAccessPointsAccessPointPublicAccessBlock>(map['publicAccessBlocks']!, (value) => GetMultiRegionAccessPointsAccessPointPublicAccessBlock.fromMap((value as Map).cast<String, dynamic>()))),
      regions: pulumi.Input.fromValue(pulumi.Input.decodeList<GetMultiRegionAccessPointsAccessPointRegion>(map['regions']!, (value) => GetMultiRegionAccessPointsAccessPointRegion.fromMap((value as Map).cast<String, dynamic>()))),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}

