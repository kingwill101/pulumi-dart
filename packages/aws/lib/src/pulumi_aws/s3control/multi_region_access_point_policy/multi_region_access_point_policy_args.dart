// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../multi_region_access_point_policy_details/multi_region_access_point_policy_details.dart';

/// The set of arguments for MultiRegionAccessPointPolicy.
class MultiRegionAccessPointPolicyArgs {
  /// The AWS account ID for the owner of the Multi-Region Access Point. Defaults to automatically determined account ID of the AWS provider.
  final Input<String>? accountId;

  /// A configuration block containing details about the policy for the Multi-Region Access Point. See Details Configuration Block below for more details
  final Input<MultiRegionAccessPointPolicyDetails> details;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  MultiRegionAccessPointPolicyArgs({
    this.accountId,
    required this.details,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final accountIdValue = accountId;
    if (accountIdValue != null) {
      map['accountId'] = accountIdValue;
    }
    map['details'] = Input.mapInputValue<MultiRegionAccessPointPolicyDetails,
        Map<String, dynamic>>(details, (value) => value.toMap());
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory MultiRegionAccessPointPolicyArgs.fromMap(Map<String, dynamic> map) {
    return MultiRegionAccessPointPolicyArgs(
      accountId: Input.asOptionalInput<String>(map['accountId']),
      details:
          Input.asInput<MultiRegionAccessPointPolicyDetails>(map['details']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
