// ignore_for_file: unused_element, unnecessary_cast

import 'vpn_link_bgp_settings_response.dart';
import 'vpn_link_provider_properties_response.dart';

/// VpnSiteLink Resource.
class VpnSiteLinkResponse {
  /// The set of bgp properties.
  final VpnLinkBgpSettingsResponse? bgpProperties;
  /// A unique read-only string that changes whenever the resource is updated.
  final String etag;
  /// FQDN of vpn-site-link.
  final String? fqdn;
  /// Resource ID.
  final String? id;
  /// The ip-address for the vpn-site-link.
  final String? ipAddress;
  /// The link provider properties.
  final VpnLinkProviderPropertiesResponse? linkProperties;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final String? name;
  /// The provisioning state of the VPN site link resource.
  final String provisioningState;
  /// Resource type.
  final String type;

  /// Creates a new [VpnSiteLinkResponse].
  /// [bgpProperties] The set of bgp properties.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [fqdn] FQDN of vpn-site-link.
  /// [id] Resource ID.
  /// [ipAddress] The ip-address for the vpn-site-link.
  /// [linkProperties] The link provider properties.
  /// [name] The name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [provisioningState] The provisioning state of the VPN site link resource.
  /// [type] Resource type.
  VpnSiteLinkResponse({
    this.bgpProperties,
    required this.etag,
    this.fqdn,
    this.id,
    this.ipAddress,
    this.linkProperties,
    this.name,
    required this.provisioningState,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bgpProperties': ?bgpProperties == null ? null : bgpProperties!.toMap(),
      'etag': etag,
      'fqdn': ?fqdn,
      'id': ?id,
      'ipAddress': ?ipAddress,
      'linkProperties': ?linkProperties == null ? null : linkProperties!.toMap(),
      'name': ?name,
      'provisioningState': provisioningState,
      'type': type,
    };
  }

  factory VpnSiteLinkResponse.fromMap(Map<String, dynamic> map) {
    return VpnSiteLinkResponse(
      bgpProperties: map['bgpProperties'] == null ? null : VpnLinkBgpSettingsResponse.fromMap((map['bgpProperties'] as Map).cast<String, dynamic>()),
      etag: map['etag'] as String,
      fqdn: map['fqdn'] == null ? null : map['fqdn'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      ipAddress: map['ipAddress'] == null ? null : map['ipAddress'] as String,
      linkProperties: map['linkProperties'] == null ? null : VpnLinkProviderPropertiesResponse.fromMap((map['linkProperties'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      type: map['type'] as String,
    );
  }
}

