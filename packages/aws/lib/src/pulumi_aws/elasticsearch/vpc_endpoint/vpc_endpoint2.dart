import 'package:pulumi/pulumi.dart';
import '../vpc_endpoint_vpc_options/vpc_endpoint_vpc_options.dart';
import 'vpc_endpoint_args2.dart';

/// Manages an [AWS Elasticsearch VPC Endpoint](https://docs.aws.amazon.com/elasticsearch-service/latest/APIReference/API_CreateVpcEndpoint.html). Creates an Amazon elasticsearch Service-managed VPC endpoint.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import elasticsearch VPC endpoint connections using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:elasticsearch/vpcEndpoint:VpcEndpoint example endpoint-id
/// ```
class VpcEndpoint2 extends CustomResource {
  /// Specifies the Amazon Resource Name (ARN) of the domain to create the endpoint for
  late final Output<String> domainArn;

  /// The connection endpoint ID for connecting to the domain.
  late final Output<String> endpoint;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Options to specify the subnets and security groups for the endpoint.
  late final Output<VpcEndpointVpcOptions> vpcOptions;

  VpcEndpoint2(
    String name, {
    VpcEndpointArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:elasticsearch/vpcEndpoint:VpcEndpoint',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.domainArn = registerOutput<String>('domainArn');
    this.endpoint = registerOutput<String>('endpoint');
    this.region = registerOutput<String>('region');
    this.vpcOptions = registerOutput<VpcEndpointVpcOptions>('vpcOptions');
  }
}
