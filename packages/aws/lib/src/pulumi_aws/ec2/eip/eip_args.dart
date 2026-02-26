// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for Eip.
class EipArgs {
  /// IP address from an EC2 BYOIP pool. This option is only available for VPC EIPs.
  final Input<String>? address;

  /// User-specified primary or secondary private IP address to associate with the Elastic IP address. If no private IP address is specified, the Elastic IP address is associated with the primary private IP address.
  final Input<String>? associateWithPrivateIp;

  /// ID  of a customer-owned address pool. For more on customer owned IP addressed check out [Customer-owned IP addresses guide](https://docs.aws.amazon.com/outposts/latest/userguide/outposts-networking-components.html#ip-addressing).
  final Input<String>? customerOwnedIpv4Pool;

  /// Indicates if this EIP is for use in VPC (<span pulumi-lang-nodejs="`vpc`" pulumi-lang-dotnet="`Vpc`" pulumi-lang-go="`vpc`" pulumi-lang-python="`vpc`" pulumi-lang-yaml="`vpc`" pulumi-lang-java="`vpc`">`vpc`</span>).
  final Input<String>? domain;

  /// EC2 instance ID.
  final Input<String>? instance;

  /// The ID of an IPAM pool which has an Amazon-provided or BYOIP public IPv4 CIDR provisioned to it.
  final Input<String>? ipamPoolId;

  /// Location from which the IP address is advertised. Use this parameter to limit the address to this location.
  final Input<String>? networkBorderGroup;

  /// Network interface ID to associate with.
  final Input<String>? networkInterface;

  /// EC2 IPv4 address pool identifier or <span pulumi-lang-nodejs="`amazon`" pulumi-lang-dotnet="`Amazon`" pulumi-lang-go="`amazon`" pulumi-lang-python="`amazon`" pulumi-lang-yaml="`amazon`" pulumi-lang-java="`amazon`">`amazon`</span>.
  /// This option is only available for VPC EIPs.
  final Input<String>? publicIpv4Pool;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Map of tags to assign to the resource. Tags can only be applied to EIPs in a VPC. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ///
  /// > **NOTE:** You can specify either the <span pulumi-lang-nodejs="`instance`" pulumi-lang-dotnet="`Instance`" pulumi-lang-go="`instance`" pulumi-lang-python="`instance`" pulumi-lang-yaml="`instance`" pulumi-lang-java="`instance`">`instance`</span> ID or the <span pulumi-lang-nodejs="`networkInterface`" pulumi-lang-dotnet="`NetworkInterface`" pulumi-lang-go="`networkInterface`" pulumi-lang-python="`network_interface`" pulumi-lang-yaml="`networkInterface`" pulumi-lang-java="`networkInterface`">`network_interface`</span> ID, but not both.
  /// Including both will **not** return an error from the AWS API, but will have undefined behavior.
  /// See the relevant [AssociateAddress API Call][1] for more information.
  ///
  /// > **NOTE:** Specifying both <span pulumi-lang-nodejs="`publicIpv4Pool`" pulumi-lang-dotnet="`PublicIpv4Pool`" pulumi-lang-go="`publicIpv4Pool`" pulumi-lang-python="`public_ipv4_pool`" pulumi-lang-yaml="`publicIpv4Pool`" pulumi-lang-java="`publicIpv4Pool`">`public_ipv4_pool`</span> and <span pulumi-lang-nodejs="`address`" pulumi-lang-dotnet="`Address`" pulumi-lang-go="`address`" pulumi-lang-python="`address`" pulumi-lang-yaml="`address`" pulumi-lang-java="`address`">`address`</span> won't cause an error, however, only <span pulumi-lang-nodejs="`address`" pulumi-lang-dotnet="`Address`" pulumi-lang-go="`address`" pulumi-lang-python="`address`" pulumi-lang-yaml="`address`" pulumi-lang-java="`address`">`address`</span> will be used if both options are defined as the API only requires one of the two.
  final Input<Map<String, String>>? tags;

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
      address: Input.asOptionalInput<String>(map['address']),
      associateWithPrivateIp:
          Input.asOptionalInput<String>(map['associateWithPrivateIp']),
      customerOwnedIpv4Pool:
          Input.asOptionalInput<String>(map['customerOwnedIpv4Pool']),
      domain: Input.asOptionalInput<String>(map['domain']),
      instance: Input.asOptionalInput<String>(map['instance']),
      ipamPoolId: Input.asOptionalInput<String>(map['ipamPoolId']),
      networkBorderGroup:
          Input.asOptionalInput<String>(map['networkBorderGroup']),
      networkInterface: Input.asOptionalInput<String>(map['networkInterface']),
      publicIpv4Pool: Input.asOptionalInput<String>(map['publicIpv4Pool']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
