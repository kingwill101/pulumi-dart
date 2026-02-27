import 'package:pulumi/pulumi.dart';
import '../vpc_ingress_connection_ingress_vpc_configuration/vpc_ingress_connection_ingress_vpc_configuration.dart';
import 'vpc_ingress_connection_args.dart';

/// Manages an App Runner VPC Ingress Connection.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the App Runner VPC ingress connection.
///
///
/// Using `pulumi import`, import App Runner VPC Ingress Connection using the `arn`. For example:
///
/// ```sh
/// $ pulumi import aws:apprunner/vpcIngressConnection:VpcIngressConnection example "arn:aws:apprunner:us-west-2:837424938642:vpcingressconnection/example/b379f86381d74825832c2e82080342fa"
/// ```
class VpcIngressConnection extends CustomResource {
  /// The Amazon Resource Name (ARN) of the VPC Ingress Connection.
  late final Output<String> arn;

  /// The domain name associated with the VPC Ingress Connection resource.
  late final Output<String> domainName;

  /// Specifications for the customer’s Amazon VPC and the related AWS PrivateLink VPC endpoint that are used to create the VPC Ingress Connection resource. See Ingress VPC Configuration below for more details.
  late final Output<VpcIngressConnectionIngressVpcConfiguration>
      ingressVpcConfiguration;

  /// A name for the VPC Ingress Connection resource. It must be unique across all the active VPC Ingress Connections in your AWS account in the AWS Region.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The Amazon Resource Name (ARN) for this App Runner service that is used to create the VPC Ingress Connection resource.
  late final Output<String> serviceArn;

  /// The current status of the VPC Ingress Connection.
  late final Output<String> status;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  VpcIngressConnection(
    String name, {
    VpcIngressConnectionArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:apprunner/vpcIngressConnection:VpcIngressConnection',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.domainName = registerOutput<String>('domainName');
    this.ingressVpcConfiguration =
        registerOutput<VpcIngressConnectionIngressVpcConfiguration>(
            'ingressVpcConfiguration');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.serviceArn = registerOutput<String>('serviceArn');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
