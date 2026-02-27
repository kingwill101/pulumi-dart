// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Eip.
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

  EipArgs({
    this.address,
    this.associateWithPrivateIp,
    this.customerOwnedIpv4Pool,
    this.domain,
    this.instance,
    this.ipamPoolId,
    this.networkBorderGroup,
    this.networkInterface,
    this.publicIpv4Pool,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final addressValue = address;
    if (addressValue != null) {
      map['address'] = addressValue;
    }
    final associateWithPrivateIpValue = associateWithPrivateIp;
    if (associateWithPrivateIpValue != null) {
      map['associateWithPrivateIp'] = associateWithPrivateIpValue;
    }
    final customerOwnedIpv4PoolValue = customerOwnedIpv4Pool;
    if (customerOwnedIpv4PoolValue != null) {
      map['customerOwnedIpv4Pool'] = customerOwnedIpv4PoolValue;
    }
    final domainValue = domain;
    if (domainValue != null) {
      map['domain'] = domainValue;
    }
    final instanceValue = instance;
    if (instanceValue != null) {
      map['instance'] = instanceValue;
    }
    final ipamPoolIdValue = ipamPoolId;
    if (ipamPoolIdValue != null) {
      map['ipamPoolId'] = ipamPoolIdValue;
    }
    final networkBorderGroupValue = networkBorderGroup;
    if (networkBorderGroupValue != null) {
      map['networkBorderGroup'] = networkBorderGroupValue;
    }
    final networkInterfaceValue = networkInterface;
    if (networkInterfaceValue != null) {
      map['networkInterface'] = networkInterfaceValue;
    }
    final publicIpv4PoolValue = publicIpv4Pool;
    if (publicIpv4PoolValue != null) {
      map['publicIpv4Pool'] = publicIpv4PoolValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory EipArgs.fromMap(Map<String, dynamic> map) {
    return EipArgs(
      address: pulumi.Input.asOptionalInput<String>(map['address']),
      associateWithPrivateIp:
          pulumi.Input.asOptionalInput<String>(map['associateWithPrivateIp']),
      customerOwnedIpv4Pool:
          pulumi.Input.asOptionalInput<String>(map['customerOwnedIpv4Pool']),
      domain: pulumi.Input.asOptionalInput<String>(map['domain']),
      instance: pulumi.Input.asOptionalInput<String>(map['instance']),
      ipamPoolId: pulumi.Input.asOptionalInput<String>(map['ipamPoolId']),
      networkBorderGroup:
          pulumi.Input.asOptionalInput<String>(map['networkBorderGroup']),
      networkInterface:
          pulumi.Input.asOptionalInput<String>(map['networkInterface']),
      publicIpv4Pool:
          pulumi.Input.asOptionalInput<String>(map['publicIpv4Pool']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
