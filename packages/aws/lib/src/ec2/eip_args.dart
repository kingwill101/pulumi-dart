// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ec2_eip_eip_args_doc}
/// The set of arguments for Eip.
/// {@endtemplate}
/// {@macro pulumi_ec2_eip_eip_args_doc}
class EipArgs {
  /// IP address from an EC2 BYOIP pool. This option is only available for VPC EIPs.
  final pulumi.Input<String>? address;
  /// User-specified primary or secondary private IP address to associate with the Elastic IP address. If no private IP address is specified, the Elastic IP address is associated with the primary private IP address.
  final pulumi.Input<String>? associateWithPrivateIp;
  /// ID  of a customer-owned address pool. For more on customer owned IP addressed check out [Customer-owned IP addresses guide](https://docs.aws.amazon.com/outposts/latest/userguide/outposts-networking-components.html#ip-addressing).
  final pulumi.Input<String>? customerOwnedIpv4Pool;
  /// Indicates if this EIP is for use in VPC (`vpc`).
  final pulumi.Input<String>? domain;
  /// EC2 instance ID.
  final pulumi.Input<String>? instance;
  /// The ID of an IPAM pool which has an Amazon-provided or BYOIP public IPv4 CIDR provisioned to it.
  final pulumi.Input<String>? ipamPoolId;
  /// Location from which the IP address is advertised. Use this parameter to limit the address to this location.
  final pulumi.Input<String>? networkBorderGroup;
  /// Network interface ID to associate with.
  final pulumi.Input<String>? networkInterface;
  /// EC2 IPv4 address pool identifier or `amazon`.
  /// This option is only available for VPC EIPs.
  final pulumi.Input<String>? publicIpv4Pool;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Map of tags to assign to the resource. Tags can only be applied to EIPs in a VPC. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ///
  /// > **NOTE:** You can specify either the `instance` ID or the `network_interface` ID, but not both.
  /// Including both will **not** return an error from the AWS API, but will have undefined behavior.
  /// See the relevant [AssociateAddress API Call][1] for more information.
  ///
  /// > **NOTE:** Specifying both `public_ipv4_pool` and `address` won't cause an error, however, only `address` will be used if both options are defined as the API only requires one of the two.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [EipArgs].
  /// [address] IP address from an EC2 BYOIP pool. This option is only available for VPC EIPs.
  /// [associateWithPrivateIp] User-specified primary or secondary private IP address to associate with the Elastic IP address. If no private IP address is specified, the Elastic IP address is associated with the primary private IP address.
  /// [customerOwnedIpv4Pool] ID  of a customer-owned address pool. For more on customer owned IP addressed check out [Customer-owned IP addresses guide](https://docs.aws.amazon.com/outposts/latest/userguide/outposts-networking-components.html#ip-addressing).
  /// [domain] Indicates if this EIP is for use in VPC (`vpc`).
  /// [instance] EC2 instance ID.
  /// [ipamPoolId] The ID of an IPAM pool which has an Amazon-provided or BYOIP public IPv4 CIDR provisioned to it.
  /// [networkBorderGroup] Location from which the IP address is advertised. Use this parameter to limit the address to this location.
  /// [networkInterface] Network interface ID to associate with.
  /// [publicIpv4Pool] EC2 IPv4 address pool identifier or `amazon`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags to assign to the resource. Tags can only be applied to EIPs in a VPC. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  EipArgs({
    String? address,
    String? associateWithPrivateIp,
    String? customerOwnedIpv4Pool,
    String? domain,
    String? instance,
    String? ipamPoolId,
    String? networkBorderGroup,
    String? networkInterface,
    String? publicIpv4Pool,
    String? region,
    Map<String, String>? tags,
  }) :
      address = pulumi.Input.asOptionalInput<String>(address),
      associateWithPrivateIp = pulumi.Input.asOptionalInput<String>(associateWithPrivateIp),
      customerOwnedIpv4Pool = pulumi.Input.asOptionalInput<String>(customerOwnedIpv4Pool),
      domain = pulumi.Input.asOptionalInput<String>(domain),
      instance = pulumi.Input.asOptionalInput<String>(instance),
      ipamPoolId = pulumi.Input.asOptionalInput<String>(ipamPoolId),
      networkBorderGroup = pulumi.Input.asOptionalInput<String>(networkBorderGroup),
      networkInterface = pulumi.Input.asOptionalInput<String>(networkInterface),
      publicIpv4Pool = pulumi.Input.asOptionalInput<String>(publicIpv4Pool),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address,
      'associateWithPrivateIp': ?associateWithPrivateIp,
      'customerOwnedIpv4Pool': ?customerOwnedIpv4Pool,
      'domain': ?domain,
      'instance': ?instance,
      'ipamPoolId': ?ipamPoolId,
      'networkBorderGroup': ?networkBorderGroup,
      'networkInterface': ?networkInterface,
      'publicIpv4Pool': ?publicIpv4Pool,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory EipArgs.fromMap(Map<String, dynamic> map) {
    return EipArgs(
      address: map['address'] == null ? null : map['address'] as String,
      associateWithPrivateIp: map['associateWithPrivateIp'] == null ? null : map['associateWithPrivateIp'] as String,
      customerOwnedIpv4Pool: map['customerOwnedIpv4Pool'] == null ? null : map['customerOwnedIpv4Pool'] as String,
      domain: map['domain'] == null ? null : map['domain'] as String,
      instance: map['instance'] == null ? null : map['instance'] as String,
      ipamPoolId: map['ipamPoolId'] == null ? null : map['ipamPoolId'] as String,
      networkBorderGroup: map['networkBorderGroup'] == null ? null : map['networkBorderGroup'] as String,
      networkInterface: map['networkInterface'] == null ? null : map['networkInterface'] as String,
      publicIpv4Pool: map['publicIpv4Pool'] == null ? null : map['publicIpv4Pool'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

