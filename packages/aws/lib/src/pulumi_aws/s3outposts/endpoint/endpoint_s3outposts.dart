import 'package:pulumi/pulumi.dart' as pulumi;
import '../endpoint_network_interface/endpoint_network_interface.dart';
import 'endpoint_s3outposts_args.dart';

/// Provides a resource to manage an S3 Outposts Endpoint.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import S3 Outposts Endpoints using Amazon Resource Name (ARN), EC2 Security Group identifier, and EC2 Subnet identifier, separated by commas (`,`). For example:
///
/// ```sh
/// $ pulumi import aws:s3outposts/endpoint:Endpoint example arn:aws:s3-outposts:us-east-1:123456789012:outpost/op-12345678/endpoint/0123456789abcdef,sg-12345678,subnet-12345678
/// ```
class EndpointS3outposts extends pulumi.CustomResource {
  /// Type of access for the network connectivity. Valid values are `Private` or `CustomerOwnedIp`.
  late final pulumi.Output<String> accessType;

  /// Amazon Resource Name (ARN) of the endpoint.
  late final pulumi.Output<String> arn;

  /// VPC CIDR block of the endpoint.
  late final pulumi.Output<String> cidrBlock;

  /// UTC creation time in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8).
  late final pulumi.Output<String> creationTime;

  /// The ID of a Customer Owned IP Pool. For more on customer owned IP addresses see the [User Guide](https://docs.aws.amazon.com/outposts/latest/userguide/local-rack.html#local-gateway-subnet).
  late final pulumi.Output<String?> customerOwnedIpv4Pool;

  /// Set of nested attributes for associated Elastic Network Interfaces (ENIs).
  late final pulumi.Output<List<EndpointNetworkInterface>> networkInterfaces;

  /// Identifier of the Outpost to contain this endpoint.
  late final pulumi.Output<String> outpostId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Identifier of the EC2 Security Group.
  late final pulumi.Output<String> securityGroupId;

  /// Identifier of the EC2 Subnet.
  late final pulumi.Output<String> subnetId;

  EndpointS3outposts(
    String name, {
    EndpointS3outpostsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:s3outposts/endpoint:Endpoint',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accessType = registerOutput<String>('accessType');
    this.arn = registerOutput<String>('arn');
    this.cidrBlock = registerOutput<String>('cidrBlock');
    this.creationTime = registerOutput<String>('creationTime');
    this.customerOwnedIpv4Pool =
        registerOutput<String?>('customerOwnedIpv4Pool');
    this.networkInterfaces =
        registerOutput<List<EndpointNetworkInterface>>('networkInterfaces');
    this.outpostId = registerOutput<String>('outpostId');
    this.region = registerOutput<String>('region');
    this.securityGroupId = registerOutput<String>('securityGroupId');
    this.subnetId = registerOutput<String>('subnetId');
  }
}
