// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_s3_control_get_multi_region_access_point_get_multi_region_access_point_args_doc}
/// Arguments for getMultiRegionAccessPoint.
/// {@endtemplate}
/// {@macro pulumi_s3_control_get_multi_region_access_point_get_multi_region_access_point_args_doc}
class GetMultiRegionAccessPointArgs {
  /// AWS account ID of the S3 Multi-Region Access Point. Defaults to automatically determined account ID of the AWS provider.
  final pulumi.Input<String>? accountId;
  /// Name of the Multi-Region Access Point.
  final pulumi.Input<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetMultiRegionAccessPointArgs].
  /// [accountId] AWS account ID of the S3 Multi-Region Access Point. Defaults to automatically determined account ID of the AWS provider.
  /// [name] Name of the Multi-Region Access Point.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const GetMultiRegionAccessPointArgs({
    this.accountId,
    required this.name,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'name': name,
      'region': ?region,
    };
  }

  factory GetMultiRegionAccessPointArgs.fromMap(Map<String, dynamic> map) {
    return GetMultiRegionAccessPointArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
