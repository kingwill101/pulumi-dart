// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_tracking_specification_response.dart';
import 'group_identifier.dart';
import 'instance_ipv4_prefix.dart';
import 'instance_ipv6_address.dart';
import 'instance_ipv6_prefix.dart';
import 'instance_network_interface_association.dart';
import 'instance_network_interface_attachment.dart';
import 'instance_private_ip_address.dart';
import 'network_interface_status_enum_value.dart';

/// Definition of InstanceNetworkInterface
class InstanceNetworkInterface {
  /// <p>The association information for an Elastic IPv4 associated with the network interface.</p>
  final pulumi.Input<InstanceNetworkInterfaceAssociation>? association;
  /// <p>The network interface attachment.</p>
  final pulumi.Input<InstanceNetworkInterfaceAttachment>? attachment;
  /// <p>A security group connection tracking configuration that enables you to set the timeout for connection tracking on an Elastic network interface. For more information, see <a href='https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/security-group-connection-tracking.html#connection-tracking-timeouts'>Connection tracking timeouts</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>
  final pulumi.Input<ConnectionTrackingSpecificationResponse>? connectionTrackingConfiguration;
  /// <p>The description.</p>
  final pulumi.Input<String>? description;
  /// <p>The security groups.</p>
  final pulumi.Input<List<GroupIdentifier>>? groups;
  /// <p>The type of network interface.</p> <p>Valid values: <code>interface</code> | <code>efa</code> | <code>trunk</code> </p>
  final pulumi.Input<String>? interfaceType;
  /// <p>The IPv4 delegated prefixes that are assigned to the network interface.</p>
  final pulumi.Input<List<InstanceIpv4Prefix>>? ipv4Prefixes;
  /// <p>The IPv6 addresses associated with the network interface.</p>
  final pulumi.Input<List<InstanceIpv6Address>>? ipv6Addresses;
  /// <p>The IPv6 delegated prefixes that are assigned to the network interface.</p>
  final pulumi.Input<List<InstanceIpv6Prefix>>? ipv6Prefixes;
  /// <p>The MAC address.</p>
  final pulumi.Input<String>? macAddress;
  /// <p>The ID of the network interface.</p>
  final pulumi.Input<String>? networkInterfaceId;
  /// <p>The ID of the Amazon Web Services account that created the network interface.</p>
  final pulumi.Input<String>? ownerId;
  /// <p>The private DNS name.</p>
  final pulumi.Input<String>? privateDnsName;
  /// <p>The IPv4 address of the network interface within the subnet.</p>
  final pulumi.Input<String>? privateIpAddress;
  /// <p>The private IPv4 addresses associated with the network interface.</p>
  final pulumi.Input<List<InstancePrivateIpAddress>>? privateIpAddresses;
  /// <p>Indicates whether source/destination checking is enabled.</p>
  final pulumi.Input<bool>? sourceDestCheck;
  /// <p>The status of the network interface.</p>
  final pulumi.Input<NetworkInterfaceStatusEnumValue>? status;
  /// <p>The ID of the subnet.</p>
  final pulumi.Input<String>? subnetId;
  /// <p>The ID of the VPC.</p>
  final pulumi.Input<String>? vpcId;

