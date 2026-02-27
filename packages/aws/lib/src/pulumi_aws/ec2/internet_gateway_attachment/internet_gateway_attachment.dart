import 'package:pulumi/pulumi.dart';
import 'internet_gateway_attachment_args.dart';

/// Provides a resource to create a VPC Internet Gateway Attachment.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Internet Gateway Attachments using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/internetGatewayAttachment:InternetGatewayAttachment example igw-c0a643a9:vpc-123456
/// ```
class InternetGatewayAttachment extends CustomResource {
  /// The ID of the internet gateway.
  late final Output<String> internetGatewayId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The ID of the VPC.
  late final Output<String> vpcId;

  InternetGatewayAttachment(
    String name, {
    InternetGatewayAttachmentArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ec2/internetGatewayAttachment:InternetGatewayAttachment',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.internetGatewayId = registerOutput<String>('internetGatewayId');
    this.region = registerOutput<String>('region');
    this.vpcId = registerOutput<String>('vpcId');
  }
}
