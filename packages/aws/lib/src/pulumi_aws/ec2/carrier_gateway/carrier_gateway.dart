import 'package:pulumi/pulumi.dart' as pulumi;
import 'carrier_gateway_args.dart';

/// Manages an EC2 Carrier Gateway. See the AWS [documentation](https://docs.aws.amazon.com/vpc/latest/userguide/Carrier_Gateway.html) for more information.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.ec2.CarrierGateway` using the carrier gateway's ID. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/carrierGateway:CarrierGateway example cgw-12345
/// ```
class CarrierGateway extends pulumi.CustomResource {
  /// The ARN of the carrier gateway.
  late final pulumi.Output<String> arn;

  /// The AWS account ID of the owner of the carrier gateway.
  late final pulumi.Output<String> ownerId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// The ID of the VPC to associate with the carrier gateway.
  late final pulumi.Output<String> vpcId;

  CarrierGateway(
    String name, {
    CarrierGatewayArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/carrierGateway:CarrierGateway',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.ownerId = registerOutput<String>('ownerId');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.vpcId = registerOutput<String>('vpcId');
  }
}
