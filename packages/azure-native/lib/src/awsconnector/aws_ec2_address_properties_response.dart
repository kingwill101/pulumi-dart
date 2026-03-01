// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_type_enum_value_response.dart';
import 'tag_response.dart';

/// Definition of awsEc2Address
class AwsEc2AddressPropertiesResponse {
  /// <p>The ID representing the allocation of the address.</p>
  final String? allocationId;
  /// <p>The ID representing the association of the address with an instance.</p>
  final String? associationId;
  /// <p>The carrier IP address associated. This option is only available for network interfaces which reside in a subnet in a Wavelength Zone (for example an EC2 instance). </p>
  final String? carrierIp;
  /// <p>The customer-owned IP address.</p>
  final String? customerOwnedIp;
  /// <p>The ID of the customer-owned address pool.</p>
  final String? customerOwnedIpv4Pool;
  /// <p>The network (<code>vpc</code>).</p>
  final DomainTypeEnumValueResponse? domain;
  /// <p>The ID of the instance that the address is associated with (if any).</p>
  final String? instanceId;
  /// <p>The name of the unique set of Availability Zones, Local Zones, or Wavelength Zones from which Amazon Web Services advertises IP addresses.</p>
  final String? networkBorderGroup;
  /// <p>The ID of the network interface.</p>
  final String? networkInterfaceId;
  /// <p>The ID of the Amazon Web Services account that owns the network interface.</p>
  final String? networkInterfaceOwnerId;
  /// <p>The private IP address associated with the Elastic IP address.</p>
  final String? privateIpAddress;
  /// <p>The Elastic IP address.</p>
  final String? publicIp;
  /// <p>The ID of an address pool.</p>
  final String? publicIpv4Pool;
  /// <p>Any tags assigned to the Elastic IP address.</p>
  final List<TagResponse>? tags;

  /// Creates a new [AwsEc2AddressPropertiesResponse].
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
  AwsEc2AddressPropertiesResponse({
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
      'domain': ?domain == null ? null : domain!.toMap(),
      'instanceId': ?instanceId,
      'networkBorderGroup': ?networkBorderGroup,
      'networkInterfaceId': ?networkInterfaceId,
      'networkInterfaceOwnerId': ?networkInterfaceOwnerId,
      'privateIpAddress': ?privateIpAddress,
      'publicIp': ?publicIp,
      'publicIpv4Pool': ?publicIpv4Pool,
      'tags': ?tags == null ? null : pulumi.Input.encodeList<TagResponse, Map<String, dynamic>>(tags!, (value) => value.toMap()),
    };
  }

  factory AwsEc2AddressPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AwsEc2AddressPropertiesResponse(
      allocationId: map['allocationId'] == null ? null : map['allocationId'] as String,
      associationId: map['associationId'] == null ? null : map['associationId'] as String,
      carrierIp: map['carrierIp'] == null ? null : map['carrierIp'] as String,
      customerOwnedIp: map['customerOwnedIp'] == null ? null : map['customerOwnedIp'] as String,
      customerOwnedIpv4Pool: map['customerOwnedIpv4Pool'] == null ? null : map['customerOwnedIpv4Pool'] as String,
      domain: map['domain'] == null ? null : DomainTypeEnumValueResponse.fromMap((map['domain'] as Map).cast<String, dynamic>()),
      instanceId: map['instanceId'] == null ? null : map['instanceId'] as String,
      networkBorderGroup: map['networkBorderGroup'] == null ? null : map['networkBorderGroup'] as String,
      networkInterfaceId: map['networkInterfaceId'] == null ? null : map['networkInterfaceId'] as String,
      networkInterfaceOwnerId: map['networkInterfaceOwnerId'] == null ? null : map['networkInterfaceOwnerId'] as String,
      privateIpAddress: map['privateIpAddress'] == null ? null : map['privateIpAddress'] as String,
      publicIp: map['publicIp'] == null ? null : map['publicIp'] as String,
      publicIpv4Pool: map['publicIpv4Pool'] == null ? null : map['publicIpv4Pool'] as String,
      tags: map['tags'] == null ? null : pulumi.Input.decodeList<TagResponse>(map['tags'], (value) => TagResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

