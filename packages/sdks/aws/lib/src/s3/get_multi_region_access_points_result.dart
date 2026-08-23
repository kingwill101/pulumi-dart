// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_multi_region_access_points_access_point.dart';

/// Result data returned by getMultiRegionAccessPoints.
class GetMultiRegionAccessPointsResult {
  /// List of multi-region access points. See `accessPoints` below.
  final List<GetMultiRegionAccessPointsAccessPoint> accessPoints;
  final String? accountId;
  /// Name of the Region.
  final String region;

  /// Creates a new [GetMultiRegionAccessPointsResult].
  /// [accessPoints] List of multi-region access points. See `accessPoints` below.
  /// [accountId] Optional.
  /// [region] Name of the Region.
  const GetMultiRegionAccessPointsResult({
    required this.accessPoints,
    this.accountId,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessPoints': pulumi.Input.encodeList<GetMultiRegionAccessPointsAccessPoint, Map<String, dynamic>>(accessPoints, (value) => value.toMap()),
      'accountId': ?accountId,
      'region': region,
    };
  }

  factory GetMultiRegionAccessPointsResult.fromMap(Map<String, dynamic> map) {
    return GetMultiRegionAccessPointsResult(
      accessPoints: pulumi.Input.decodeList<GetMultiRegionAccessPointsAccessPoint>(map['accessPoints']!, (value) => GetMultiRegionAccessPointsAccessPoint.fromMap((value as Map).cast<String, dynamic>())),
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: map['region'] as String,
    );
  }
}
