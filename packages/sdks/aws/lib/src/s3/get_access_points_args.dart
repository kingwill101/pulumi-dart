// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_s3_control_get_access_points_get_access_points_args_doc}
/// Arguments for getAccessPoints.
/// {@endtemplate}
/// {@macro pulumi_s3_control_get_access_points_get_access_points_args_doc}
class GetAccessPointsArgs {
  /// AWS account ID for the account that owns the specified access points. If omitted, defaults to the caller's account ID.
  final pulumi.Input<String>? accountId;

  /// Name of the bucket associated with the access points.
  final pulumi.Input<String>? bucket;

  /// Unique identifier for the access points data source.
  final pulumi.Input<String>? dataSourceId;

  /// Type of the data source that the access points are attached to. To return all access points set this argument to `ALL`.
  final pulumi.Input<String>? dataSourceType;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetAccessPointsArgs].
  /// [accountId] AWS account ID for the account that owns the specified access points. If omitted, defaults to the caller's account ID.
  /// [bucket] Name of the bucket associated with the access points.
  /// [dataSourceId] Unique identifier for the access points data source.
  /// [dataSourceType] Type of the data source that the access points are attached to. To return all access points set this argument to `ALL`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetAccessPointsArgs({
    this.accountId,
    this.bucket,
    this.dataSourceId,
    this.dataSourceType,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'bucket': ?bucket,
      'dataSourceId': ?dataSourceId,
      'dataSourceType': ?dataSourceType,
      'region': ?region,
    };
  }

  factory GetAccessPointsArgs.fromMap(Map<String, dynamic> map) {
    return GetAccessPointsArgs(
      accountId: (() {
        final guardedValue = map['accountId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      bucket: (() {
        final guardedValue = map['bucket'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dataSourceId: (() {
        final guardedValue = map['dataSourceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dataSourceType: (() {
        final guardedValue = map['dataSourceType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
