// ignore_for_file: unused_element, unnecessary_cast

import 'address_space.dart';
import 'bgp_settings.dart';

/// A common class for general resource information.
class LocalNetworkGateway {
  /// Local network gateway's BGP speaker settings.
  final BgpSettings? bgpSettings;
  /// FQDN of local network gateway.
  final String? fqdn;
  /// IP address of local network gateway.
  final String? gatewayIpAddress;
  /// Resource ID.
  final String? id;
  /// Local network site address space.
  final AddressSpace? localNetworkAddressSpace;
  /// Resource location.
  final String? location;
  /// Resource tags.
  final Map<String, String>? tags;

  /// Creates a new [LocalNetworkGateway].
  /// [bgpSettings] Local network gateway's BGP speaker settings.
  /// [fqdn] FQDN of local network gateway.
  /// [gatewayIpAddress] IP address of local network gateway.
  /// [id] Resource ID.
  /// [localNetworkAddressSpace] Local network site address space.
  /// [location] Resource location.
  /// [tags] Resource tags.
  LocalNetworkGateway({
    this.bgpSettings,
    this.fqdn,
    this.gatewayIpAddress,
    this.id,
    this.localNetworkAddressSpace,
    this.location,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bgpSettings': ?bgpSettings == null ? null : bgpSettings!.toMap(),
      'fqdn': ?fqdn,
      'gatewayIpAddress': ?gatewayIpAddress,
      'id': ?id,
      'localNetworkAddressSpace': ?localNetworkAddressSpace == null ? null : localNetworkAddressSpace!.toMap(),
      'location': ?location,
      'tags': ?tags,
    };
  }

  factory LocalNetworkGateway.fromMap(Map<String, dynamic> map) {
    return LocalNetworkGateway(
      bgpSettings: map['bgpSettings'] == null ? null : BgpSettings.fromMap((map['bgpSettings'] as Map).cast<String, dynamic>()),
      fqdn: map['fqdn'] == null ? null : map['fqdn'] as String,
      gatewayIpAddress: map['gatewayIpAddress'] == null ? null : map['gatewayIpAddress'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      localNetworkAddressSpace: map['localNetworkAddressSpace'] == null ? null : AddressSpace.fromMap((map['localNetworkAddressSpace'] as Map).cast<String, dynamic>()),
      location: map['location'] == null ? null : map['location'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

