// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'multi_region_access_point_policy_details.dart';

/// Input properties used for looking up and filtering MultiRegionAccessPointPolicy resources.
class MultiRegionAccessPointPolicyState {
  /// The AWS account ID for the owner of the Multi-Region Access Point. Defaults to automatically determined account ID of the AWS provider.
  final pulumi.Input<String>? accountId;
  /// A configuration block containing details about the policy for the Multi-Region Access Point. See Details Configuration Block below for more details
  final pulumi.Input<MultiRegionAccessPointPolicyDetails>? details;
  /// The last established policy for the Multi-Region Access Point.
  final pulumi.Input<String>? established;
  /// The proposed policy for the Multi-Region Access Point.
  final pulumi.Input<String>? proposed;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [MultiRegionAccessPointPolicyState].
  /// [accountId] The AWS account ID for the owner of the Multi-Region Access Point. Defaults to automatically determined account ID of the AWS provider.
  /// [details] A configuration block containing details about the policy for the Multi-Region Access Point. See Details Configuration Block below for more details
  /// [established] The last established policy for the Multi-Region Access Point.
  /// [proposed] The proposed policy for the Multi-Region Access Point.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  MultiRegionAccessPointPolicyState({
    this.accountId,
    this.details,
    this.established,
    this.proposed,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'details': ?pulumi.Input.mapOptionalInputValue<MultiRegionAccessPointPolicyDetails, Map<String, dynamic>>(details, (value) => value.toMap()),
      'established': ?established,
      'proposed': ?proposed,
      'region': ?region,
    };
  }

  factory MultiRegionAccessPointPolicyState.fromMap(Map<String, dynamic> map) {
    return MultiRegionAccessPointPolicyState(
      accountId: map['accountId'] == null ? null : (map['accountId'] as String).input(),
      details: map['details'] == null ? null : (MultiRegionAccessPointPolicyDetails.fromMap((map['details'] as Map).cast<String, dynamic>())).input(),
      established: map['established'] == null ? null : (map['established'] as String).input(),
      proposed: map['proposed'] == null ? null : (map['proposed'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
    );
  }
}

