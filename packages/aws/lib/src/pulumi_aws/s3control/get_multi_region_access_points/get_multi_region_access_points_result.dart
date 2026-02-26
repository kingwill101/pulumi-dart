// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_multi_region_access_points_access_point/get_multi_region_access_points_access_point.dart';

/// Result data returned by getMultiRegionAccessPoints.
class GetMultiRegionAccessPointsResult {
  /// List of multi-region access points. See <span pulumi-lang-nodejs="`accessPoints`" pulumi-lang-dotnet="`AccessPoints`" pulumi-lang-go="`accessPoints`" pulumi-lang-python="`access_points`" pulumi-lang-yaml="`accessPoints`" pulumi-lang-java="`accessPoints`">`access_points`</span> below.
  final List<GetMultiRegionAccessPointsAccessPoint> accessPoints;
  final String? accountId;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// Name of the Region.
  final String region;

  GetMultiRegionAccessPointsResult({
    required this.accessPoints,
    this.accountId,
    required this.id,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['accessPoints'] = Input.encodeList<
        GetMultiRegionAccessPointsAccessPoint,
        Map<String, dynamic>>(accessPoints, (value) => value.toMap());
    final accountIdValue = accountId;
    if (accountIdValue != null) {
      map['accountId'] = accountIdValue;
    }
    map['id'] = id;
    map['region'] = region;
    return map;
  }

  factory GetMultiRegionAccessPointsResult.fromMap(Map<String, dynamic> map) {
    return GetMultiRegionAccessPointsResult(
      accessPoints: Input.decodeList<GetMultiRegionAccessPointsAccessPoint>(
          map['accessPoints'],
          (value) => GetMultiRegionAccessPointsAccessPoint.fromMap(
              (value as Map).cast<String, dynamic>())),
      accountId: map['accountId'] == null ? null : map['accountId'] as String,
      id: map['id'] as String,
      region: map['region'] as String,
    );
  }
}
