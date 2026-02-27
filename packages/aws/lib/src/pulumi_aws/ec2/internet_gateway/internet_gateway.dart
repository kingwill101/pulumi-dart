import 'package:pulumi/pulumi.dart';
import 'internet_gateway_args.dart';

/// Provides a resource to create a VPC Internet Gateway.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Internet Gateways using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/internetGateway:InternetGateway gw igw-c0a643a9
/// ```
class InternetGateway extends CustomResource {
  /// The ARN of the Internet Gateway.
  late final Output<String> arn;

  /// The ID of the AWS account that owns the internet gateway.
  late final Output<String> ownerId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ///
  /// > **Note:** It's recommended to denote that the AWS Instance or Elastic IP depends on the Internet Gateway. For example:
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// The VPC ID to create in.  See the aws.ec2.InternetGatewayAttachment resource for an alternate way to attach an Internet Gateway to a VPC.
  late final Output<String> vpcId;

  InternetGateway(
    String name, {
    InternetGatewayArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ec2/internetGateway:InternetGateway',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.ownerId = registerOutput<String>('ownerId');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.vpcId = registerOutput<String>('vpcId');
  }
}
