// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'multi_region_access_point_policy_details.dart';

/// {@template pulumi_s3_control_multi_region_access_point_policy_multi_region_access_point_policy_args_doc}
/// The set of arguments for MultiRegionAccessPointPolicy.
/// {@endtemplate}
/// {@macro pulumi_s3_control_multi_region_access_point_policy_multi_region_access_point_policy_args_doc}
class MultiRegionAccessPointPolicyArgs {
  /// The AWS account ID for the owner of the Multi-Region Access Point. Defaults to automatically determined account ID of the AWS provider.
  final pulumi.Input<String>? accountId;
  /// A configuration block containing details about the policy for the Multi-Region Access Point. See Details Configuration Block below for more details
  final pulumi.Input<MultiRegionAccessPointPolicyDetails> details;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [MultiRegionAccessPointPolicyArgs].
  /// [accountId] The AWS account ID for the owner of the Multi-Region Access Point. Defaults to automatically determined account ID of the AWS provider.
  /// [details] A configuration block containing details about the policy for the Multi-Region Access Point. See Details Configuration Block below for more details
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  MultiRegionAccessPointPolicyArgs({
    this.accountId,
    required this.details,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'details': pulumi.Input.mapInputValue<MultiRegionAccessPointPolicyDetails, Map<String, dynamic>>(details, (value) => value.toMap()),
      'region': ?region,
    };
  }

  factory MultiRegionAccessPointPolicyArgs.fromMap(Map<String, dynamic> map) {
    return MultiRegionAccessPointPolicyArgs(
      accountId: map['accountId'] == null ? null : ((map['accountId'] as String).input()).input(),
      details: (MultiRegionAccessPointPolicyDetails.fromMap((map['details']! as Map).cast<String, dynamic>())).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
    );
  }
}

