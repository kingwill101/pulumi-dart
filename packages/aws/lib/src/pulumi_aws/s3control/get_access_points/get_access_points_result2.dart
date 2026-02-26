// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_access_points_access_point/get_access_points_access_point.dart';

/// Result data returned by getAccessPoints.
class GetAccessPointsResult2 {
  /// A list of access points matching the search criteria. See <span pulumi-lang-nodejs="`accessPoints`" pulumi-lang-dotnet="`AccessPoints`" pulumi-lang-go="`accessPoints`" pulumi-lang-python="`access_points`" pulumi-lang-yaml="`accessPoints`" pulumi-lang-java="`accessPoints`">`access_points`</span> below.
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

  GetAccessPointsResult2({
    required this.accessPoints,
    this.accountId,
    this.bucket,
    this.dataSourceId,
    this.dataSourceType,
    required this.id,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['accessPoints'] =
        Input.encodeList<GetAccessPointsAccessPoint, Map<String, dynamic>>(
            accessPoints, (value) => value.toMap());
    final accountIdValue = accountId;
    if (accountIdValue != null) {
      map['accountId'] = accountIdValue;
    }
    final bucketValue = bucket;
    if (bucketValue != null) {
      map['bucket'] = bucketValue;
    }
    final dataSourceIdValue = dataSourceId;
    if (dataSourceIdValue != null) {
      map['dataSourceId'] = dataSourceIdValue;
    }
    final dataSourceTypeValue = dataSourceType;
    if (dataSourceTypeValue != null) {
      map['dataSourceType'] = dataSourceTypeValue;
    }
    map['id'] = id;
    map['region'] = region;
    return map;
  }

  factory GetAccessPointsResult2.fromMap(Map<String, dynamic> map) {
    return GetAccessPointsResult2(
      accessPoints: Input.decodeList<GetAccessPointsAccessPoint>(
          map['accessPoints'],
          (value) => GetAccessPointsAccessPoint.fromMap(
              (value as Map).cast<String, dynamic>())),
      accountId: map['accountId'] == null ? null : map['accountId'] as String,
      bucket: map['bucket'] == null ? null : map['bucket'] as String,
      dataSourceId:
          map['dataSourceId'] == null ? null : map['dataSourceId'] as String,
      dataSourceType: map['dataSourceType'] == null
          ? null
          : map['dataSourceType'] as String,
      id: map['id'] as String,
      region: map['region'] as String,
    );
  }
}
