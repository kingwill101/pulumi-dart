import 'package:pulumi/pulumi.dart';
import 'vpc_link_args.dart';

/// Provides an API Gateway VPC Link.
///
/// > **Note:** Amazon API Gateway Version 1 VPC Links enable private integrations that connect REST APIs to private resources in a VPC.
/// To enable private integration for HTTP APIs, use the Amazon API Gateway Version 2 VPC Link resource.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import API Gateway VPC Link using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:apigateway/vpcLink:VpcLink example 12345abcde
/// ```
class VpcLink extends CustomResource {
  late final Output<String> arn;

  /// Description of the VPC link.
  late final Output<String?> description;

  /// Name used to label and identify the VPC link.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// List of network load balancer arns in the VPC targeted by the VPC link. Currently AWS only supports 1 target.
  late final Output<String> targetArn;

  VpcLink(
    String name, {
    VpcLinkArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:apigateway/vpcLink:VpcLink',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.targetArn = registerOutput<String>('targetArn');
  }
}
