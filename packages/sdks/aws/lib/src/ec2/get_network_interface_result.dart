// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_network_interface_association.dart';
import 'get_network_interface_attachment.dart';
import 'get_network_interface_filter.dart';

/// Result data returned by getNetworkInterface.
class GetNetworkInterfaceResult {
  /// ARN of the network interface.
  final String arn;
  /// Association information for an Elastic IP address (IPv4) associated with the network interface. See association below.
  final List<GetNetworkInterfaceAssociation> associations;
  /// Attachment of the ENI. See attachment below.
  final List<GetNetworkInterfaceAttachment> attachments;
  /// Availability Zone.
  final String availabilityZone;
  /// Description of the network interface.
  final String description;
  final List<GetNetworkInterfaceFilter>? filters;
  final String id;
  /// Type of interface.
  final String interfaceType;
  /// List of IPv6 addresses to assign to the ENI.
  final List<String> ipv6Addresses;
  /// MAC address.
  final String macAddress;
  /// ARN of the Outpost.
  final String outpostArn;
  /// AWS account ID of the owner of the network interface.
  final String ownerId;
  /// Private DNS name.
  final String privateDnsName;
  /// Private IPv4 address of the network interface within the subnet.
  final String privateIp;
  /// Private IPv4 addresses associated with the network interface.
  final List<String> privateIps;
  final String region;
  /// ID of the entity that launched the instance on your behalf.
  final String requesterId;
  /// List of security groups for the network interface.
  final List<String> securityGroups;
  /// ID of the subnet.
  final String subnetId;
  /// Any tags assigned to the network interface.
  final Map<String, String> tags;
  /// ID of the VPC.
  final String vpcId;

  /// Creates a new [GetNetworkInterfaceResult].
  /// [arn] ARN of the network interface.
  /// [associations] Association information for an Elastic IP address (IPv4) associated with the network interface. See association below.
  /// [attachments] Attachment of the ENI. See attachment below.
  /// [availabilityZone] Availability Zone.
  /// [description] Description of the network interface.
  /// [filters] Optional.
  /// [id] Required.
  /// [interfaceType] Type of interface.
  /// [ipv6Addresses] List of IPv6 addresses to assign to the ENI.
  /// [macAddress] MAC address.
  /// [outpostArn] ARN of the Outpost.
  /// [ownerId] AWS account ID of the owner of the network interface.
  /// [privateDnsName] Private DNS name.
  /// [privateIp] Private IPv4 address of the network interface within the subnet.
  /// [privateIps] Private IPv4 addresses associated with the network interface.
  /// [region] Required.
  /// [requesterId] ID of the entity that launched the instance on your behalf.
  /// [securityGroups] List of security groups for the network interface.
  /// [subnetId] ID of the subnet.
  /// [tags] Any tags assigned to the network interface.
  /// [vpcId] ID of the VPC.
  GetNetworkInterfaceResult({
    required this.arn,
    required this.associations,
    required this.attachments,
    required this.availabilityZone,
    required this.description,
    this.filters,
    required this.id,
    required this.interfaceType,
    required this.ipv6Addresses,
    required this.macAddress,
    required this.outpostArn,
    required this.ownerId,
    required this.privateDnsName,
    required this.privateIp,
    required this.privateIps,
    required this.region,
    required this.requesterId,
    required this.securityGroups,
    required this.subnetId,
    required this.tags,
    required this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'associations': pulumi.Input.encodeList<GetNetworkInterfaceAssociation, Map<String, dynamic>>(associations, (value) => value.toMap()),
      'attachments': pulumi.Input.encodeList<GetNetworkInterfaceAttachment, Map<String, dynamic>>(attachments, (value) => value.toMap()),
      'availabilityZone': availabilityZone,
      'description': description,
      'filters': ?filters == null ? null : pulumi.Input.encodeList<GetNetworkInterfaceFilter, Map<String, dynamic>>(filters!, (value) => value.toMap()),
      'id': id,
      'interfaceType': interfaceType,
      'ipv6Addresses': ipv6Addresses,
      'macAddress': macAddress,
      'outpostArn': outpostArn,
      'ownerId': ownerId,
      'privateDnsName': privateDnsName,
      'privateIp': privateIp,
      'privateIps': privateIps,
      'region': region,
      'requesterId': requesterId,
      'securityGroups': securityGroups,
      'subnetId': subnetId,
      'tags': tags,
      'vpcId': vpcId,
    };
  }

  factory GetNetworkInterfaceResult.fromMap(Map<String, dynamic> map) {
    return GetNetworkInterfaceResult(
      arn: map['arn'] as String,
      associations: pulumi.Input.decodeList<GetNetworkInterfaceAssociation>(map['associations']!, (value) => GetNetworkInterfaceAssociation.fromMap((value as Map).cast<String, dynamic>())),
      attachments: pulumi.Input.decodeList<GetNetworkInterfaceAttachment>(map['attachments']!, (value) => GetNetworkInterfaceAttachment.fromMap((value as Map).cast<String, dynamic>())),
      availabilityZone: map['availabilityZone'] as String,
      description: map['description'] as String,
      filters: map['filters'] == null ? null : pulumi.Input.decodeList<GetNetworkInterfaceFilter>(map['filters']!, (value) => GetNetworkInterfaceFilter.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      interfaceType: map['interfaceType'] as String,
      ipv6Addresses: (map['ipv6Addresses'] as List).cast<String>(),
      macAddress: map['macAddress'] as String,
      outpostArn: map['outpostArn'] as String,
      ownerId: map['ownerId'] as String,
      privateDnsName: map['privateDnsName'] as String,
      privateIp: map['privateIp'] as String,
      privateIps: (map['privateIps'] as List).cast<String>(),
      region: map['region'] as String,
      requesterId: map['requesterId'] as String,
      securityGroups: (map['securityGroups'] as List).cast<String>(),
      subnetId: map['subnetId'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      vpcId: map['vpcId'] as String,
    );
  }
}

