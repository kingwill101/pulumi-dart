// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_s3_control_get_multi_region_access_point_get_multi_region_access_point_args_doc}
/// Arguments for getMultiRegionAccessPoint.
/// {@endtemplate}
/// {@macro pulumi_s3_control_get_multi_region_access_point_get_multi_region_access_point_args_doc}
class GetMultiRegionAccessPointArgs {
  /// The AWS account ID of the S3 Multi-Region Access Point. Defaults to automatically determined account ID of the AWS provider.
  final pulumi.Input<String>? accountId;
  /// The name of the Multi-Region Access Point.
  final pulumi.Input<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetMultiRegionAccessPointArgs].
  /// [accountId] The AWS account ID of the S3 Multi-Region Access Point. Defaults to automatically determined account ID of the AWS provider.
  /// [name] The name of the Multi-Region Access Point.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetMultiRegionAccessPointArgs({
    pulumi.Output<String>? accountId,
    required pulumi.Output<String> name,
    pulumi.Output<String>? region,
  }) :
      accountId = pulumi.Input.asOptionalInput<String>(accountId),
      name = pulumi.Input.asInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'name': name,
      'region': ?region,
    };
  }

  factory GetMultiRegionAccessPointArgs.fromMap(Map<String, dynamic> map) {
    return GetMultiRegionAccessPointArgs(
      accountId: map['accountId'] == null ? null : pulumi.Output.create<String>(map['accountId'] as String),
      name: pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

