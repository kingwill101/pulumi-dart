import 'package:pulumi/pulumi.dart';
import 'access_point_policy_args.dart';

/// Provides a resource to manage an S3 Access Point resource policy.
///
/// > **NOTE on Access Points and Access Point Policies:** The provider provides both a standalone Access Point Policy resource and an Access Point resource with a resource policy defined in-line. You cannot use an Access Point with in-line resource policy in conjunction with an Access Point Policy resource. Doing so will cause a conflict of policies and will overwrite the access point's resource policy.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Access Point policies using the `access_point_arn`. For example:
///
/// ```sh
/// $ pulumi import aws:s3control/accessPointPolicy:AccessPointPolicy example arn:aws:s3:us-west-2:123456789012:accesspoint/example
/// ```
class AccessPointPolicy extends CustomResource {
  /// The ARN of the access point that you want to associate with the specified policy.
  late final Output<String> accessPointArn;

  /// Indicates whether this access point currently has a policy that allows public access.
  late final Output<bool> hasPublicAccessPolicy;

  /// The policy that you want to apply to the specified access point.
  late final Output<String> policy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  AccessPointPolicy(
    String name, {
    AccessPointPolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:s3control/accessPointPolicy:AccessPointPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.accessPointArn = registerOutput<String>('accessPointArn');
    this.hasPublicAccessPolicy = registerOutput<bool>('hasPublicAccessPolicy');
    this.policy = registerOutput<String>('policy');
    this.region = registerOutput<String>('region');
  }
}
