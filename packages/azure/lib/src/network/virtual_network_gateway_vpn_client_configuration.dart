// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_network_gateway_vpn_client_configuration_ipsec_policy.dart';
import 'virtual_network_gateway_vpn_client_configuration_radius_server.dart';
import 'virtual_network_gateway_vpn_client_configuration_revoked_certificate.dart';
import 'virtual_network_gateway_vpn_client_configuration_root_certificate.dart';
import 'virtual_network_gateway_vpn_client_configuration_virtual_network_gateway_client_connection.dart';

class VirtualNetworkGatewayVpnClientConfiguration {
  /// The client id of the Azure VPN application.
  /// See [Create an Active Directory (AD) tenant for P2S OpenVPN protocol connections](https://docs.microsoft.com/en-gb/azure/vpn-gateway/openvpn-azure-ad-tenant-multi-app) for values
  final String? aadAudience;
  /// The STS url for your tenant
  final String? aadIssuer;
  /// AzureAD Tenant URL
  final String? aadTenant;
  /// The address space out of which IP addresses for vpn clients will be taken. You can provide more than one address space, e.g. in CIDR notation.
  final List<String> addressSpaces;
  /// An `ipsec_policy` block as defined below.
  final VirtualNetworkGatewayVpnClientConfigurationIpsecPolicy? ipsecPolicy;
  /// The address of the Radius server.
  final String? radiusServerAddress;
  /// The secret used by the Radius server.
  final String? radiusServerSecret;
  /// One or more `radius_server` blocks as defined below.
  final List<VirtualNetworkGatewayVpnClientConfigurationRadiusServer>? radiusServers;
  /// One or more `revoked_certificate` blocks which are defined below.
  final List<VirtualNetworkGatewayVpnClientConfigurationRevokedCertificate>? revokedCertificates;
  /// One or more `root_certificate` blocks which are defined below. These root certificates are used to sign the client certificate used by the VPN clients to connect to the gateway.
  final List<VirtualNetworkGatewayVpnClientConfigurationRootCertificate>? rootCertificates;
  /// One or more `virtual_network_gateway_client_connection` blocks as defined below.
  final List<VirtualNetworkGatewayVpnClientConfigurationVirtualNetworkGatewayClientConnection>? virtualNetworkGatewayClientConnections;
  /// List of the vpn authentication types for the virtual network gateway.
  /// The supported values are `AAD`, `Radius` and `Certificate`.
  ///
  /// > **Note:** `vpn_auth_types` must be set when using multiple vpn authentication types.
  final List<String>? vpnAuthTypes;
  /// List of the protocols supported by the vpn client.
  /// The supported values are `SSTP`, `IkeV2` and `OpenVPN`.
  /// Values `SSTP` and `IkeV2` are incompatible with the use of
  /// `aad_tenant`, `aad_audience` and `aad_issuer`.
  final List<String>? vpnClientProtocols;

