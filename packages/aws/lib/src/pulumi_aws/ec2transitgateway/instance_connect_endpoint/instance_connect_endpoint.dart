import 'package:pulumi/pulumi.dart';
import '../instance_connect_endpoint_timeouts/instance_connect_endpoint_timeouts.dart';
import 'instance_connect_endpoint_args.dart';

/// Manages an EC2 Instance Connect Endpoint.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import EC2 Instance Connect Endpoints using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:ec2transitgateway/instanceConnectEndpoint:InstanceConnectEndpoint example eice-012345678
/// ```
class InstanceConnectEndpoint extends CustomResource {
  /// The Amazon Resource Name (ARN) of the EC2 Instance Connect Endpoint.
  late final Output<String> arn;

  /// The Availability Zone of the EC2 Instance Connect Endpoint.
  late final Output<String> availabilityZone;

  /// The DNS name of the EC2 Instance Connect Endpoint.
  late final Output<String> dnsName;

  /// The DNS name of the EC2 Instance Connect FIPS Endpoint.
  late final Output<String> fipsDnsName;

  /// IP address type of the endpoint. Valid values are `ipv4`, `ipv6`, and `dualstack`. The default value is determined by the IP address type of the subnet. See the [AWS documentation](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateInstanceConnectEndpoint.html) for more details.
  late final Output<String> ipAddressType;

  /// The IDs of the ENIs that Amazon EC2 automatically created when creating the EC2 Instance Connect Endpoint.
  late final Output<List<String>> networkInterfaceIds;

  /// The ID of the AWS account that created the EC2 Instance Connect Endpoint.
  late final Output<String> ownerId;

  /// Indicates whether your client's IP address is preserved as the source. Default: `true`.
  late final Output<bool> preserveClientIp;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// One or more security groups to associate with the endpoint. If you don't specify a security group, the default security group for the VPC will be associated with the endpoint.
  late final Output<List<String>> securityGroupIds;

  /// The ID of the subnet in which to create the EC2 Instance Connect Endpoint.
  late final Output<String> subnetId;

  /// Map of tags to assign to this resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;
  late final Output<InstanceConnectEndpointTimeouts?> timeouts;

  /// The ID of the VPC in which the EC2 Instance Connect Endpoint was created.
  late final Output<String> vpcId;

  InstanceConnectEndpoint(
    String name, {
    InstanceConnectEndpointArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ec2transitgateway/instanceConnectEndpoint:InstanceConnectEndpoint',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.availabilityZone = registerOutput<String>('availabilityZone');
    this.dnsName = registerOutput<String>('dnsName');
    this.fipsDnsName = registerOutput<String>('fipsDnsName');
    this.ipAddressType = registerOutput<String>('ipAddressType');
    this.networkInterfaceIds =
        registerOutput<List<String>>('networkInterfaceIds');
    this.ownerId = registerOutput<String>('ownerId');
    this.preserveClientIp = registerOutput<bool>('preserveClientIp');
    this.region = registerOutput<String>('region');
    this.securityGroupIds = registerOutput<List<String>>('securityGroupIds');
    this.subnetId = registerOutput<String>('subnetId');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeouts =
        registerOutput<InstanceConnectEndpointTimeouts?>('timeouts');
    this.vpcId = registerOutput<String>('vpcId');
  }
}
