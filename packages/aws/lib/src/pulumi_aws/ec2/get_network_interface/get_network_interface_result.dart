// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_network_interface_association/get_network_interface_association.dart';
import '../get_network_interface_attachment/get_network_interface_attachment.dart';
import '../get_network_interface_filter/get_network_interface_filter.dart';

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
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['associations'] = pulumi.Input.encodeList<
        GetNetworkInterfaceAssociation,
        Map<String, dynamic>>(associations, (value) => value.toMap());
    map['attachments'] = pulumi.Input.encodeList<GetNetworkInterfaceAttachment,
        Map<String, dynamic>>(attachments, (value) => value.toMap());
    map['availabilityZone'] = availabilityZone;
    map['description'] = description;
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] = pulumi.Input.encodeList<GetNetworkInterfaceFilter,
          Map<String, dynamic>>(filtersValue, (value) => value.toMap());
    }
    map['id'] = id;
    map['interfaceType'] = interfaceType;
    map['ipv6Addresses'] = ipv6Addresses;
    map['macAddress'] = macAddress;
    map['outpostArn'] = outpostArn;
    map['ownerId'] = ownerId;
    map['privateDnsName'] = privateDnsName;
    map['privateIp'] = privateIp;
    map['privateIps'] = privateIps;
    map['region'] = region;
    map['requesterId'] = requesterId;
    map['securityGroups'] = securityGroups;
    map['subnetId'] = subnetId;
    map['tags'] = tags;
    map['vpcId'] = vpcId;
    return map;
  }

  factory GetNetworkInterfaceResult.fromMap(Map<String, dynamic> map) {
    return GetNetworkInterfaceResult(
      arn: map['arn'] as String,
      associations: pulumi.Input.decodeList<GetNetworkInterfaceAssociation>(
          map['associations'],
          (value) => GetNetworkInterfaceAssociation.fromMap(
              (value as Map).cast<String, dynamic>())),
      attachments: pulumi.Input.decodeList<GetNetworkInterfaceAttachment>(
          map['attachments'],
          (value) => GetNetworkInterfaceAttachment.fromMap(
              (value as Map).cast<String, dynamic>())),
      availabilityZone: map['availabilityZone'] as String,
      description: map['description'] as String,
      filters: map['filters'] == null
          ? null
          : pulumi.Input.decodeList<GetNetworkInterfaceFilter>(
              map['filters'],
              (value) => GetNetworkInterfaceFilter.fromMap(
                  (value as Map).cast<String, dynamic>())),
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
