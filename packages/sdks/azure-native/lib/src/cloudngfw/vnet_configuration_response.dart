// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ipaddress_response.dart';
import 'ipaddress_space_response.dart';

/// VnetInfo for Firewall Networking
class VnetConfigurationResponse {
  /// IP of trust subnet for UDR
  final pulumi.Input<IPAddressResponse>? ipOfTrustSubnetForUdr;

  /// Trust Subnet
  final pulumi.Input<IPAddressSpaceResponse> trustSubnet;

  /// Untrust Subnet
  final pulumi.Input<IPAddressSpaceResponse> unTrustSubnet;

  /// Azure Virtual Network
  final pulumi.Input<IPAddressSpaceResponse> vnet;

  /// Creates a new [VnetConfigurationResponse].
  /// [ipOfTrustSubnetForUdr] IP of trust subnet for UDR
  /// [trustSubnet] Trust Subnet
  /// [unTrustSubnet] Untrust Subnet
  /// [vnet] Azure Virtual Network
  VnetConfigurationResponse({
    this.ipOfTrustSubnetForUdr,
    required this.trustSubnet,
    required this.unTrustSubnet,
    required this.vnet,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipOfTrustSubnetForUdr':
          ?pulumi.Input.mapOptionalInputValue<
            IPAddressResponse,
            Map<String, dynamic>
          >(ipOfTrustSubnetForUdr, (value) => value.toMap()),
      'trustSubnet':
          pulumi.Input.mapInputValue<
            IPAddressSpaceResponse,
            Map<String, dynamic>
          >(trustSubnet, (value) => value.toMap()),
      'unTrustSubnet':
          pulumi.Input.mapInputValue<
            IPAddressSpaceResponse,
            Map<String, dynamic>
          >(unTrustSubnet, (value) => value.toMap()),
      'vnet':
          pulumi.Input.mapInputValue<
            IPAddressSpaceResponse,
            Map<String, dynamic>
          >(vnet, (value) => value.toMap()),
    };
  }

  factory VnetConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return VnetConfigurationResponse(
      ipOfTrustSubnetForUdr: (() {
        final guardedValue = map['ipOfTrustSubnetForUdr'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          IPAddressResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      trustSubnet: pulumi.Input.fromValue(
        IPAddressSpaceResponse.fromMap(
          (map['trustSubnet']! as Map).cast<String, dynamic>(),
        ),
      ),
      unTrustSubnet: pulumi.Input.fromValue(
        IPAddressSpaceResponse.fromMap(
          (map['unTrustSubnet']! as Map).cast<String, dynamic>(),
        ),
      ),
      vnet: pulumi.Input.fromValue(
        IPAddressSpaceResponse.fromMap(
          (map['vnet']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
