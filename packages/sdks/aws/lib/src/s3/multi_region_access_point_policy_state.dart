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
    pulumi.Output<String>? accountId,
    pulumi.Output<MultiRegionAccessPointPolicyDetails>? details,
    pulumi.Output<String>? established,
    pulumi.Output<String>? proposed,
    pulumi.Output<String>? region,
  }) :
      accountId = pulumi.Input.asOptionalInput<String>(accountId),
      details = pulumi.Input.asOptionalInput<MultiRegionAccessPointPolicyDetails>(details),
      established = pulumi.Input.asOptionalInput<String>(established),
      proposed = pulumi.Input.asOptionalInput<String>(proposed),
      region = pulumi.Input.asOptionalInput<String>(region);

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
      accountId: map['accountId'] == null ? null : pulumi.Output.create<String>(map['accountId'] as String),
      details: map['details'] == null ? null : pulumi.Output.create<MultiRegionAccessPointPolicyDetails>(MultiRegionAccessPointPolicyDetails.fromMap((map['details'] as Map).cast<String, dynamic>())),
      established: map['established'] == null ? null : pulumi.Output.create<String>(map['established'] as String),
      proposed: map['proposed'] == null ? null : pulumi.Output.create<String>(map['proposed'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