  /// Creates a new [InstanceNetworkInterface].
  /// [association] <p>The association information for an Elastic IPv4 associated with the network interface.</p>
  /// [attachment] <p>The network interface attachment.</p>
  /// [connectionTrackingConfiguration] <p>A security group connection tracking configuration that enables you to set the timeout for connection tracking on an Elastic network interface. For more information, see <a href='https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/security-group-connection-tracking.html#connection-tracking-timeouts'>Connection tracking timeouts</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>
  /// [description] <p>The description.</p>
  /// [groups] <p>The security groups.</p>
  /// [interfaceType] <p>The type of network interface.</p> <p>Valid values: <code>interface</code> | <code>efa</code> | <code>trunk</code> </p>
  /// [ipv4Prefixes] <p>The IPv4 delegated prefixes that are assigned to the network interface.</p>
  /// [ipv6Addresses] <p>The IPv6 addresses associated with the network interface.</p>
  /// [ipv6Prefixes] <p>The IPv6 delegated prefixes that are assigned to the network interface.</p>
  /// [macAddress] <p>The MAC address.</p>
  /// [networkInterfaceId] <p>The ID of the network interface.</p>
  /// [ownerId] <p>The ID of the Amazon Web Services account that created the network interface.</p>
  /// [privateDnsName] <p>The private DNS name.</p>
  /// [privateIpAddress] <p>The IPv4 address of the network interface within the subnet.</p>
  /// [privateIpAddresses] <p>The private IPv4 addresses associated with the network interface.</p>
  /// [sourceDestCheck] <p>Indicates whether source/destination checking is enabled.</p>
  /// [status] <p>The status of the network interface.</p>
  /// [subnetId] <p>The ID of the subnet.</p>
  /// [vpcId] <p>The ID of the VPC.</p>
  InstanceNetworkInterface({
    this.association,
    this.attachment,
    this.connectionTrackingConfiguration,
    this.description,
    this.groups,
    this.interfaceType,
    this.ipv4Prefixes,
    this.ipv6Addresses,
    this.ipv6Prefixes,
    this.macAddress,
    this.networkInterfaceId,
    this.ownerId,
    this.privateDnsName,
    this.privateIpAddress,
    this.privateIpAddresses,
    this.sourceDestCheck,
    this.status,
    this.subnetId,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'association': ?pulumi.Input.mapOptionalInputValue<InstanceNetworkInterfaceAssociation, Map<String, dynamic>>(association, (value) => value.toMap()),
      'attachment': ?pulumi.Input.mapOptionalInputValue<InstanceNetworkInterfaceAttachment, Map<String, dynamic>>(attachment, (value) => value.toMap()),
      'connectionTrackingConfiguration': ?pulumi.Input.mapOptionalInputValue<ConnectionTrackingSpecificationResponse, Map<String, dynamic>>(connectionTrackingConfiguration, (value) => value.toMap()),
      'description': ?description,
      'groups': ?pulumi.Input.mapOptionalInputValue<List<GroupIdentifier>, List<Map<String, dynamic>>>(groups, (value) => pulumi.Input.encodeList<GroupIdentifier, Map<String, dynamic>>(value, (value) => value.toMap())),
      'interfaceType': ?interfaceType,
      'ipv4Prefixes': ?pulumi.Input.mapOptionalInputValue<List<InstanceIpv4Prefix>, List<Map<String, dynamic>>>(ipv4Prefixes, (value) => pulumi.Input.encodeList<InstanceIpv4Prefix, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ipv6Addresses': ?pulumi.Input.mapOptionalInputValue<List<InstanceIpv6Address>, List<Map<String, dynamic>>>(ipv6Addresses, (value) => pulumi.Input.encodeList<InstanceIpv6Address, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ipv6Prefixes': ?pulumi.Input.mapOptionalInputValue<List<InstanceIpv6Prefix>, List<Map<String, dynamic>>>(ipv6Prefixes, (value) => pulumi.Input.encodeList<InstanceIpv6Prefix, Map<String, dynamic>>(value, (value) => value.toMap())),
      'macAddress': ?macAddress,
      'networkInterfaceId': ?networkInterfaceId,
      'ownerId': ?ownerId,
      'privateDnsName': ?privateDnsName,
      'privateIpAddress': ?privateIpAddress,
      'privateIpAddresses': ?pulumi.Input.mapOptionalInputValue<List<InstancePrivateIpAddress>, List<Map<String, dynamic>>>(privateIpAddresses, (value) => pulumi.Input.encodeList<InstancePrivateIpAddress, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sourceDestCheck': ?sourceDestCheck,
      'status': ?pulumi.Input.mapOptionalInputValue<NetworkInterfaceStatusEnumValue, Map<String, dynamic>>(status, (value) => value.toMap()),
      'subnetId': ?subnetId,
      'vpcId': ?vpcId,
    };
  }

  factory InstanceNetworkInterface.fromMap(Map<String, dynamic> map) {
    return InstanceNetworkInterface(
      association: map['association'] == null ? null : (InstanceNetworkInterfaceAssociation.fromMap((map['association']! as Map).cast<String, dynamic>())).input(),
      attachment: map['attachment'] == null ? null : (InstanceNetworkInterfaceAttachment.fromMap((map['attachment']! as Map).cast<String, dynamic>())).input(),
      connectionTrackingConfiguration: map['connectionTrackingConfiguration'] == null ? null : (ConnectionTrackingSpecificationResponse.fromMap((map['connectionTrackingConfiguration']! as Map).cast<String, dynamic>())).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      groups: map['groups'] == null ? null : (pulumi.Input.decodeList<GroupIdentifier>(map['groups']!, (value) => GroupIdentifier.fromMap((value as Map).cast<String, dynamic>()))).input(),
      interfaceType: map['interfaceType'] == null ? null : (map['interfaceType']! as String).input(),
      ipv4Prefixes: map['ipv4Prefixes'] == null ? null : (pulumi.Input.decodeList<InstanceIpv4Prefix>(map['ipv4Prefixes']!, (value) => InstanceIpv4Prefix.fromMap((value as Map).cast<String, dynamic>()))).input(),
      ipv6Addresses: map['ipv6Addresses'] == null ? null : (pulumi.Input.decodeList<InstanceIpv6Address>(map['ipv6Addresses']!, (value) => InstanceIpv6Address.fromMap((value as Map).cast<String, dynamic>()))).input(),
      ipv6Prefixes: map['ipv6Prefixes'] == null ? null : (pulumi.Input.decodeList<InstanceIpv6Prefix>(map['ipv6Prefixes']!, (value) => InstanceIpv6Prefix.fromMap((value as Map).cast<String, dynamic>()))).input(),
      macAddress: map['macAddress'] == null ? null : (map['macAddress']! as String).input(),
      networkInterfaceId: map['networkInterfaceId'] == null ? null : (map['networkInterfaceId']! as String).input(),
      ownerId: map['ownerId'] == null ? null : (map['ownerId']! as String).input(),
      privateDnsName: map['privateDnsName'] == null ? null : (map['privateDnsName']! as String).input(),
      privateIpAddress: map['privateIpAddress'] == null ? null : (map['privateIpAddress']! as String).input(),
      privateIpAddresses: map['privateIpAddresses'] == null ? null : (pulumi.Input.decodeList<InstancePrivateIpAddress>(map['privateIpAddresses']!, (value) => InstancePrivateIpAddress.fromMap((value as Map).cast<String, dynamic>()))).input(),
      sourceDestCheck: map['sourceDestCheck'] == null ? null : (map['sourceDestCheck']! as bool).input(),
      status: map['status'] == null ? null : (NetworkInterfaceStatusEnumValue.fromMap((map['status']! as Map).cast<String, dynamic>())).input(),
      subnetId: map['subnetId'] == null ? null : (map['subnetId']! as String).input(),
      vpcId: map['vpcId'] == null ? null : (map['vpcId']! as String).input(),
    );
  }
}

