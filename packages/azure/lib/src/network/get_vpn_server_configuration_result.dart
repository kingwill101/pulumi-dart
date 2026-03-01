// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_vpn_server_configuration_azure_active_directory_authentication.dart';
import 'get_vpn_server_configuration_client_revoked_certificate.dart';
import 'get_vpn_server_configuration_client_root_certificate.dart';
import 'get_vpn_server_configuration_ipsec_policy.dart';
import 'get_vpn_server_configuration_radius.dart';

/// Result data returned by getVpnServerConfiguration.
class GetVpnServerConfigurationResult {
  /// A `azure_active_directory_authentication` block as defined below.
  final List<GetVpnServerConfigurationAzureActiveDirectoryAuthentication> azureActiveDirectoryAuthentications;
  /// One or more `client_revoked_certificate` blocks as defined below.
  final List<GetVpnServerConfigurationClientRevokedCertificate> clientRevokedCertificates;
  /// One or more `client_root_certificate` blocks as defined below.
  final List<GetVpnServerConfigurationClientRootCertificate> clientRootCertificates;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The `bgp_settings` block as defined below.
  final List<GetVpnServerConfigurationIpsecPolicy> ipsecPolicies;
  /// The Azure Region where the VPN Server Configuration exists.
  final String location;
  /// The name used to uniquely identify this certificate.
  final String name;
  /// A `radius` block as defined below.
  final List<GetVpnServerConfigurationRadius> radii;
  final String resourceGroupName;
  /// A mapping of tags to assign to the VPN Server Configuration.
  final Map<String, String> tags;
  /// The list of Authentication Types applicable for the VPN Server Configuration.
  final List<String> vpnAuthenticationTypes;
  /// The list of VPN Protocols to use for the VPN Server Configuration.
  final List<String> vpnProtocols;

  /// Creates a new [GetVpnServerConfigurationResult].
  /// [azureActiveDirectoryAuthentications] A `azure_active_directory_authentication` block as defined below.
  /// [clientRevokedCertificates] One or more `client_revoked_certificate` blocks as defined below.
  /// [clientRootCertificates] One or more `client_root_certificate` blocks as defined below.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ipsecPolicies] The `bgp_settings` block as defined below.
  /// [location] The Azure Region where the VPN Server Configuration exists.
  /// [name] The name used to uniquely identify this certificate.
  /// [radii] A `radius` block as defined below.
  /// [resourceGroupName] Required.
  /// [tags] A mapping of tags to assign to the VPN Server Configuration.
  /// [vpnAuthenticationTypes] The list of Authentication Types applicable for the VPN Server Configuration.
  /// [vpnProtocols] The list of VPN Protocols to use for the VPN Server Configuration.
  GetVpnServerConfigurationResult({
    required this.azureActiveDirectoryAuthentications,
    required this.clientRevokedCertificates,
    required this.clientRootCertificates,
    required this.id,
    required this.ipsecPolicies,
    required this.location,
    required this.name,
    required this.radii,
    required this.resourceGroupName,
    required this.tags,
    required this.vpnAuthenticationTypes,
    required this.vpnProtocols,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureActiveDirectoryAuthentications': pulumi.Input.encodeList<GetVpnServerConfigurationAzureActiveDirectoryAuthentication, Map<String, dynamic>>(azureActiveDirectoryAuthentications, (value) => value.toMap()),
      'clientRevokedCertificates': pulumi.Input.encodeList<GetVpnServerConfigurationClientRevokedCertificate, Map<String, dynamic>>(clientRevokedCertificates, (value) => value.toMap()),
      'clientRootCertificates': pulumi.Input.encodeList<GetVpnServerConfigurationClientRootCertificate, Map<String, dynamic>>(clientRootCertificates, (value) => value.toMap()),
      'id': id,
      'ipsecPolicies': pulumi.Input.encodeList<GetVpnServerConfigurationIpsecPolicy, Map<String, dynamic>>(ipsecPolicies, (value) => value.toMap()),
      'location': location,
      'name': name,
      'radii': pulumi.Input.encodeList<GetVpnServerConfigurationRadius, Map<String, dynamic>>(radii, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': tags,
      'vpnAuthenticationTypes': vpnAuthenticationTypes,
      'vpnProtocols': vpnProtocols,
    };
  }

  factory GetVpnServerConfigurationResult.fromMap(Map<String, dynamic> map) {
    return GetVpnServerConfigurationResult(
      azureActiveDirectoryAuthentications: pulumi.Input.decodeList<GetVpnServerConfigurationAzureActiveDirectoryAuthentication>(map['azureActiveDirectoryAuthentications'], (value) => GetVpnServerConfigurationAzureActiveDirectoryAuthentication.fromMap((value as Map).cast<String, dynamic>())),
      clientRevokedCertificates: pulumi.Input.decodeList<GetVpnServerConfigurationClientRevokedCertificate>(map['clientRevokedCertificates'], (value) => GetVpnServerConfigurationClientRevokedCertificate.fromMap((value as Map).cast<String, dynamic>())),
      clientRootCertificates: pulumi.Input.decodeList<GetVpnServerConfigurationClientRootCertificate>(map['clientRootCertificates'], (value) => GetVpnServerConfigurationClientRootCertificate.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ipsecPolicies: pulumi.Input.decodeList<GetVpnServerConfigurationIpsecPolicy>(map['ipsecPolicies'], (value) => GetVpnServerConfigurationIpsecPolicy.fromMap((value as Map).cast<String, dynamic>())),
      location: map['location'] as String,
      name: map['name'] as String,
      radii: pulumi.Input.decodeList<GetVpnServerConfigurationRadius>(map['radii'], (value) => GetVpnServerConfigurationRadius.fromMap((value as Map).cast<String, dynamic>())),
      resourceGroupName: map['resourceGroupName'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      vpnAuthenticationTypes: (map['vpnAuthenticationTypes'] as List).cast<String>(),
      vpnProtocols: (map['vpnProtocols'] as List).cast<String>(),
    );
  }
}

