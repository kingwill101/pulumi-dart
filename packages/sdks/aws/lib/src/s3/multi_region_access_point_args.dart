// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'multi_region_access_point_details.dart';

/// {@template pulumi_s3_control_multi_region_access_point_multi_region_access_point_args_doc}
/// The set of arguments for MultiRegionAccessPoint.
/// {@endtemplate}
/// {@macro pulumi_s3_control_multi_region_access_point_multi_region_access_point_args_doc}
class MultiRegionAccessPointArgs {
  /// The AWS account ID for the owner of the buckets for which you want to create a Multi-Region Access Point. Defaults to automatically determined account ID of the AWS provider.
  final pulumi.Input<String>? accountId;

  /// A configuration block containing details about the Multi-Region Access Point. See Details Configuration Block below for more details
  final pulumi.Input<MultiRegionAccessPointDetails> details;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [MultiRegionAccessPointArgs].
  /// [accountId] The AWS account ID for the owner of the buckets for which you want to create a Multi-Region Access Point. Defaults to automatically determined account ID of the AWS provider.
  /// [details] A configuration block containing details about the Multi-Region Access Point. See Details Configuration Block below for more details
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  MultiRegionAccessPointArgs({
    this.accountId,
    required this.details,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'details':
          pulumi.Input.mapInputValue<
            MultiRegionAccessPointDetails,
            Map<String, dynamic>
          >(details, (value) => value.toMap()),
      'region': ?region,
    };
  }

  factory MultiRegionAccessPointArgs.fromMap(Map<String, dynamic> map) {
    return MultiRegionAccessPointArgs(
      accountId: (() {
        final guardedValue = map['accountId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      details: pulumi.Input.fromValue(
        MultiRegionAccessPointDetails.fromMap(
          (map['details']! as Map).cast<String, dynamic>(),
        ),
      ),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
