// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getAccessPoints.
class GetAccessPointsArgs2 {
  /// AWS account ID for the account that owns the specified access points. If omitted, defaults to the caller's account ID.
  final Input<String>? accountId;

  /// Name of the bucket associated with the access points.
  final Input<String>? bucket;

  /// Unique identifier for the access points data source.
  final Input<String>? dataSourceId;

  /// Type of the data source that the access points are attached to. To return all access points set this argument to `ALL`.
  final Input<String>? dataSourceType;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  GetAccessPointsArgs2({
    this.accountId,
    this.bucket,
    this.dataSourceId,
    this.dataSourceType,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
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
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetAccessPointsArgs2.fromMap(Map<String, dynamic> map) {
    return GetAccessPointsArgs2(
      accountId: Input.asOptionalInput<String>(map['accountId']),
      bucket: Input.asOptionalInput<String>(map['bucket']),
      dataSourceId: Input.asOptionalInput<String>(map['dataSourceId']),
      dataSourceType: Input.asOptionalInput<String>(map['dataSourceType']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
