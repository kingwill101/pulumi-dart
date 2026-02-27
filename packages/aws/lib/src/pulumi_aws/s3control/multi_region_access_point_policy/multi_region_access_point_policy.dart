import 'package:pulumi/pulumi.dart';
import '../multi_region_access_point_policy_details/multi_region_access_point_policy_details.dart';
import 'multi_region_access_point_policy_args.dart';

/// Provides a resource to manage an S3 Multi-Region Access Point access control policy.
///
/// ## Example Usage
///
/// ### Basic Example
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Multi-Region Access Point Policies using the `account_id` and `name` of the Multi-Region Access Point separated by a colon (`:`). For example:
///
/// ```sh
/// $ pulumi import aws:s3control/multiRegionAccessPointPolicy:MultiRegionAccessPointPolicy example 123456789012:example
/// ```
class MultiRegionAccessPointPolicy extends CustomResource {
  /// The AWS account ID for the owner of the Multi-Region Access Point. Defaults to automatically determined account ID of the AWS provider.
  late final Output<String> accountId;

  /// A configuration block containing details about the policy for the Multi-Region Access Point. See Details Configuration Block below for more details
  late final Output<MultiRegionAccessPointPolicyDetails> details;

  /// The last established policy for the Multi-Region Access Point.
  late final Output<String> established;

  /// The proposed policy for the Multi-Region Access Point.
  late final Output<String> proposed;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  MultiRegionAccessPointPolicy(
    String name, {
    MultiRegionAccessPointPolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:s3control/multiRegionAccessPointPolicy:MultiRegionAccessPointPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.accountId = registerOutput<String>('accountId');
    this.details =
        registerOutput<MultiRegionAccessPointPolicyDetails>('details');
    this.established = registerOutput<String>('established');
    this.proposed = registerOutput<String>('proposed');
    this.region = registerOutput<String>('region');
  }
}
