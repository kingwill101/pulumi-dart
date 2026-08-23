// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_type_enum_value_response.dart';
import 'tag_response.dart';

/// Definition of awsEc2Address
class AwsEc2AddressPropertiesResponse {
  /// &lt;p&gt;The ID representing the allocation of the address.&lt;/p&gt;
  final pulumi.Input<String>? allocationId;
  /// &lt;p&gt;The ID representing the association of the address with an instance.&lt;/p&gt;
  final pulumi.Input<String>? associationId;
  /// &lt;p&gt;The carrier IP address associated. This option is only available for network interfaces which reside in a subnet in a Wavelength Zone (for example an EC2 instance). &lt;/p&gt;
  final pulumi.Input<String>? carrierIp;
  /// &lt;p&gt;The customer-owned IP address.&lt;/p&gt;
  final pulumi.Input<String>? customerOwnedIp;
  /// &lt;p&gt;The ID of the customer-owned address pool.&lt;/p&gt;
  final pulumi.Input<String>? customerOwnedIpv4Pool;
  /// &lt;p&gt;The network (&lt;code&gt;vpc&lt;/code&gt;).&lt;/p&gt;
  final pulumi.Input<DomainTypeEnumValueResponse>? domain;
  /// &lt;p&gt;The ID of the instance that the address is associated with (if any).&lt;/p&gt;
  final pulumi.Input<String>? instanceId;
  /// &lt;p&gt;The name of the unique set of Availability Zones, Local Zones, or Wavelength Zones from which Amazon Web Services advertises IP addresses.&lt;/p&gt;
  final pulumi.Input<String>? networkBorderGroup;
  /// &lt;p&gt;The ID of the network interface.&lt;/p&gt;
  final pulumi.Input<String>? networkInterfaceId;
  /// &lt;p&gt;The ID of the Amazon Web Services account that owns the network interface.&lt;/p&gt;
  final pulumi.Input<String>? networkInterfaceOwnerId;
  /// &lt;p&gt;The private IP address associated with the Elastic IP address.&lt;/p&gt;
  final pulumi.Input<String>? privateIpAddress;
  /// &lt;p&gt;The Elastic IP address.&lt;/p&gt;
  final pulumi.Input<String>? publicIp;
  /// &lt;p&gt;The ID of an address pool.&lt;/p&gt;
  final pulumi.Input<String>? publicIpv4Pool;
  /// &lt;p&gt;Any tags assigned to the Elastic IP address.&lt;/p&gt;
  final pulumi.Input<List<TagResponse>>? tags;

  /// Creates a new [AwsEc2AddressPropertiesResponse].
  /// [allocationId] &lt;p&gt;The ID representing the allocation of the address.&lt;/p&gt;
  /// [associationId] &lt;p&gt;The ID representing the association of the address with an instance.&lt;/p&gt;
  /// [carrierIp] &lt;p&gt;The carrier IP address associated. This option is only available for network interfaces which reside in a subnet in a Wavelength Zone (for example an EC2 instance). &lt;/p&gt;
  /// [customerOwnedIp] &lt;p&gt;The customer-owned IP address.&lt;/p&gt;
  /// [customerOwnedIpv4Pool] &lt;p&gt;The ID of the customer-owned address pool.&lt;/p&gt;
  /// [domain] &lt;p&gt;The network (&lt;code&gt;vpc&lt;/code&gt;).&lt;/p&gt;
  /// [instanceId] &lt;p&gt;The ID of the instance that the address is associated with (if any).&lt;/p&gt;
  /// [networkBorderGroup] &lt;p&gt;The name of the unique set of Availability Zones, Local Zones, or Wavelength Zones from which Amazon Web Services advertises IP addresses.&lt;/p&gt;
  /// [networkInterfaceId] &lt;p&gt;The ID of the network interface.&lt;/p&gt;
  /// [networkInterfaceOwnerId] &lt;p&gt;The ID of the Amazon Web Services account that owns the network interface.&lt;/p&gt;
  /// [privateIpAddress] &lt;p&gt;The private IP address associated with the Elastic IP address.&lt;/p&gt;
  /// [publicIp] &lt;p&gt;The Elastic IP address.&lt;/p&gt;
  /// [publicIpv4Pool] &lt;p&gt;The ID of an address pool.&lt;/p&gt;
  /// [tags] &lt;p&gt;Any tags assigned to the Elastic IP address.&lt;/p&gt;
  const AwsEc2AddressPropertiesResponse({
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
      'domain': ?pulumi.Input.mapOptionalInputValue<DomainTypeEnumValueResponse, Map<String, dynamic>>(domain, (value) => value.toMap()),
      'instanceId': ?instanceId,
      'networkBorderGroup': ?networkBorderGroup,
      'networkInterfaceId': ?networkInterfaceId,
      'networkInterfaceOwnerId': ?networkInterfaceOwnerId,
      'privateIpAddress': ?privateIpAddress,
      'publicIp': ?publicIp,
      'publicIpv4Pool': ?publicIpv4Pool,
      'tags': ?pulumi.Input.mapOptionalInputValue<List<TagResponse>, List<Map<String, dynamic>>>(tags, (value) => pulumi.Input.encodeList<TagResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AwsEc2AddressPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AwsEc2AddressPropertiesResponse(
      allocationId: (() { final guardedValue = map['allocationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      associationId: (() { final guardedValue = map['associationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      carrierIp: (() { final guardedValue = map['carrierIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customerOwnedIp: (() { final guardedValue = map['customerOwnedIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customerOwnedIpv4Pool: (() { final guardedValue = map['customerOwnedIpv4Pool']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      domain: (() { final guardedValue = map['domain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainTypeEnumValueResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      instanceId: (() { final guardedValue = map['instanceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkBorderGroup: (() { final guardedValue = map['networkBorderGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkInterfaceId: (() { final guardedValue = map['networkInterfaceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkInterfaceOwnerId: (() { final guardedValue = map['networkInterfaceOwnerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateIpAddress: (() { final guardedValue = map['privateIpAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicIp: (() { final guardedValue = map['publicIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicIpv4Pool: (() { final guardedValue = map['publicIpv4Pool']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TagResponse>(guardedValue, (value) => TagResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
