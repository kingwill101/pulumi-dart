// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_type_enum_value.dart';
import 'tag.dart';

/// Definition of awsEc2Address
class AwsEc2AddressProperties {
  /// <p>The ID representing the allocation of the address.</p>
  final pulumi.Input<String>? allocationId;
  /// <p>The ID representing the association of the address with an instance.</p>
  final pulumi.Input<String>? associationId;
  /// <p>The carrier IP address associated. This option is only available for network interfaces which reside in a subnet in a Wavelength Zone (for example an EC2 instance). </p>
  final pulumi.Input<String>? carrierIp;
  /// <p>The customer-owned IP address.</p>
  final pulumi.Input<String>? customerOwnedIp;
  /// <p>The ID of the customer-owned address pool.</p>
  final pulumi.Input<String>? customerOwnedIpv4Pool;
  /// <p>The network (<code>vpc</code>).</p>
  final pulumi.Input<DomainTypeEnumValue>? domain;
  /// <p>The ID of the instance that the address is associated with (if any).</p>
  final pulumi.Input<String>? instanceId;
  /// <p>The name of the unique set of Availability Zones, Local Zones, or Wavelength Zones from which Amazon Web Services advertises IP addresses.</p>
  final pulumi.Input<String>? networkBorderGroup;
  /// <p>The ID of the network interface.</p>
  final pulumi.Input<String>? networkInterfaceId;
  /// <p>The ID of the Amazon Web Services account that owns the network interface.</p>
  final pulumi.Input<String>? networkInterfaceOwnerId;
  /// <p>The private IP address associated with the Elastic IP address.</p>
  final pulumi.Input<String>? privateIpAddress;
  /// <p>The Elastic IP address.</p>
  final pulumi.Input<String>? publicIp;
  /// <p>The ID of an address pool.</p>
  final pulumi.Input<String>? publicIpv4Pool;
  /// <p>Any tags assigned to the Elastic IP address.</p>
  final pulumi.Input<List<Tag>>? tags;

  /// Creates a new [AwsEc2AddressProperties].
  /// [allocationId] <p>The ID representing the allocation of the address.</p>
  /// [associationId] <p>The ID representing the association of the address with an instance.</p>
  /// [carrierIp] <p>The carrier IP address associated. This option is only available for network interfaces which reside in a subnet in a Wavelength Zone (for example an EC2 instance). </p>
  /// [customerOwnedIp] <p>The customer-owned IP address.</p>
  /// [customerOwnedIpv4Pool] <p>The ID of the customer-owned address pool.</p>
  /// [domain] <p>The network (<code>vpc</code>).</p>
  /// [instanceId] <p>The ID of the instance that the address is associated with (if any).</p>
  /// [networkBorderGroup] <p>The name of the unique set of Availability Zones, Local Zones, or Wavelength Zones from which Amazon Web Services advertises IP addresses.</p>
  /// [networkInterfaceId] <p>The ID of the network interface.</p>
  /// [networkInterfaceOwnerId] <p>The ID of the Amazon Web Services account that owns the network interface.</p>
  /// [privateIpAddress] <p>The private IP address associated with the Elastic IP address.</p>
  /// [publicIp] <p>The Elastic IP address.</p>
  /// [publicIpv4Pool] <p>The ID of an address pool.</p>
  /// [tags] <p>Any tags assigned to the Elastic IP address.</p>
  AwsEc2AddressProperties({
    this.allocationId,
    this.associationId,
    this.carrierIp,
    this.customerOwnedIp,
    this.customerOwnedIpv4Pool,
    this.domain,
    this.instanceId,
    this.networkBorderGroup,
    this.networkInterfaceId,
    this.networkInterfaceOwnerId,
    this.privateIpAddress,
    this.publicIp,
    this.publicIpv4Pool,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocationId': ?allocationId,
      'associationId': ?associationId,
      'carrierIp': ?carrierIp,
      'customerOwnedIp': ?customerOwnedIp,
      'customerOwnedIpv4Pool': ?customerOwnedIpv4Pool,
      'domain': ?pulumi.Input.mapOptionalInputValue<DomainTypeEnumValue, Map<String, dynamic>>(domain, (value) => value.toMap()),
      'instanceId': ?instanceId,
      'networkBorderGroup': ?networkBorderGroup,
      'networkInterfaceId': ?networkInterfaceId,
      'networkInterfaceOwnerId': ?networkInterfaceOwnerId,
      'privateIpAddress': ?privateIpAddress,
      'publicIp': ?publicIp,
      'publicIpv4Pool': ?publicIpv4Pool,
      'tags': ?pulumi.Input.mapOptionalInputValue<List<Tag>, List<Map<String, dynamic>>>(tags, (value) => pulumi.Input.encodeList<Tag, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AwsEc2AddressProperties.fromMap(Map<String, dynamic> map) {
    return AwsEc2AddressProperties(
      allocationId: map['allocationId'] == null ? null : (map['allocationId'] as String).input(),
      associationId: map['associationId'] == null ? null : (map['associationId'] as String).input(),
      carrierIp: map['carrierIp'] == null ? null : (map['carrierIp'] as String).input(),
      customerOwnedIp: map['customerOwnedIp'] == null ? null : (map['customerOwnedIp'] as String).input(),
      customerOwnedIpv4Pool: map['customerOwnedIpv4Pool'] == null ? null : (map['customerOwnedIpv4Pool'] as String).input(),
      domain: map['domain'] == null ? null : (DomainTypeEnumValue.fromMap((map['domain'] as Map).cast<String, dynamic>())).input(),
      instanceId: map['instanceId'] == null ? null : (map['instanceId'] as String).input(),
      networkBorderGroup: map['networkBorderGroup'] == null ? null : (map['networkBorderGroup'] as String).input(),
      networkInterfaceId: map['networkInterfaceId'] == null ? null : (map['networkInterfaceId'] as String).input(),
      networkInterfaceOwnerId: map['networkInterfaceOwnerId'] == null ? null : (map['networkInterfaceOwnerId'] as String).input(),
      privateIpAddress: map['privateIpAddress'] == null ? null : (map['privateIpAddress'] as String).input(),
      publicIp: map['publicIp'] == null ? null : (map['publicIp'] as String).input(),
      publicIpv4Pool: map['publicIpv4Pool'] == null ? null : (map['publicIpv4Pool'] as String).input(),
      tags: map['tags'] == null ? null : (pulumi.Input.decodeList<Tag>(map['tags'], (value) => Tag.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

