// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ipsec_policy.dart';
import 'p2_svpn_server_config_radius_client_root_certificate.dart';
import 'p2_svpn_server_config_radius_server_root_certificate.dart';
import 'p2_svpn_server_config_vpn_client_revoked_certificate.dart';
import 'p2_svpn_server_config_vpn_client_root_certificate.dart';

/// Parameters for P2SVpnServerConfiguration.
class P2SVpnServerConfigurationProperties {
  /// A unique read-only string that changes whenever the resource is updated.
  final String? etag;
  /// The name of the P2SVpnServerConfiguration that is unique within a VirtualWan in a resource group. This name can be used to access the resource along with Paren VirtualWan resource name.
  final String? name;
  /// Radius client root certificate of P2SVpnServerConfiguration.
  final List<P2SVpnServerConfigRadiusClientRootCertificate>? p2SVpnServerConfigRadiusClientRootCertificates;
  /// Radius Server root certificate of P2SVpnServerConfiguration.
  final List<P2SVpnServerConfigRadiusServerRootCertificate>? p2SVpnServerConfigRadiusServerRootCertificates;
  /// VPN client revoked certificate of P2SVpnServerConfiguration.
  final List<P2SVpnServerConfigVpnClientRevokedCertificate>? p2SVpnServerConfigVpnClientRevokedCertificates;
  /// VPN client root certificate of P2SVpnServerConfiguration.
  final List<P2SVpnServerConfigVpnClientRootCertificate>? p2SVpnServerConfigVpnClientRootCertificates;
  /// The radius server address property of the P2SVpnServerConfiguration resource for point to site client connection.
  final String? radiusServerAddress;
  /// The radius secret property of the P2SVpnServerConfiguration resource for point to site client connection.
  final String? radiusServerSecret;
  /// VpnClientIpsecPolicies for P2SVpnServerConfiguration.
  final List<IpsecPolicy>? vpnClientIpsecPolicies;
  /// VPN protocols for the P2SVpnServerConfiguration.
  final List<String>? vpnProtocols;

  /// Creates a new [P2SVpnServerConfigurationProperties].
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [name] The name of the P2SVpnServerConfiguration that is unique within a VirtualWan in a resource group. This name can be used to access the resource along with Paren VirtualWan resource name.
  /// [p2SVpnServerConfigRadiusClientRootCertificates] Radius client root certificate of P2SVpnServerConfiguration.
  /// [p2SVpnServerConfigRadiusServerRootCertificates] Radius Server root certificate of P2SVpnServerConfiguration.
  /// [p2SVpnServerConfigVpnClientRevokedCertificates] VPN client revoked certificate of P2SVpnServerConfiguration.
  /// [p2SVpnServerConfigVpnClientRootCertificates] VPN client root certificate of P2SVpnServerConfiguration.
  /// [radiusServerAddress] The radius server address property of the P2SVpnServerConfiguration resource for point to site client connection.
  /// [radiusServerSecret] The radius secret property of the P2SVpnServerConfiguration resource for point to site client connection.
  /// [vpnClientIpsecPolicies] VpnClientIpsecPolicies for P2SVpnServerConfiguration.
  /// [vpnProtocols] VPN protocols for the P2SVpnServerConfiguration.
  P2SVpnServerConfigurationProperties({
    this.etag,
    this.name,
    this.p2SVpnServerConfigRadiusClientRootCertificates,
    this.p2SVpnServerConfigRadiusServerRootCertificates,
    this.p2SVpnServerConfigVpnClientRevokedCertificates,
    this.p2SVpnServerConfigVpnClientRootCertificates,
    this.radiusServerAddress,
    this.radiusServerSecret,
    this.vpnClientIpsecPolicies,
    this.vpnProtocols,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'etag': ?etag,
      'name': ?name,
      'p2SVpnServerConfigRadiusClientRootCertificates': ?p2SVpnServerConfigRadiusClientRootCertificates == null ? null : pulumi.Input.encodeList<P2SVpnServerConfigRadiusClientRootCertificate, Map<String, dynamic>>(p2SVpnServerConfigRadiusClientRootCertificates!, (value) => value.toMap()),
      'p2SVpnServerConfigRadiusServerRootCertificates': ?p2SVpnServerConfigRadiusServerRootCertificates == null ? null : pulumi.Input.encodeList<P2SVpnServerConfigRadiusServerRootCertificate, Map<String, dynamic>>(p2SVpnServerConfigRadiusServerRootCertificates!, (value) => value.toMap()),
      'p2SVpnServerConfigVpnClientRevokedCertificates': ?p2SVpnServerConfigVpnClientRevokedCertificates == null ? null : pulumi.Input.encodeList<P2SVpnServerConfigVpnClientRevokedCertificate, Map<String, dynamic>>(p2SVpnServerConfigVpnClientRevokedCertificates!, (value) => value.toMap()),
      'p2SVpnServerConfigVpnClientRootCertificates': ?p2SVpnServerConfigVpnClientRootCertificates == null ? null : pulumi.Input.encodeList<P2SVpnServerConfigVpnClientRootCertificate, Map<String, dynamic>>(p2SVpnServerConfigVpnClientRootCertificates!, (value) => value.toMap()),
      'radiusServerAddress': ?radiusServerAddress,
      'radiusServerSecret': ?radiusServerSecret,
      'vpnClientIpsecPolicies': ?vpnClientIpsecPolicies == null ? null : pulumi.Input.encodeList<IpsecPolicy, Map<String, dynamic>>(vpnClientIpsecPolicies!, (value) => value.toMap()),
      'vpnProtocols': ?vpnProtocols,
    };
  }

