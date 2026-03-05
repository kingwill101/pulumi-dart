// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'shared_public_ip_address_configuration_response.dart';

/// Properties of a network interface.
class NetworkInterfacePropertiesResponse {
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
  final pulumi.Input<SharedPublicIpAddressConfigurationResponse>? sharedPublicIpAddressConfiguration;
  /// The SshAuthority property is a server DNS host name or IP address followed by the service port number for SSH.
  final pulumi.Input<String>? sshAuthority;
  /// The resource ID of the sub net.
  final pulumi.Input<String>? subnetId;
  /// The resource ID of the virtual network.
  final pulumi.Input<String>? virtualNetworkId;

  /// Creates a new [NetworkInterfacePropertiesResponse].
  /// [dnsName] The DNS name.
  /// [privateIpAddress] The private IP address.
  /// [publicIpAddress] The public IP address.
  /// [publicIpAddressId] The resource ID of the public IP address.
  /// [rdpAuthority] The RdpAuthority property is a server DNS host name or IP address followed by the service port number for RDP (Remote Desktop Protocol).
  /// [sharedPublicIpAddressConfiguration] The configuration for sharing a public IP address across multiple virtual machines.
  /// [sshAuthority] The SshAuthority property is a server DNS host name or IP address followed by the service port number for SSH.
  /// [subnetId] The resource ID of the sub net.
  /// [virtualNetworkId] The resource ID of the virtual network.
  NetworkInterfacePropertiesResponse({
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
      'sharedPublicIpAddressConfiguration': ?pulumi.Input.mapOptionalInputValue<SharedPublicIpAddressConfigurationResponse, Map<String, dynamic>>(sharedPublicIpAddressConfiguration, (value) => value.toMap()),
      'sshAuthority': ?sshAuthority,
      'subnetId': ?subnetId,
      'virtualNetworkId': ?virtualNetworkId,
    };
  }

  factory NetworkInterfacePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return NetworkInterfacePropertiesResponse(
      dnsName: (() { final guardedValue = map['dnsName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateIpAddress: (() { final guardedValue = map['privateIpAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicIpAddress: (() { final guardedValue = map['publicIpAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicIpAddressId: (() { final guardedValue = map['publicIpAddressId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rdpAuthority: (() { final guardedValue = map['rdpAuthority']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sharedPublicIpAddressConfiguration: (() { final guardedValue = map['sharedPublicIpAddressConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SharedPublicIpAddressConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sshAuthority: (() { final guardedValue = map['sshAuthority']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnetId: (() { final guardedValue = map['subnetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      virtualNetworkId: (() { final guardedValue = map['virtualNetworkId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

