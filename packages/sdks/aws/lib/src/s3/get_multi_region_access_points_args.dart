// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_s3_control_get_multi_region_access_points_get_multi_region_access_points_args_doc}
/// Arguments for getMultiRegionAccessPoints.
/// {@endtemplate}
/// {@macro pulumi_s3_control_get_multi_region_access_points_get_multi_region_access_points_args_doc}
class GetMultiRegionAccessPointsArgs {
  /// AWS account ID for the account that owns the multi-region access points. If omitted, defaults to the caller's account ID.
  final pulumi.Input<String>? accountId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetMultiRegionAccessPointsArgs].
  /// [accountId] AWS account ID for the account that owns the multi-region access points. If omitted, defaults to the caller's account ID.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetMultiRegionAccessPointsArgs({
    this.accountId,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'region': ?region,
    };
  }

  factory GetMultiRegionAccessPointsArgs.fromMap(Map<String, dynamic> map) {
    return GetMultiRegionAccessPointsArgs(
      accountId: map['accountId'] == null ? null : (map['accountId'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
    );
  }
}

