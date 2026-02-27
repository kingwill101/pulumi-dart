import 'package:pulumi/pulumi.dart' as pulumi;
import '../endpoint_access_vpc_endpoint/endpoint_access_vpc_endpoint.dart';
import 'endpoint_access_args.dart';

/// Creates a new Amazon Redshift endpoint access.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Redshift endpoint access using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:redshift/endpointAccess:EndpointAccess example example
/// ```
class EndpointAccess extends pulumi.CustomResource {
  /// The DNS address of the endpoint.
  late final pulumi.Output<String> address;

  /// The cluster identifier of the cluster to access.
  late final pulumi.Output<String> clusterIdentifier;

  /// The Redshift-managed VPC endpoint name.
  late final pulumi.Output<String> endpointName;

  /// The port number on which the cluster accepts incoming connections.
  late final pulumi.Output<int> port;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The Amazon Web Services account ID of the owner of the cluster. This is only required if the cluster is in another Amazon Web Services account.
  late final pulumi.Output<String> resourceOwner;

  /// The subnet group from which Amazon Redshift chooses the subnet to deploy the endpoint.
  late final pulumi.Output<String> subnetGroupName;

  /// The connection endpoint for connecting to an Amazon Redshift cluster through the proxy. See details below.
  late final pulumi.Output<List<EndpointAccessVpcEndpoint>> vpcEndpoints;

  /// The security group that defines the ports, protocols, and sources for inbound traffic that you are authorizing into your endpoint.
  late final pulumi.Output<List<String>> vpcSecurityGroupIds;

  EndpointAccess(
    String name, {
    EndpointAccessArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:redshift/endpointAccess:EndpointAccess',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.address = registerOutput<String>('address');
    this.clusterIdentifier = registerOutput<String>('clusterIdentifier');
    this.endpointName = registerOutput<String>('endpointName');
    this.port = registerOutput<int>('port');
    this.region = registerOutput<String>('region');
    this.resourceOwner = registerOutput<String>('resourceOwner');
    this.subnetGroupName = registerOutput<String>('subnetGroupName');
    this.vpcEndpoints =
        registerOutput<List<EndpointAccessVpcEndpoint>>('vpcEndpoints');
    this.vpcSecurityGroupIds =
        registerOutput<List<String>>('vpcSecurityGroupIds');
  }
}
