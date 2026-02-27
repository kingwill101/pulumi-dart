import 'package:pulumi/pulumi.dart';
import 'container_policy_args.dart';

/// Provides a MediaStore Container Policy.
///
/// !> **WARNING:** _This resource is deprecated and will be removed in a future version._ AWS has [announced](https://aws.amazon.com/blogs/media/support-for-aws-elemental-mediastore-ending-soon/) the discontinuation of AWS Elemental MediaStore, effective **November 13, 2025**. Users should begin transitioning to alternative solutions as soon as possible. For **simple live streaming workflows**, AWS recommends migrating to **Amazon S3**. For **advanced use cases** that require features such as packaging, DRM, or cross-region redundancy, consider using **AWS Elemental MediaPackage**.
///
/// > **NOTE:** We suggest using `jsonencode()` or `aws.iam.getPolicyDocument` when assigning a value to `policy`. They seamlessly translate Terraform language into JSON, enabling you to maintain consistency within your configuration without the need for context switches. Also, you can sidestep potential complications arising from formatting discrepancies, whitespace inconsistencies, and other nuances inherent to JSON.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import MediaStore Container Policy using the MediaStore Container Name. For example:
///
/// ```sh
/// $ pulumi import aws:mediastore/containerPolicy:ContainerPolicy example example
/// ```
class ContainerPolicy extends CustomResource {
  /// The name of the container.
  late final Output<String> containerName;

  /// The contents of the policy.
  late final Output<String> policy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  ContainerPolicy(
    String name, {
    ContainerPolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:mediastore/containerPolicy:ContainerPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.containerName = registerOutput<String>('containerName');
    this.policy = registerOutput<String>('policy');
    this.region = registerOutput<String>('region');
  }
}
