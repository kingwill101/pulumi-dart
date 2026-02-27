import 'package:pulumi/pulumi.dart';
import '../serverless_vpc_endpoint_timeouts/serverless_vpc_endpoint_timeouts.dart';
import 'serverless_vpc_endpoint_args.dart';

/// Resource for managing an AWS OpenSearchServerless VPC Endpoint.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import OpenSearchServerless Vpc Endpointa using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:opensearch/serverlessVpcEndpoint:ServerlessVpcEndpoint example vpce-8012925589
/// ```
class ServerlessVpcEndpoint extends CustomResource {
  /// Name of the interface endpoint.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// One or more security groups that define the ports, protocols, and sources for inbound traffic that you are authorizing into your endpoint. Up to 5 security groups can be provided.
  late final Output<List<String>> securityGroupIds;

  /// One or more subnet IDs from which you'll access OpenSearch Serverless. Up to 6 subnets can be provided.
  late final Output<List<String>> subnetIds;
  late final Output<ServerlessVpcEndpointTimeouts?> timeouts;

  /// ID of the VPC from which you'll access OpenSearch Serverless.
  ///
  /// The following arguments are optional:
  late final Output<String> vpcId;

  ServerlessVpcEndpoint(
    String name, {
    ServerlessVpcEndpointArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:opensearch/serverlessVpcEndpoint:ServerlessVpcEndpoint',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.securityGroupIds = registerOutput<List<String>>('securityGroupIds');
    this.subnetIds = registerOutput<List<String>>('subnetIds');
    this.timeouts = registerOutput<ServerlessVpcEndpointTimeouts?>('timeouts');
    this.vpcId = registerOutput<String>('vpcId');
  }
}
