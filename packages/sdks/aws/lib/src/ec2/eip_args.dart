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
  /// Map of tags to assign to the resource. Tags can only be applied to EIPs in a VPC. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ///
  /// &gt; **NOTE:** You can specify either the `instance` ID or the `networkInterface` ID, but not both.
  /// Including both will **not** return an error from the AWS API, but will have undefined behavior.
  /// See the relevant [AssociateAddress API Call](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_AssociateAddress.html) for more information.
  ///
  /// &gt; **NOTE:** Specifying both `publicIpv4Pool` and `address` won't cause an error, however, only `address` will be used if both options are defined as the API only requires one of the two.
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
  /// [tags] Map of tags to assign to the resource. Tags can only be applied to EIPs in a VPC. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  const EipArgs({
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
      address: (() { final guardedValue = map['address']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      associateWithPrivateIp: (() { final guardedValue = map['associateWithPrivateIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customerOwnedIpv4Pool: (() { final guardedValue = map['customerOwnedIpv4Pool']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      domain: (() { final guardedValue = map['domain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instance: (() { final guardedValue = map['instance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipamPoolId: (() { final guardedValue = map['ipamPoolId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkBorderGroup: (() { final guardedValue = map['networkBorderGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkInterface: (() { final guardedValue = map['networkInterface']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicIpv4Pool: (() { final guardedValue = map['publicIpv4Pool']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
