import 'package:pulumi/pulumi.dart' as pulumi;
import '../vpc_endpoint_vpc_options/vpc_endpoint_vpc_options_opensearch.dart';
import 'vpc_endpoint_opensearch_args.dart';

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
class VpcEndpointOpensearch extends pulumi.CustomResource {
  /// Specifies the Amazon Resource Name (ARN) of the domain to create the endpoint for
  late final pulumi.Output<String> domainArn;

  /// The connection endpoint ID for connecting to the domain.
  late final pulumi.Output<String> endpoint;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Options to specify the subnets and security groups for the endpoint.
  late final pulumi.Output<VpcEndpointVpcOptionsOpensearch> vpcOptions;

  VpcEndpointOpensearch(
    String name, {
    VpcEndpointOpensearchArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:opensearch/vpcEndpoint:VpcEndpoint',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.domainArn = registerOutput<String>('domainArn');
    this.endpoint = registerOutput<String>('endpoint');
    this.region = registerOutput<String>('region');
    this.vpcOptions =
        registerOutput<VpcEndpointVpcOptionsOpensearch>('vpcOptions');
  }
}
