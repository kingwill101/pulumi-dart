import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint_private_dns_args.dart';

/// Resource for enabling private DNS on an AWS VPC (Virtual Private Cloud) Endpoint.
///
/// > When using this resource, the `private_dns_enabled` argument should be omitted on the parent `aws.ec2.VpcEndpoint` resource.
/// Setting the value both places can lead to unintended behavior and persistent differences.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import a VPC (Virtual Private Cloud) Endpoint Private DNS using the `vpc_endpoint_id`. For example:
///
/// ```sh
/// $ pulumi import aws:vpc/endpointPrivateDns:EndpointPrivateDns example vpce-abcd-1234
/// ```
class EndpointPrivateDns extends pulumi.CustomResource {
  /// Indicates whether a private hosted zone is associated with the VPC. Only applicable for `Interface` endpoints.
  late final pulumi.Output<bool> privateDnsEnabled;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// VPC endpoint identifier.
  late final pulumi.Output<String> vpcEndpointId;

  EndpointPrivateDns(
    String name, {
    EndpointPrivateDnsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:vpc/endpointPrivateDns:EndpointPrivateDns',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.privateDnsEnabled = registerOutput<bool>('privateDnsEnabled');
    this.region = registerOutput<String>('region');
    this.vpcEndpointId = registerOutput<String>('vpcEndpointId');
  }
}
