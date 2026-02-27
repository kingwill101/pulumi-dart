import 'package:pulumi/pulumi.dart';
import '../vpc_endpoint_vpc_options/vpc_endpoint_vpc_options2.dart';
import 'vpc_endpoint_args3.dart';

/// Manages an [AWS Opensearch VPC Endpoint](https://docs.aws.amazon.com/opensearch-service/latest/APIReference/API_CreateVpcEndpoint.html). Creates an Amazon OpenSearch Service-managed VPC endpoint.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import OpenSearch VPC endpoint connections using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:opensearch/vpcEndpoint:VpcEndpoint example endpoint-id
/// ```
class VpcEndpoint3 extends CustomResource {
  /// Specifies the Amazon Resource Name (ARN) of the domain to create the endpoint for
  late final Output<String> domainArn;

  /// The connection endpoint ID for connecting to the domain.
  late final Output<String> endpoint;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Options to specify the subnets and security groups for the endpoint.
  late final Output<VpcEndpointVpcOptions2> vpcOptions;

  VpcEndpoint3(
    String name, {
    VpcEndpointArgs3? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:opensearch/vpcEndpoint:VpcEndpoint',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.domainArn = registerOutput<String>('domainArn');
    this.endpoint = registerOutput<String>('endpoint');
    this.region = registerOutput<String>('region');
    this.vpcOptions = registerOutput<VpcEndpointVpcOptions2>('vpcOptions');
  }
}