  factory P2SVpnServerConfigurationProperties.fromMap(Map<String, dynamic> map) {
    return P2SVpnServerConfigurationProperties(
      etag: map['etag'] == null ? null : map['etag'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      p2SVpnServerConfigRadiusClientRootCertificates: map['p2SVpnServerConfigRadiusClientRootCertificates'] == null ? null : pulumi.Input.decodeList<P2SVpnServerConfigRadiusClientRootCertificate>(map['p2SVpnServerConfigRadiusClientRootCertificates'], (value) => P2SVpnServerConfigRadiusClientRootCertificate.fromMap((value as Map).cast<String, dynamic>())),
      p2SVpnServerConfigRadiusServerRootCertificates: map['p2SVpnServerConfigRadiusServerRootCertificates'] == null ? null : pulumi.Input.decodeList<P2SVpnServerConfigRadiusServerRootCertificate>(map['p2SVpnServerConfigRadiusServerRootCertificates'], (value) => P2SVpnServerConfigRadiusServerRootCertificate.fromMap((value as Map).cast<String, dynamic>())),
      p2SVpnServerConfigVpnClientRevokedCertificates: map['p2SVpnServerConfigVpnClientRevokedCertificates'] == null ? null : pulumi.Input.decodeList<P2SVpnServerConfigVpnClientRevokedCertificate>(map['p2SVpnServerConfigVpnClientRevokedCertificates'], (value) => P2SVpnServerConfigVpnClientRevokedCertificate.fromMap((value as Map).cast<String, dynamic>())),
      p2SVpnServerConfigVpnClientRootCertificates: map['p2SVpnServerConfigVpnClientRootCertificates'] == null ? null : pulumi.Input.decodeList<P2SVpnServerConfigVpnClientRootCertificate>(map['p2SVpnServerConfigVpnClientRootCertificates'], (value) => P2SVpnServerConfigVpnClientRootCertificate.fromMap((value as Map).cast<String, dynamic>())),
      radiusServerAddress: map['radiusServerAddress'] == null ? null : map['radiusServerAddress'] as String,
      radiusServerSecret: map['radiusServerSecret'] == null ? null : map['radiusServerSecret'] as String,
      vpnClientIpsecPolicies: map['vpnClientIpsecPolicies'] == null ? null : pulumi.Input.decodeList<IpsecPolicy>(map['vpnClientIpsecPolicies'], (value) => IpsecPolicy.fromMap((value as Map).cast<String, dynamic>())),
      vpnProtocols: map['vpnProtocols'] == null ? null : (map['vpnProtocols'] as List).cast<String>(),
    );
  }
}

