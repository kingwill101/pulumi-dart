// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Eip resources.
class EipState {
  /// IP address from an EC2 BYOIP pool. This option is only available for VPC EIPs.
  final pulumi.Input<String>? address;
  /// ID that AWS assigns to represent the allocation of the Elastic IP address for use with instances in a VPC.
  final pulumi.Input<String>? allocationId;
  final pulumi.Input<String>? arn;
  /// User-specified primary or secondary private IP address to associate with the Elastic IP address. If no private IP address is specified, the Elastic IP address is associated with the primary private IP address.
  final pulumi.Input<String>? associateWithPrivateIp;
  /// ID representing the association of the address with an instance in a VPC.
  final pulumi.Input<String>? associationId;
  /// Carrier IP address.
  final pulumi.Input<String>? carrierIp;
  /// Customer owned IP.
  final pulumi.Input<String>? customerOwnedIp;
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
  /// The Private DNS associated with the Elastic IP address (if in VPC).
  final pulumi.Input<String>? privateDns;
  /// Contains the private IP address (if in VPC).
  final pulumi.Input<String>? privateIp;
  /// The DNS pointer (PTR) record for the IP address.
  final pulumi.Input<String>? ptrRecord;
  /// Public DNS associated with the Elastic IP address.
  final pulumi.Input<String>? publicDns;
  /// Contains the public IP address.
  final pulumi.Input<String>? publicIp;
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
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [EipState].
  /// [address] IP address from an EC2 BYOIP pool. This option is only available for VPC EIPs.
  /// [allocationId] ID that AWS assigns to represent the allocation of the Elastic IP address for use with instances in a VPC.
  /// [arn] Optional.
  /// [associateWithPrivateIp] User-specified primary or secondary private IP address to associate with the Elastic IP address. If no private IP address is specified, the Elastic IP address is associated with the primary private IP address.
  /// [associationId] ID representing the association of the address with an instance in a VPC.
  /// [carrierIp] Carrier IP address.
  /// [customerOwnedIp] Customer owned IP.
  /// [customerOwnedIpv4Pool] ID  of a customer-owned address pool. For more on customer owned IP addressed check out [Customer-owned IP addresses guide](https://docs.aws.amazon.com/outposts/latest/userguide/outposts-networking-components.html#ip-addressing).
  /// [domain] Indicates if this EIP is for use in VPC (`vpc`).
  /// [instance] EC2 instance ID.
  /// [ipamPoolId] The ID of an IPAM pool which has an Amazon-provided or BYOIP public IPv4 CIDR provisioned to it.
  /// [networkBorderGroup] Location from which the IP address is advertised. Use this parameter to limit the address to this location.
  /// [networkInterface] Network interface ID to associate with.
  /// [privateDns] The Private DNS associated with the Elastic IP address (if in VPC).
  /// [privateIp] Contains the private IP address (if in VPC).
  /// [ptrRecord] The DNS pointer (PTR) record for the IP address.
  /// [publicDns] Public DNS associated with the Elastic IP address.
  /// [publicIp] Contains the public IP address.
  /// [publicIpv4Pool] EC2 IPv4 address pool identifier or `amazon`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags to assign to the resource. Tags can only be applied to EIPs in a VPC. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  EipState({
    this.address,
    this.allocationId,
    this.arn,
    this.associateWithPrivateIp,
    this.associationId,
    this.carrierIp,
    this.customerOwnedIp,
    this.customerOwnedIpv4Pool,
    this.domain,
    this.instance,
    this.ipamPoolId,
    this.networkBorderGroup,
    this.networkInterface,
    this.privateDns,
    this.privateIp,
    this.ptrRecord,
    this.publicDns,
    this.publicIp,
    this.publicIpv4Pool,
    this.region,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address,
      'allocationId': ?allocationId,
      'arn': ?arn,
      'associateWithPrivateIp': ?associateWithPrivateIp,
      'associationId': ?associationId,
      'carrierIp': ?carrierIp,
      'customerOwnedIp': ?customerOwnedIp,
      'customerOwnedIpv4Pool': ?customerOwnedIpv4Pool,
      'domain': ?domain,
      'instance': ?instance,
      'ipamPoolId': ?ipamPoolId,
      'networkBorderGroup': ?networkBorderGroup,
      'networkInterface': ?networkInterface,
      'privateDns': ?privateDns,
      'privateIp': ?privateIp,
      'ptrRecord': ?ptrRecord,
      'publicDns': ?publicDns,
      'publicIp': ?publicIp,
      'publicIpv4Pool': ?publicIpv4Pool,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory EipState.fromMap(Map<String, dynamic> map) {
    return EipState(
      address: map['address'] == null ? null : ((map['address'] as String).input()).input(),
      allocationId: map['allocationId'] == null ? null : ((map['allocationId'] as String).input()).input(),
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      associateWithPrivateIp: map['associateWithPrivateIp'] == null ? null : ((map['associateWithPrivateIp'] as String).input()).input(),
      associationId: map['associationId'] == null ? null : ((map['associationId'] as String).input()).input(),
      carrierIp: map['carrierIp'] == null ? null : ((map['carrierIp'] as String).input()).input(),
      customerOwnedIp: map['customerOwnedIp'] == null ? null : ((map['customerOwnedIp'] as String).input()).input(),
      customerOwnedIpv4Pool: map['customerOwnedIpv4Pool'] == null ? null : ((map['customerOwnedIpv4Pool'] as String).input()).input(),
      domain: map['domain'] == null ? null : ((map['domain'] as String).input()).input(),
      instance: map['instance'] == null ? null : ((map['instance'] as String).input()).input(),
      ipamPoolId: map['ipamPoolId'] == null ? null : ((map['ipamPoolId'] as String).input()).input(),
      networkBorderGroup: map['networkBorderGroup'] == null ? null : ((map['networkBorderGroup'] as String).input()).input(),
      networkInterface: map['networkInterface'] == null ? null : ((map['networkInterface'] as String).input()).input(),
      privateDns: map['privateDns'] == null ? null : ((map['privateDns'] as String).input()).input(),
      privateIp: map['privateIp'] == null ? null : ((map['privateIp'] as String).input()).input(),
      ptrRecord: map['ptrRecord'] == null ? null : ((map['ptrRecord'] as String).input()).input(),
      publicDns: map['publicDns'] == null ? null : ((map['publicDns'] as String).input()).input(),
      publicIp: map['publicIp'] == null ? null : ((map['publicIp'] as String).input()).input(),
      publicIpv4Pool: map['publicIpv4Pool'] == null ? null : ((map['publicIpv4Pool'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
    );
  }
}

