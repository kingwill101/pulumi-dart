// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_access_points_access_point.dart';

/// Result data returned by getAccessPoints.
class GetAccessPointsResult {
  /// A list of access points matching the search criteria. See `access_points` below.
  final List<GetAccessPointsAccessPoint> accessPoints;
  final String? accountId;
  /// Name of the bucket associated with the access point.
  final String? bucket;
  /// Unique identifier for the data source of the access point.
  final String? dataSourceId;
  /// Type of the data source that the access point is attached to.
  final String? dataSourceType;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String region;

  /// Creates a new [GetAccessPointsResult].
  /// [accessPoints] A list of access points matching the search criteria. See `access_points` below.
  /// [accountId] Optional.
  /// [bucket] Name of the bucket associated with the access point.
  /// [dataSourceId] Unique identifier for the data source of the access point.
  /// [dataSourceType] Type of the data source that the access point is attached to.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [region] Required.
  GetAccessPointsResult({
    required this.accessPoints,
    this.accountId,
    this.bucket,
    this.dataSourceId,
    this.dataSourceType,
    required this.id,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessPoints': pulumi.Input.encodeList<GetAccessPointsAccessPoint, Map<String, dynamic>>(accessPoints, (value) => value.toMap()),
      'accountId': ?accountId,
      'bucket': ?bucket,
      'dataSourceId': ?dataSourceId,
      'dataSourceType': ?dataSourceType,
      'id': id,
      'region': region,
    };
  }

  factory GetAccessPointsResult.fromMap(Map<String, dynamic> map) {
    return GetAccessPointsResult(
      accessPoints: pulumi.Input.decodeList<GetAccessPointsAccessPoint>(map['accessPoints'], (value) => GetAccessPointsAccessPoint.fromMap((value as Map).cast<String, dynamic>())),
      accountId: map['accountId'] == null ? null : map['accountId'] as String,
      bucket: map['bucket'] == null ? null : map['bucket'] as String,
      dataSourceId: map['dataSourceId'] == null ? null : map['dataSourceId'] as String,
      dataSourceType: map['dataSourceType'] == null ? null : map['dataSourceType'] as String,
      id: map['id'] as String,
      region: map['region'] as String,
    );
  }
}

