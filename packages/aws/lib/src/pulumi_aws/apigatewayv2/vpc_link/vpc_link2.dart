import 'package:pulumi/pulumi.dart';
import 'vpc_link_args2.dart';

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
class VpcLink2 extends CustomResource {
  /// VPC Link ARN.
  late final Output<String> arn;

  /// Name of the VPC Link. Must be between 1 and 128 characters in length.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Security group IDs for the VPC Link.
  late final Output<List<String>> securityGroupIds;

  /// Subnet IDs for the VPC Link.
  late final Output<List<String>> subnetIds;

  /// Map of tags to assign to the VPC Link. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  VpcLink2(
    String name, {
    VpcLinkArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:apigatewayv2/vpcLink:VpcLink',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
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
