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
  /// &lt;p&gt;The association information for an Elastic IPv4 associated with the network interface.&lt;/p&gt;
  final pulumi.Input<InstanceNetworkInterfaceAssociation>? association;

  /// &lt;p&gt;The network interface attachment.&lt;/p&gt;
  final pulumi.Input<InstanceNetworkInterfaceAttachment>? attachment;

  /// &lt;p&gt;A security group connection tracking configuration that enables you to set the timeout for connection tracking on an Elastic network interface. For more information, see &lt;a href='https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/security-group-connection-tracking.html#connection-tracking-timeouts'&gt;Connection tracking timeouts&lt;/a&gt; in the &lt;i&gt;Amazon Elastic Compute Cloud User Guide&lt;/i&gt;.&lt;/p&gt;
  final pulumi.Input<ConnectionTrackingSpecificationResponse>?
  connectionTrackingConfiguration;

  /// &lt;p&gt;The description.&lt;/p&gt;
  final pulumi.Input<String>? description;

  /// &lt;p&gt;The security groups.&lt;/p&gt;
  final pulumi.Input<List<GroupIdentifier>>? groups;

  /// &lt;p&gt;The type of network interface.&lt;/p&gt; &lt;p&gt;Valid values: &lt;code&gt;interface&lt;/code&gt; | &lt;code&gt;efa&lt;/code&gt; | &lt;code&gt;trunk&lt;/code&gt; &lt;/p&gt;
  final pulumi.Input<String>? interfaceType;

  /// &lt;p&gt;The IPv4 delegated prefixes that are assigned to the network interface.&lt;/p&gt;
  final pulumi.Input<List<InstanceIpv4Prefix>>? ipv4Prefixes;

  /// &lt;p&gt;The IPv6 addresses associated with the network interface.&lt;/p&gt;
  final pulumi.Input<List<InstanceIpv6Address>>? ipv6Addresses;

  /// &lt;p&gt;The IPv6 delegated prefixes that are assigned to the network interface.&lt;/p&gt;
  final pulumi.Input<List<InstanceIpv6Prefix>>? ipv6Prefixes;

  /// &lt;p&gt;The MAC address.&lt;/p&gt;
  final pulumi.Input<String>? macAddress;

  /// &lt;p&gt;The ID of the network interface.&lt;/p&gt;
  final pulumi.Input<String>? networkInterfaceId;

  /// &lt;p&gt;The ID of the Amazon Web Services account that created the network interface.&lt;/p&gt;
  final pulumi.Input<String>? ownerId;

  /// &lt;p&gt;The private DNS name.&lt;/p&gt;
  final pulumi.Input<String>? privateDnsName;

  /// &lt;p&gt;The IPv4 address of the network interface within the subnet.&lt;/p&gt;
  final pulumi.Input<String>? privateIpAddress;

  /// &lt;p&gt;The private IPv4 addresses associated with the network interface.&lt;/p&gt;
  final pulumi.Input<List<InstancePrivateIpAddress>>? privateIpAddresses;

  /// &lt;p&gt;Indicates whether source/destination checking is enabled.&lt;/p&gt;
  final pulumi.Input<bool>? sourceDestCheck;

  /// &lt;p&gt;The status of the network interface.&lt;/p&gt;
  final pulumi.Input<NetworkInterfaceStatusEnumValue>? status;

  /// &lt;p&gt;The ID of the subnet.&lt;/p&gt;
  final pulumi.Input<String>? subnetId;

  /// &lt;p&gt;The ID of the VPC.&lt;/p&gt;
  final pulumi.Input<String>? vpcId;

  /// Creates a new [InstanceNetworkInterface].
  /// [association] &lt;p&gt;The association information for an Elastic IPv4 associated with the network interface.&lt;/p&gt;
  /// [attachment] &lt;p&gt;The network interface attachment.&lt;/p&gt;
  /// [connectionTrackingConfiguration] &lt;p&gt;A security group connection tracking configuration that enables you to set the timeout for connection tracking on an Elastic network interface. For more information, see &lt;a href='https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/security-group-connection-tracking.html#connection-tracking-timeouts'&gt;Connection tracking timeouts&lt;/a&gt; in the &lt;i&gt;Amazon Elastic Compute Cloud User Guide&lt;/i&gt;.&lt;/p&gt;
  /// [description] &lt;p&gt;The description.&lt;/p&gt;
  /// [groups] &lt;p&gt;The security groups.&lt;/p&gt;
  /// [interfaceType] &lt;p&gt;The type of network interface.&lt;/p&gt; &lt;p&gt;Valid values: &lt;code&gt;interface&lt;/code&gt; | &lt;code&gt;efa&lt;/code&gt; | &lt;code&gt;trunk&lt;/code&gt; &lt;/p&gt;
  /// [ipv4Prefixes] &lt;p&gt;The IPv4 delegated prefixes that are assigned to the network interface.&lt;/p&gt;
  /// [ipv6Addresses] &lt;p&gt;The IPv6 addresses associated with the network interface.&lt;/p&gt;
  /// [ipv6Prefixes] &lt;p&gt;The IPv6 delegated prefixes that are assigned to the network interface.&lt;/p&gt;
  /// [macAddress] &lt;p&gt;The MAC address.&lt;/p&gt;
  /// [networkInterfaceId] &lt;p&gt;The ID of the network interface.&lt;/p&gt;
  /// [ownerId] &lt;p&gt;The ID of the Amazon Web Services account that created the network interface.&lt;/p&gt;
  /// [privateDnsName] &lt;p&gt;The private DNS name.&lt;/p&gt;
  /// [privateIpAddress] &lt;p&gt;The IPv4 address of the network interface within the subnet.&lt;/p&gt;
  /// [privateIpAddresses] &lt;p&gt;The private IPv4 addresses associated with the network interface.&lt;/p&gt;
  /// [sourceDestCheck] &lt;p&gt;Indicates whether source/destination checking is enabled.&lt;/p&gt;
  /// [status] &lt;p&gt;The status of the network interface.&lt;/p&gt;
  /// [subnetId] &lt;p&gt;The ID of the subnet.&lt;/p&gt;
  /// [vpcId] &lt;p&gt;The ID of the VPC.&lt;/p&gt;
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
      'association':
          ?pulumi.Input.mapOptionalInputValue<
            InstanceNetworkInterfaceAssociation,
            Map<String, dynamic>
          >(association, (value) => value.toMap()),
      'attachment':
          ?pulumi.Input.mapOptionalInputValue<
            InstanceNetworkInterfaceAttachment,
            Map<String, dynamic>
          >(attachment, (value) => value.toMap()),
      'connectionTrackingConfiguration':
          ?pulumi.Input.mapOptionalInputValue<
            ConnectionTrackingSpecificationResponse,
            Map<String, dynamic>
          >(connectionTrackingConfiguration, (value) => value.toMap()),
      'description': ?description,
      'groups':
          ?pulumi.Input.mapOptionalInputValue<
            List<GroupIdentifier>,
            List<Map<String, dynamic>>
          >(
            groups,
            (value) =>
                pulumi.Input.encodeList<GroupIdentifier, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'interfaceType': ?interfaceType,
      'ipv4Prefixes':
          ?pulumi.Input.mapOptionalInputValue<
            List<InstanceIpv4Prefix>,
            List<Map<String, dynamic>>
          >(
            ipv4Prefixes,
            (value) =>
                pulumi.Input.encodeList<
                  InstanceIpv4Prefix,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'ipv6Addresses':
          ?pulumi.Input.mapOptionalInputValue<
            List<InstanceIpv6Address>,
            List<Map<String, dynamic>>
          >(
            ipv6Addresses,
            (value) =>
                pulumi.Input.encodeList<
                  InstanceIpv6Address,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'ipv6Prefixes':
          ?pulumi.Input.mapOptionalInputValue<
            List<InstanceIpv6Prefix>,
            List<Map<String, dynamic>>
          >(
            ipv6Prefixes,
            (value) =>
                pulumi.Input.encodeList<
                  InstanceIpv6Prefix,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'macAddress': ?macAddress,
      'networkInterfaceId': ?networkInterfaceId,
      'ownerId': ?ownerId,
      'privateDnsName': ?privateDnsName,
      'privateIpAddress': ?privateIpAddress,
      'privateIpAddresses':
          ?pulumi.Input.mapOptionalInputValue<
            List<InstancePrivateIpAddress>,
            List<Map<String, dynamic>>
          >(
            privateIpAddresses,
            (value) =>
                pulumi.Input.encodeList<
                  InstancePrivateIpAddress,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'sourceDestCheck': ?sourceDestCheck,
      'status':
          ?pulumi.Input.mapOptionalInputValue<
            NetworkInterfaceStatusEnumValue,
            Map<String, dynamic>
          >(status, (value) => value.toMap()),
      'subnetId': ?subnetId,
      'vpcId': ?vpcId,
    };
  }

  factory InstanceNetworkInterface.fromMap(Map<String, dynamic> map) {
    return InstanceNetworkInterface(
      association: (() {
        final guardedValue = map['association'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          InstanceNetworkInterfaceAssociation.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      attachment: (() {
        final guardedValue = map['attachment'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          InstanceNetworkInterfaceAttachment.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      connectionTrackingConfiguration: (() {
        final guardedValue = map['connectionTrackingConfiguration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ConnectionTrackingSpecificationResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      groups: (() {
        final guardedValue = map['groups'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<GroupIdentifier>(
            guardedValue,
            (value) =>
                GroupIdentifier.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
      interfaceType: (() {
        final guardedValue = map['interfaceType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ipv4Prefixes: (() {
        final guardedValue = map['ipv4Prefixes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<InstanceIpv4Prefix>(
            guardedValue,
            (value) => InstanceIpv4Prefix.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      ipv6Addresses: (() {
        final guardedValue = map['ipv6Addresses'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<InstanceIpv6Address>(
            guardedValue,
            (value) => InstanceIpv6Address.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      ipv6Prefixes: (() {
        final guardedValue = map['ipv6Prefixes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<InstanceIpv6Prefix>(
            guardedValue,
            (value) => InstanceIpv6Prefix.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      macAddress: (() {
        final guardedValue = map['macAddress'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      networkInterfaceId: (() {
        final guardedValue = map['networkInterfaceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ownerId: (() {
        final guardedValue = map['ownerId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      privateDnsName: (() {
        final guardedValue = map['privateDnsName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      privateIpAddress: (() {
        final guardedValue = map['privateIpAddress'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      privateIpAddresses: (() {
        final guardedValue = map['privateIpAddresses'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<InstancePrivateIpAddress>(
            guardedValue,
            (value) => InstancePrivateIpAddress.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      sourceDestCheck: (() {
        final guardedValue = map['sourceDestCheck'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          NetworkInterfaceStatusEnumValue.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      subnetId: (() {
        final guardedValue = map['subnetId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      vpcId: (() {
        final guardedValue = map['vpcId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
