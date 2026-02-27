import 'package:pulumi/pulumi.dart';
import 'eip_args.dart';

/// Provides an Elastic IP resource.
///
/// > **Note:** EIP may require IGW to exist prior to association. Use `depends_on` to set an explicit dependency on the IGW.
///
/// > **Note:** Do not use `network_interface` to associate the EIP to `aws.lb.LoadBalancer` or `aws.ec2.NatGateway` resources. Instead use the `allocation_id` available in those resources to allow AWS to manage the association, otherwise you will see `AuthFailure` errors.
///
/// ## Example Usage
///
/// ### Single EIP associated with an instance
///
///
///
/// ### Multiple EIPs associated with a single network interface
///
///
///
/// ### Attaching an EIP to an Instance with a pre-assigned private ip (VPC Only)
///
///
///
/// ### Allocating EIP from the BYOIP pool
///
///
///
/// ### Allocating EIP from the IPAM Pool
///
///
///
/// ## Import
///
/// Using `pulumi import`, import EIPs in a VPC using their Allocation ID. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/eip:Eip bar eipalloc-00a10e96
/// ```
class Eip extends CustomResource {
  /// IP address from an EC2 BYOIP pool. This option is only available for VPC EIPs.
  late final Output<String?> address;

  /// ID that AWS assigns to represent the allocation of the Elastic IP address for use with instances in a VPC.
  late final Output<String> allocationId;
  late final Output<String> arn;

  /// User-specified primary or secondary private IP address to associate with the Elastic IP address. If no private IP address is specified, the Elastic IP address is associated with the primary private IP address.
  late final Output<String?> associateWithPrivateIp;

  /// ID representing the association of the address with an instance in a VPC.
  late final Output<String> associationId;

  /// Carrier IP address.
  late final Output<String> carrierIp;

  /// Customer owned IP.
  late final Output<String> customerOwnedIp;

  /// ID  of a customer-owned address pool. For more on customer owned IP addressed check out [Customer-owned IP addresses guide](https://docs.aws.amazon.com/outposts/latest/userguide/outposts-networking-components.html#ip-addressing).
  late final Output<String?> customerOwnedIpv4Pool;

  /// Indicates if this EIP is for use in VPC (`vpc`).
  late final Output<String> domain;

  /// EC2 instance ID.
  late final Output<String> instance;

  /// The ID of an IPAM pool which has an Amazon-provided or BYOIP public IPv4 CIDR provisioned to it.
  late final Output<String> ipamPoolId;

  /// Location from which the IP address is advertised. Use this parameter to limit the address to this location.
  late final Output<String> networkBorderGroup;

  /// Network interface ID to associate with.
  late final Output<String> networkInterface;

  /// The Private DNS associated with the Elastic IP address (if in VPC).
  late final Output<String> privateDns;

  /// Contains the private IP address (if in VPC).
  late final Output<String> privateIp;

  /// The DNS pointer (PTR) record for the IP address.
  late final Output<String> ptrRecord;

  /// Public DNS associated with the Elastic IP address.
  late final Output<String> publicDns;

  /// Contains the public IP address.
  late final Output<String> publicIp;

  /// EC2 IPv4 address pool identifier or `amazon`.
  /// This option is only available for VPC EIPs.
  late final Output<String> publicIpv4Pool;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Map of tags to assign to the resource. Tags can only be applied to EIPs in a VPC. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ///
  /// > **NOTE:** You can specify either the `instance` ID or the `network_interface` ID, but not both.
  /// Including both will **not** return an error from the AWS API, but will have undefined behavior.
  /// See the relevant [AssociateAddress API Call][1] for more information.
  ///
  /// > **NOTE:** Specifying both `public_ipv4_pool` and `address` won't cause an error, however, only `address` will be used if both options are defined as the API only requires one of the two.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  Eip(
    String name, {
    EipArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ec2/eip:Eip',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.address = registerOutput<String?>('address');
    this.allocationId = registerOutput<String>('allocationId');
    this.arn = registerOutput<String>('arn');
    this.associateWithPrivateIp =
        registerOutput<String?>('associateWithPrivateIp');
    this.associationId = registerOutput<String>('associationId');
    this.carrierIp = registerOutput<String>('carrierIp');
    this.customerOwnedIp = registerOutput<String>('customerOwnedIp');
    this.customerOwnedIpv4Pool =
        registerOutput<String?>('customerOwnedIpv4Pool');
    this.domain = registerOutput<String>('domain');
    this.instance = registerOutput<String>('instance');
    this.ipamPoolId = registerOutput<String>('ipamPoolId');
    this.networkBorderGroup = registerOutput<String>('networkBorderGroup');
    this.networkInterface = registerOutput<String>('networkInterface');
    this.privateDns = registerOutput<String>('privateDns');
    this.privateIp = registerOutput<String>('privateIp');
    this.ptrRecord = registerOutput<String>('ptrRecord');
    this.publicDns = registerOutput<String>('publicDns');
    this.publicIp = registerOutput<String>('publicIp');
    this.publicIpv4Pool = registerOutput<String>('publicIpv4Pool');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
