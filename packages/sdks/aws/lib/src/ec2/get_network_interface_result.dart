// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_network_interface_association.dart';
import 'get_network_interface_attachment.dart';
import 'get_network_interface_ena_srd_specification.dart';
import 'get_network_interface_filter.dart';

/// Result data returned by getNetworkInterface.
class GetNetworkInterfaceResult {
  /// ARN of the network interface.
  final String? arn;
  /// Association information for an Elastic IP address (IPv4) associated with the network interface. See association below.
  final List<GetNetworkInterfaceAssociation>? associations;
  /// Attachment of the ENI. See attachment below.
  final List<GetNetworkInterfaceAttachment>? attachments;
  /// Availability Zone.
  final String? availabilityZone;
  /// Description of the network interface.
  final String? description;
  /// ENA Express configuration for the network interface. See enaSrdSpecification below.
  final List<GetNetworkInterfaceEnaSrdSpecification>? enaSrdSpecifications;
  final List<GetNetworkInterfaceFilter>? filters;
  final String? id;
  /// Type of interface.
  final String? interfaceType;
  /// List of IPv6 addresses to assign to the ENI.
  final List<String>? ipv6Addresses;
  /// MAC address.
  final String? macAddress;
  /// ARN of the Outpost.
  final String? outpostArn;
  /// AWS account ID of the owner of the network interface.
  final String? ownerId;
  /// Private DNS name.
  final String? privateDnsName;
  /// Private IPv4 address of the network interface within the subnet.
  final String? privateIp;
  /// Private IPv4 addresses associated with the network interface.
  final List<String>? privateIps;
  final String? region;
  /// ID of the entity that launched the instance on your behalf.
  final String? requesterId;
  /// List of security groups for the network interface.
  final List<String>? securityGroups;
  /// ID of the subnet.
  final String? subnetId;
  /// Any tags assigned to the network interface.
  final Map<String, String>? tags;
  /// ID of the VPC.
  final String? vpcId;

  /// Creates a new [GetNetworkInterfaceResult].
  /// [arn] ARN of the network interface.
  /// [associations] Association information for an Elastic IP address (IPv4) associated with the network interface. See association below.
  /// [attachments] Attachment of the ENI. See attachment below.
  /// [availabilityZone] Availability Zone.
  /// [description] Description of the network interface.
  /// [enaSrdSpecifications] ENA Express configuration for the network interface. See enaSrdSpecification below.
  /// [filters] Optional.
  /// [id] Optional.
  /// [interfaceType] Type of interface.
  /// [ipv6Addresses] List of IPv6 addresses to assign to the ENI.
  /// [macAddress] MAC address.
  /// [outpostArn] ARN of the Outpost.
  /// [ownerId] AWS account ID of the owner of the network interface.
  /// [privateDnsName] Private DNS name.
  /// [privateIp] Private IPv4 address of the network interface within the subnet.
  /// [privateIps] Private IPv4 addresses associated with the network interface.
  /// [region] Optional.
  /// [requesterId] ID of the entity that launched the instance on your behalf.
  /// [securityGroups] List of security groups for the network interface.
  /// [subnetId] ID of the subnet.
  /// [tags] Any tags assigned to the network interface.
  /// [vpcId] ID of the VPC.
  const GetNetworkInterfaceResult({
    this.arn,
    this.associations,
    this.attachments,
    this.availabilityZone,
    this.description,
    this.enaSrdSpecifications,
    this.filters,
    this.id,
    this.interfaceType,
    this.ipv6Addresses,
    this.macAddress,
    this.outpostArn,
    this.ownerId,
    this.privateDnsName,
    this.privateIp,
    this.privateIps,
    this.region,
    this.requesterId,
    this.securityGroups,
    this.subnetId,
    this.tags,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'associations': ?(() { final guardedValue = associations; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetNetworkInterfaceAssociation, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'attachments': ?(() { final guardedValue = attachments; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetNetworkInterfaceAttachment, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'availabilityZone': ?availabilityZone,
      'description': ?description,
      'enaSrdSpecifications': ?(() { final guardedValue = enaSrdSpecifications; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetNetworkInterfaceEnaSrdSpecification, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetNetworkInterfaceFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'interfaceType': ?interfaceType,
      'ipv6Addresses': ?ipv6Addresses,
      'macAddress': ?macAddress,
      'outpostArn': ?outpostArn,
      'ownerId': ?ownerId,
      'privateDnsName': ?privateDnsName,
      'privateIp': ?privateIp,
      'privateIps': ?privateIps,
      'region': ?region,
      'requesterId': ?requesterId,
      'securityGroups': ?securityGroups,
      'subnetId': ?subnetId,
      'tags': ?tags,
      'vpcId': ?vpcId,
    };
  }

  factory GetNetworkInterfaceResult.fromMap(Map<String, dynamic> map) {
    return GetNetworkInterfaceResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      associations: (() { final guardedValue = map['associations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetNetworkInterfaceAssociation>(guardedValue, (value) => GetNetworkInterfaceAssociation.fromMap((value as Map).cast<String, dynamic>())); })(),
      attachments: (() { final guardedValue = map['attachments']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetNetworkInterfaceAttachment>(guardedValue, (value) => GetNetworkInterfaceAttachment.fromMap((value as Map).cast<String, dynamic>())); })(),
      availabilityZone: (() { final guardedValue = map['availabilityZone']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      enaSrdSpecifications: (() { final guardedValue = map['enaSrdSpecifications']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetNetworkInterfaceEnaSrdSpecification>(guardedValue, (value) => GetNetworkInterfaceEnaSrdSpecification.fromMap((value as Map).cast<String, dynamic>())); })(),
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetNetworkInterfaceFilter>(guardedValue, (value) => GetNetworkInterfaceFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      interfaceType: (() { final guardedValue = map['interfaceType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipv6Addresses: (() { final guardedValue = map['ipv6Addresses']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      macAddress: (() { final guardedValue = map['macAddress']; if (guardedValue == null) return null; return guardedValue as String; })(),
      outpostArn: (() { final guardedValue = map['outpostArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ownerId: (() { final guardedValue = map['ownerId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      privateDnsName: (() { final guardedValue = map['privateDnsName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      privateIp: (() { final guardedValue = map['privateIp']; if (guardedValue == null) return null; return guardedValue as String; })(),
      privateIps: (() { final guardedValue = map['privateIps']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      requesterId: (() { final guardedValue = map['requesterId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      securityGroups: (() { final guardedValue = map['securityGroups']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      subnetId: (() { final guardedValue = map['subnetId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
