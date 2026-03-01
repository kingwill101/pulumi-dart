// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ipsec_policy_response.dart';
import 'p2_svpn_server_config_radius_client_root_certificate_response.dart';
import 'p2_svpn_server_config_radius_server_root_certificate_response.dart';
import 'p2_svpn_server_config_vpn_client_revoked_certificate_response.dart';
import 'p2_svpn_server_config_vpn_client_root_certificate_response.dart';
import 'sub_resource_response.dart';

/// Parameters for P2SVpnServerConfiguration.
class P2SVpnServerConfigurationPropertiesResponse {
  /// A unique read-only string that changes whenever the resource is updated.
  final String? etag;
  /// The name of the P2SVpnServerConfiguration that is unique within a VirtualWan in a resource group. This name can be used to access the resource along with Paren VirtualWan resource name.
  final String? name;
  /// List of references to P2SVpnGateways.
  final List<SubResourceResponse> p2SVpnGateways;
  /// Radius client root certificate of P2SVpnServerConfiguration.
  final List<P2SVpnServerConfigRadiusClientRootCertificateResponse>? p2SVpnServerConfigRadiusClientRootCertificates;
  /// Radius Server root certificate of P2SVpnServerConfiguration.
  final List<P2SVpnServerConfigRadiusServerRootCertificateResponse>? p2SVpnServerConfigRadiusServerRootCertificates;
  /// VPN client revoked certificate of P2SVpnServerConfiguration.
  final List<P2SVpnServerConfigVpnClientRevokedCertificateResponse>? p2SVpnServerConfigVpnClientRevokedCertificates;
  /// VPN client root certificate of P2SVpnServerConfiguration.
  final List<P2SVpnServerConfigVpnClientRootCertificateResponse>? p2SVpnServerConfigVpnClientRootCertificates;
  /// The provisioning state of the P2S VPN server configuration resource.
  final String provisioningState;
  /// The radius server address property of the P2SVpnServerConfiguration resource for point to site client connection.
  final String? radiusServerAddress;
  /// The radius secret property of the P2SVpnServerConfiguration resource for point to site client connection.
  final String? radiusServerSecret;
  /// VpnClientIpsecPolicies for P2SVpnServerConfiguration.
  final List<IpsecPolicyResponse>? vpnClientIpsecPolicies;
  /// VPN protocols for the P2SVpnServerConfiguration.
  final List<String>? vpnProtocols;

