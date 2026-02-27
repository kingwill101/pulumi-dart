import 'package:pulumi/pulumi.dart' as pulumi;
import 'protection_args.dart';

/// Enables AWS Shield Advanced for a specific AWS resource.
/// The resource can be an Amazon CloudFront distribution, Elastic Load Balancing load balancer, AWS Global Accelerator accelerator, Elastic IP Address, or an Amazon Route 53 hosted zone.
///
/// ## Example Usage
///
/// ### Create protection
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Shield protection resources using specifying their ID. For example:
///
/// ```sh
/// $ pulumi import aws:shield/protection:Protection example ff9592dc-22f3-4e88-afa1-7b29fde9669a
/// ```
class Protection extends pulumi.CustomResource {
  /// The ARN of the Protection.
  late final pulumi.Output<String> arn;

  /// A friendly name for the Protection you are creating.
  late final pulumi.Output<String> name;

  /// The ARN (Amazon Resource Name) of the resource to be protected.
  late final pulumi.Output<String> resourceArn;

  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  Protection(
    String name, {
    ProtectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:shield/protection:Protection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.name = registerOutput<String>('name');
    this.resourceArn = registerOutput<String>('resourceArn');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
