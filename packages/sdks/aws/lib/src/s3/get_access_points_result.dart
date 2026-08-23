// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_access_points_access_point.dart';

/// Result data returned by getAccessPoints.
class GetAccessPointsResult {
  /// List of access points matching the search criteria. See `accessPoints` below.
  final List<GetAccessPointsAccessPoint> accessPoints;
  final String? accountId;
  /// Name of the bucket associated with the access point.
  final String? bucket;
  /// Unique identifier for the data source of the access point.
  final String? dataSourceId;
  /// Type of the data source that the access point is attached to.
  final String? dataSourceType;
  final String region;

  /// Creates a new [GetAccessPointsResult].
  /// [accessPoints] List of access points matching the search criteria. See `accessPoints` below.
  /// [accountId] Optional.
  /// [bucket] Name of the bucket associated with the access point.
  /// [dataSourceId] Unique identifier for the data source of the access point.
  /// [dataSourceType] Type of the data source that the access point is attached to.
  /// [region] Required.
  const GetAccessPointsResult({
    required this.accessPoints,
    this.accountId,
    this.bucket,
    this.dataSourceId,
    this.dataSourceType,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessPoints': pulumi.Input.encodeList<GetAccessPointsAccessPoint, Map<String, dynamic>>(accessPoints, (value) => value.toMap()),
      'accountId': ?accountId,
      'bucket': ?bucket,
      'dataSourceId': ?dataSourceId,
      'dataSourceType': ?dataSourceType,
      'region': region,
    };
  }

  factory GetAccessPointsResult.fromMap(Map<String, dynamic> map) {
    return GetAccessPointsResult(
      accessPoints: pulumi.Input.decodeList<GetAccessPointsAccessPoint>(map['accessPoints']!, (value) => GetAccessPointsAccessPoint.fromMap((value as Map).cast<String, dynamic>())),
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      bucket: (() { final guardedValue = map['bucket']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dataSourceId: (() { final guardedValue = map['dataSourceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dataSourceType: (() { final guardedValue = map['dataSourceType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: map['region'] as String,
    );
  }
}