  /// Creates a new [VirtualNetworkGatewayVpnClientConfiguration].
  /// [aadAudience] The client id of the Azure VPN application.
  /// [aadIssuer] The STS url for your tenant
  /// [aadTenant] AzureAD Tenant URL
  /// [addressSpaces] The address space out of which IP addresses for vpn clients will be taken. You can provide more than one address space, e.g. in CIDR notation.
  /// [ipsecPolicy] An `ipsec_policy` block as defined below.
  /// [radiusServerAddress] The address of the Radius server.
  /// [radiusServerSecret] The secret used by the Radius server.
  /// [radiusServers] One or more `radius_server` blocks as defined below.
  /// [revokedCertificates] One or more `revoked_certificate` blocks which are defined below.
  /// [rootCertificates] One or more `root_certificate` blocks which are defined below. These root certificates are used to sign the client certificate used by the VPN clients to connect to the gateway.
  /// [virtualNetworkGatewayClientConnections] One or more `virtual_network_gateway_client_connection` blocks as defined below.
  /// [vpnAuthTypes] List of the vpn authentication types for the virtual network gateway.
  /// [vpnClientProtocols] List of the protocols supported by the vpn client.
  VirtualNetworkGatewayVpnClientConfiguration({
    this.aadAudience,
    this.aadIssuer,
    this.aadTenant,
    required this.addressSpaces,
    this.ipsecPolicy,
    this.radiusServerAddress,
    this.radiusServerSecret,
    this.radiusServers,
    this.revokedCertificates,
    this.rootCertificates,
    this.virtualNetworkGatewayClientConnections,
    this.vpnAuthTypes,
    this.vpnClientProtocols,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aadAudience': ?aadAudience,
      'aadIssuer': ?aadIssuer,
      'aadTenant': ?aadTenant,
      'addressSpaces': addressSpaces,
      'ipsecPolicy': ?ipsecPolicy == null ? null : ipsecPolicy!.toMap(),
      'radiusServerAddress': ?radiusServerAddress,
      'radiusServerSecret': ?radiusServerSecret,
      'radiusServers': ?radiusServers == null ? null : pulumi.Input.encodeList<VirtualNetworkGatewayVpnClientConfigurationRadiusServer, Map<String, dynamic>>(radiusServers!, (value) => value.toMap()),
      'revokedCertificates': ?revokedCertificates == null ? null : pulumi.Input.encodeList<VirtualNetworkGatewayVpnClientConfigurationRevokedCertificate, Map<String, dynamic>>(revokedCertificates!, (value) => value.toMap()),
      'rootCertificates': ?rootCertificates == null ? null : pulumi.Input.encodeList<VirtualNetworkGatewayVpnClientConfigurationRootCertificate, Map<String, dynamic>>(rootCertificates!, (value) => value.toMap()),
      'virtualNetworkGatewayClientConnections': ?virtualNetworkGatewayClientConnections == null ? null : pulumi.Input.encodeList<VirtualNetworkGatewayVpnClientConfigurationVirtualNetworkGatewayClientConnection, Map<String, dynamic>>(virtualNetworkGatewayClientConnections!, (value) => value.toMap()),
      'vpnAuthTypes': ?vpnAuthTypes,
      'vpnClientProtocols': ?vpnClientProtocols,
    };
  }

  factory VirtualNetworkGatewayVpnClientConfiguration.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkGatewayVpnClientConfiguration(
      aadAudience: map['aadAudience'] == null ? null : map['aadAudience'] as String,
      aadIssuer: map['aadIssuer'] == null ? null : map['aadIssuer'] as String,
      aadTenant: map['aadTenant'] == null ? null : map['aadTenant'] as String,
      addressSpaces: (map['addressSpaces'] as List).cast<String>(),
      ipsecPolicy: map['ipsecPolicy'] == null ? null : VirtualNetworkGatewayVpnClientConfigurationIpsecPolicy.fromMap((map['ipsecPolicy'] as Map).cast<String, dynamic>()),
      radiusServerAddress: map['radiusServerAddress'] == null ? null : map['radiusServerAddress'] as String,
      radiusServerSecret: map['radiusServerSecret'] == null ? null : map['radiusServerSecret'] as String,
      radiusServers: map['radiusServers'] == null ? null : pulumi.Input.decodeList<VirtualNetworkGatewayVpnClientConfigurationRadiusServer>(map['radiusServers'], (value) => VirtualNetworkGatewayVpnClientConfigurationRadiusServer.fromMap((value as Map).cast<String, dynamic>())),
      revokedCertificates: map['revokedCertificates'] == null ? null : pulumi.Input.decodeList<VirtualNetworkGatewayVpnClientConfigurationRevokedCertificate>(map['revokedCertificates'], (value) => VirtualNetworkGatewayVpnClientConfigurationRevokedCertificate.fromMap((value as Map).cast<String, dynamic>())),
      rootCertificates: map['rootCertificates'] == null ? null : pulumi.Input.decodeList<VirtualNetworkGatewayVpnClientConfigurationRootCertificate>(map['rootCertificates'], (value) => VirtualNetworkGatewayVpnClientConfigurationRootCertificate.fromMap((value as Map).cast<String, dynamic>())),
      virtualNetworkGatewayClientConnections: map['virtualNetworkGatewayClientConnections'] == null ? null : pulumi.Input.decodeList<VirtualNetworkGatewayVpnClientConfigurationVirtualNetworkGatewayClientConnection>(map['virtualNetworkGatewayClientConnections'], (value) => VirtualNetworkGatewayVpnClientConfigurationVirtualNetworkGatewayClientConnection.fromMap((value as Map).cast<String, dynamic>())),
      vpnAuthTypes: map['vpnAuthTypes'] == null ? null : (map['vpnAuthTypes'] as List).cast<String>(),
      vpnClientProtocols: map['vpnClientProtocols'] == null ? null : (map['vpnClientProtocols'] as List).cast<String>(),
    );
  }
}

