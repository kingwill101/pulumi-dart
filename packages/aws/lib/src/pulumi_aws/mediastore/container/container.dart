import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_args.dart';

/// Provides a MediaStore Container.
///
/// !> **WARNING:** _This resource is deprecated and will be removed in a future version._ AWS has [announced](https://aws.amazon.com/blogs/media/support-for-aws-elemental-mediastore-ending-soon/) the discontinuation of AWS Elemental MediaStore, effective **November 13, 2025**. Users should begin transitioning to alternative solutions as soon as possible. For **simple live streaming workflows**, AWS recommends migrating to **Amazon S3**. For **advanced use cases** that require features such as packaging, DRM, or cross-region redundancy, consider using **AWS Elemental MediaPackage**.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import MediaStore Container using the MediaStore Container Name. For example:
///
/// ```sh
/// $ pulumi import aws:mediastore/container:Container example example
/// ```
class Container extends pulumi.CustomResource {
  /// The ARN of the container.
  late final pulumi.Output<String> arn;

  /// The DNS endpoint of the container.
  late final pulumi.Output<String> endpoint;

  /// The name of the container. Must contain alphanumeric characters or underscores.
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  Container(
    String name, {
    ContainerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:mediastore/container:Container',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.endpoint = registerOutput<String>('endpoint');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