  /// Creates a new [P2SVpnServerConfigurationPropertiesResponse].
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [name] The name of the P2SVpnServerConfiguration that is unique within a VirtualWan in a resource group. This name can be used to access the resource along with Paren VirtualWan resource name.
  /// [p2SVpnGateways] List of references to P2SVpnGateways.
  /// [p2SVpnServerConfigRadiusClientRootCertificates] Radius client root certificate of P2SVpnServerConfiguration.
  /// [p2SVpnServerConfigRadiusServerRootCertificates] Radius Server root certificate of P2SVpnServerConfiguration.
  /// [p2SVpnServerConfigVpnClientRevokedCertificates] VPN client revoked certificate of P2SVpnServerConfiguration.
  /// [p2SVpnServerConfigVpnClientRootCertificates] VPN client root certificate of P2SVpnServerConfiguration.
  /// [provisioningState] The provisioning state of the P2S VPN server configuration resource.
  /// [radiusServerAddress] The radius server address property of the P2SVpnServerConfiguration resource for point to site client connection.
  /// [radiusServerSecret] The radius secret property of the P2SVpnServerConfiguration resource for point to site client connection.
  /// [vpnClientIpsecPolicies] VpnClientIpsecPolicies for P2SVpnServerConfiguration.
  /// [vpnProtocols] VPN protocols for the P2SVpnServerConfiguration.
  P2SVpnServerConfigurationPropertiesResponse({
    this.etag,
    this.name,
    required this.p2SVpnGateways,
    this.p2SVpnServerConfigRadiusClientRootCertificates,
    this.p2SVpnServerConfigRadiusServerRootCertificates,
    this.p2SVpnServerConfigVpnClientRevokedCertificates,
    this.p2SVpnServerConfigVpnClientRootCertificates,
    required this.provisioningState,
    this.radiusServerAddress,
    this.radiusServerSecret,
    this.vpnClientIpsecPolicies,
    this.vpnProtocols,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'etag': ?etag,
      'name': ?name,
      'p2SVpnGateways': pulumi.Input.encodeList<SubResourceResponse, Map<String, dynamic>>(p2SVpnGateways, (value) => value.toMap()),
      'p2SVpnServerConfigRadiusClientRootCertificates': ?p2SVpnServerConfigRadiusClientRootCertificates == null ? null : pulumi.Input.encodeList<P2SVpnServerConfigRadiusClientRootCertificateResponse, Map<String, dynamic>>(p2SVpnServerConfigRadiusClientRootCertificates!, (value) => value.toMap()),
      'p2SVpnServerConfigRadiusServerRootCertificates': ?p2SVpnServerConfigRadiusServerRootCertificates == null ? null : pulumi.Input.encodeList<P2SVpnServerConfigRadiusServerRootCertificateResponse, Map<String, dynamic>>(p2SVpnServerConfigRadiusServerRootCertificates!, (value) => value.toMap()),
      'p2SVpnServerConfigVpnClientRevokedCertificates': ?p2SVpnServerConfigVpnClientRevokedCertificates == null ? null : pulumi.Input.encodeList<P2SVpnServerConfigVpnClientRevokedCertificateResponse, Map<String, dynamic>>(p2SVpnServerConfigVpnClientRevokedCertificates!, (value) => value.toMap()),
      'p2SVpnServerConfigVpnClientRootCertificates': ?p2SVpnServerConfigVpnClientRootCertificates == null ? null : pulumi.Input.encodeList<P2SVpnServerConfigVpnClientRootCertificateResponse, Map<String, dynamic>>(p2SVpnServerConfigVpnClientRootCertificates!, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'radiusServerAddress': ?radiusServerAddress,
      'radiusServerSecret': ?radiusServerSecret,
      'vpnClientIpsecPolicies': ?vpnClientIpsecPolicies == null ? null : pulumi.Input.encodeList<IpsecPolicyResponse, Map<String, dynamic>>(vpnClientIpsecPolicies!, (value) => value.toMap()),
      'vpnProtocols': ?vpnProtocols,
    };
  }

  factory P2SVpnServerConfigurationPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return P2SVpnServerConfigurationPropertiesResponse(
      etag: map['etag'] == null ? null : map['etag'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      p2SVpnGateways: pulumi.Input.decodeList<SubResourceResponse>(map['p2SVpnGateways'], (value) => SubResourceResponse.fromMap((value as Map).cast<String, dynamic>())),
      p2SVpnServerConfigRadiusClientRootCertificates: map['p2SVpnServerConfigRadiusClientRootCertificates'] == null ? null : pulumi.Input.decodeList<P2SVpnServerConfigRadiusClientRootCertificateResponse>(map['p2SVpnServerConfigRadiusClientRootCertificates'], (value) => P2SVpnServerConfigRadiusClientRootCertificateResponse.fromMap((value as Map).cast<String, dynamic>())),
      p2SVpnServerConfigRadiusServerRootCertificates: map['p2SVpnServerConfigRadiusServerRootCertificates'] == null ? null : pulumi.Input.decodeList<P2SVpnServerConfigRadiusServerRootCertificateResponse>(map['p2SVpnServerConfigRadiusServerRootCertificates'], (value) => P2SVpnServerConfigRadiusServerRootCertificateResponse.fromMap((value as Map).cast<String, dynamic>())),
      p2SVpnServerConfigVpnClientRevokedCertificates: map['p2SVpnServerConfigVpnClientRevokedCertificates'] == null ? null : pulumi.Input.decodeList<P2SVpnServerConfigVpnClientRevokedCertificateResponse>(map['p2SVpnServerConfigVpnClientRevokedCertificates'], (value) => P2SVpnServerConfigVpnClientRevokedCertificateResponse.fromMap((value as Map).cast<String, dynamic>())),
      p2SVpnServerConfigVpnClientRootCertificates: map['p2SVpnServerConfigVpnClientRootCertificates'] == null ? null : pulumi.Input.decodeList<P2SVpnServerConfigVpnClientRootCertificateResponse>(map['p2SVpnServerConfigVpnClientRootCertificates'], (value) => P2SVpnServerConfigVpnClientRootCertificateResponse.fromMap((value as Map).cast<String, dynamic>())),
      provisioningState: map['provisioningState'] as String,
      radiusServerAddress: map['radiusServerAddress'] == null ? null : map['radiusServerAddress'] as String,
      radiusServerSecret: map['radiusServerSecret'] == null ? null : map['radiusServerSecret'] as String,
      vpnClientIpsecPolicies: map['vpnClientIpsecPolicies'] == null ? null : pulumi.Input.decodeList<IpsecPolicyResponse>(map['vpnClientIpsecPolicies'], (value) => IpsecPolicyResponse.fromMap((value as Map).cast<String, dynamic>())),
      vpnProtocols: map['vpnProtocols'] == null ? null : (map['vpnProtocols'] as List).cast<String>(),
    );
  }
}

