import 'package:pulumi/pulumi.dart';
import '../resource_gateway_timeouts/resource_gateway_timeouts.dart';
import 'resource_gateway_args.dart';

/// Resource for managing an AWS VPC Lattice Resource Gateway.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ### Specifying IP address type
///
///
///
/// ### With security groups
///
///
///
/// ## Import
///
/// Using `pulumi import`, import VPC Lattice Resource Gateway using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:vpclattice/resourceGateway:ResourceGateway example rgw-0a1b2c3d4e5f
/// ```
class ResourceGateway extends CustomResource {
  /// ARN of the resource gateway.
  late final Output<String> arn;

  /// IP address type used by the resource gateway. Valid values are `IPV4`, `IPV6`, and `DUALSTACK`. The IP address type of a resource gateway must be compatible with the subnets of the resource gateway and the IP address type of the resource.
  late final Output<String> ipAddressType;

  /// The number of IPv4 addresses per ENI for your resource. This argument is only applicable to `IPV4` and `DUALSTACK` IP address types. Defaults to `16`.
  late final Output<int> ipv4AddressesPerEni;

  /// Name of the resource gateway.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Security group IDs associated with the resource gateway. The security groups must be in the same VPC.
  late final Output<List<String>> securityGroupIds;

  /// Status of the resource gateway.
  late final Output<String> status;

  /// IDs of the VPC subnets in which to create the resource gateway.
  late final Output<List<String>> subnetIds;

  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;
  late final Output<ResourceGatewayTimeouts?> timeouts;

  /// ID of the VPC for the resource gateway.
  ///
  /// The following arguments are optional:
  late final Output<String> vpcId;

  ResourceGateway(
    String name, {
    ResourceGatewayArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:vpclattice/resourceGateway:ResourceGateway',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.ipAddressType = registerOutput<String>('ipAddressType');
    this.ipv4AddressesPerEni = registerOutput<int>('ipv4AddressesPerEni');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.securityGroupIds = registerOutput<List<String>>('securityGroupIds');
    this.status = registerOutput<String>('status');
    this.subnetIds = registerOutput<List<String>>('subnetIds');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeouts = registerOutput<ResourceGatewayTimeouts?>('timeouts');
    this.vpcId = registerOutput<String>('vpcId');
  }
}
