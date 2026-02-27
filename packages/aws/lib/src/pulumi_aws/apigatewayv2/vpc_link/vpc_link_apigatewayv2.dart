import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpc_link_apigatewayv2_args.dart';

/// Manages an Amazon API Gateway Version 2 VPC Link.
///
/// > **Note:** Amazon API Gateway Version 2 VPC Links enable private integrations that connect HTTP APIs to private resources in a VPC.
/// To enable private integration for REST APIs, use the Amazon API Gateway Version 1 VPC Link resource.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.apigatewayv2.VpcLink` using the VPC Link identifier. For example:
///
/// ```sh
/// $ pulumi import aws:apigatewayv2/vpcLink:VpcLink example aabbccddee
/// ```
class VpcLinkApigatewayv2 extends pulumi.CustomResource {
  /// VPC Link ARN.
  late final pulumi.Output<String> arn;

  /// Name of the VPC Link. Must be between 1 and 128 characters in length.
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Security group IDs for the VPC Link.
  late final pulumi.Output<List<String>> securityGroupIds;

  /// Subnet IDs for the VPC Link.
  late final pulumi.Output<List<String>> subnetIds;

  /// Map of tags to assign to the VPC Link. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  VpcLinkApigatewayv2(
    String name, {
    VpcLinkApigatewayv2Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:apigatewayv2/vpcLink:VpcLink',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.securityGroupIds = registerOutput<List<String>>('securityGroupIds');
    this.subnetIds = registerOutput<List<String>>('subnetIds');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
