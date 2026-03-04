// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MultiRegionAccessPointPolicyDetails {
  /// The name of the Multi-Region Access Point.
  final pulumi.Input<String> name;

  /// A valid JSON document that specifies the policy that you want to associate with this Multi-Region Access Point. Once applied, the policy can be edited, but not deleted. For more information, see the documentation on [Multi-Region Access Point Permissions](https://docs.aws.amazon.com/AmazonS3/latest/userguide/MultiRegionAccessPointPermissions.html).
  ///
  /// &gt; **NOTE:** When you update the `policy`, the update is first listed as the proposed policy. After the update is finished and all Regions have been updated, the proposed policy is listed as the established policy. If both policies have the same version number, the proposed policy is the established policy.
  final pulumi.Input<String> policy;

  /// Creates a new [MultiRegionAccessPointPolicyDetails].
  /// [name] The name of the Multi-Region Access Point.
  /// [policy] A valid JSON document that specifies the policy that you want to associate with this Multi-Region Access Point. Once applied, the policy can be edited, but not deleted. For more information, see the documentation on [Multi-Region Access Point Permissions](https://docs.aws.amazon.com/AmazonS3/latest/userguide/MultiRegionAccessPointPermissions.html).
  MultiRegionAccessPointPolicyDetails({
    required this.name,
    required this.policy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'policy': policy};
  }

  factory MultiRegionAccessPointPolicyDetails.fromMap(
    Map<String, dynamic> map,
  ) {
    return MultiRegionAccessPointPolicyDetails(
      name: pulumi.Input.fromValue(map['name'] as String),
      policy: pulumi.Input.fromValue(map['policy'] as String),
    );
  }
}
