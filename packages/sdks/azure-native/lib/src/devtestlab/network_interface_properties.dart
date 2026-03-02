// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'shared_public_ip_address_configuration.dart';

/// Properties of a network interface.
class NetworkInterfaceProperties {
  /// The DNS name.
  final pulumi.Input<String>? dnsName;
  /// The private IP address.
  final pulumi.Input<String>? privateIpAddress;
  /// The public IP address.
  final pulumi.Input<String>? publicIpAddress;
  /// The resource ID of the public IP address.
  final pulumi.Input<String>? publicIpAddressId;
  /// The RdpAuthority property is a server DNS host name or IP address followed by the service port number for RDP (Remote Desktop Protocol).
  final pulumi.Input<String>? rdpAuthority;
  /// The configuration for sharing a public IP address across multiple virtual machines.
  final pulumi.Input<SharedPublicIpAddressConfiguration>? sharedPublicIpAddressConfiguration;
  /// The SshAuthority property is a server DNS host name or IP address followed by the service port number for SSH.
  final pulumi.Input<String>? sshAuthority;
  /// The resource ID of the sub net.
  final pulumi.Input<String>? subnetId;
  /// The resource ID of the virtual network.
  final pulumi.Input<String>? virtualNetworkId;

  /// Creates a new [NetworkInterfaceProperties].
  /// [dnsName] The DNS name.
  /// [privateIpAddress] The private IP address.
  /// [publicIpAddress] The public IP address.
  /// [publicIpAddressId] The resource ID of the public IP address.
  /// [rdpAuthority] The RdpAuthority property is a server DNS host name or IP address followed by the service port number for RDP (Remote Desktop Protocol).
  /// [sharedPublicIpAddressConfiguration] The configuration for sharing a public IP address across multiple virtual machines.
  /// [sshAuthority] The SshAuthority property is a server DNS host name or IP address followed by the service port number for SSH.
  /// [subnetId] The resource ID of the sub net.
  /// [virtualNetworkId] The resource ID of the virtual network.
  NetworkInterfaceProperties({
    this.dnsName,
    this.privateIpAddress,
    this.publicIpAddress,
    this.publicIpAddressId,
    this.rdpAuthority,
    this.sharedPublicIpAddressConfiguration,
    this.sshAuthority,
    this.subnetId,
    this.virtualNetworkId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsName': ?dnsName,
      'privateIpAddress': ?privateIpAddress,
      'publicIpAddress': ?publicIpAddress,
      'publicIpAddressId': ?publicIpAddressId,
      'rdpAuthority': ?rdpAuthority,
      'sharedPublicIpAddressConfiguration': ?pulumi.Input.mapOptionalInputValue<SharedPublicIpAddressConfiguration, Map<String, dynamic>>(sharedPublicIpAddressConfiguration, (value) => value.toMap()),
      'sshAuthority': ?sshAuthority,
      'subnetId': ?subnetId,
      'virtualNetworkId': ?virtualNetworkId,
    };
  }

  factory NetworkInterfaceProperties.fromMap(Map<String, dynamic> map) {
    return NetworkInterfaceProperties(
      dnsName: map['dnsName'] == null ? null : (map['dnsName'] as String).input(),
      privateIpAddress: map['privateIpAddress'] == null ? null : (map['privateIpAddress'] as String).input(),
      publicIpAddress: map['publicIpAddress'] == null ? null : (map['publicIpAddress'] as String).input(),
      publicIpAddressId: map['publicIpAddressId'] == null ? null : (map['publicIpAddressId'] as String).input(),
      rdpAuthority: map['rdpAuthority'] == null ? null : (map['rdpAuthority'] as String).input(),
      sharedPublicIpAddressConfiguration: map['sharedPublicIpAddressConfiguration'] == null ? null : (SharedPublicIpAddressConfiguration.fromMap((map['sharedPublicIpAddressConfiguration'] as Map).cast<String, dynamic>())).input(),
      sshAuthority: map['sshAuthority'] == null ? null : (map['sshAuthority'] as String).input(),
      subnetId: map['subnetId'] == null ? null : (map['subnetId'] as String).input(),
      virtualNetworkId: map['virtualNetworkId'] == null ? null : (map['virtualNetworkId'] as String).input(),
    );
  }
}

