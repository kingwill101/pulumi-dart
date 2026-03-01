// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'address_space.dart';
import 'bgp_settings.dart';
import 'extended_location.dart';
import 'managed_service_identity.dart';
import 'sub_resource.dart';
import 'virtual_network_gateway_auto_scale_configuration.dart';
import 'virtual_network_gateway_ipconfiguration.dart';
import 'virtual_network_gateway_nat_rule.dart';
import 'virtual_network_gateway_policy_group.dart';
import 'virtual_network_gateway_sku.dart';
import 'vpn_client_configuration.dart';

/// A common class for general resource information.
class VirtualNetworkGateway {
  /// ActiveActive flag.
  final bool? activeActive;
  /// Property to indicate if the Express Route Gateway serves traffic when there are multiple Express Route Gateways in the vnet
  final String? adminState;
  /// Configure this gateway to accept traffic from other Azure Virtual Networks. This configuration does not support connectivity to Azure Virtual WAN.
  final bool? allowRemoteVnetTraffic;
  /// Configures this gateway to accept traffic from remote Virtual WAN networks.
  final bool? allowVirtualWanTraffic;
  /// Autoscale configuration for virutal network gateway
  final VirtualNetworkGatewayAutoScaleConfiguration? autoScaleConfiguration;
  /// Virtual network gateway's BGP speaker settings.
  final BgpSettings? bgpSettings;
  /// The reference to the address space resource which represents the custom routes address space specified by the customer for virtual network gateway and VpnClient.
  final AddressSpace? customRoutes;
  /// disableIPSecReplayProtection flag.
  final bool? disableIPSecReplayProtection;
  /// Whether BGP is enabled for this virtual network gateway or not.
  final bool? enableBgp;
  /// EnableBgpRouteTranslationForNat flag.
  final bool? enableBgpRouteTranslationForNat;
  /// Whether dns forwarding is enabled or not.
  final bool? enableDnsForwarding;
  /// Whether private IP needs to be enabled on this gateway for connections or not.
  final bool? enablePrivateIpAddress;
  /// The extended location of type local virtual network gateway.
  final ExtendedLocation? extendedLocation;
  /// The reference to the LocalNetworkGateway resource which represents local network site having default routes. Assign Null value in case of removing existing default site setting.
  final SubResource? gatewayDefaultSite;
  /// The type of this virtual network gateway.
  final String? gatewayType;
  /// Resource ID.
  final String? id;
  /// The identity of the virtual network gateway, if configured.
  final ManagedServiceIdentity? identity;
  /// IP configurations for virtual network gateway.
  final List<VirtualNetworkGatewayIPConfiguration>? ipConfigurations;
  /// Resource location.
  final String? location;
  /// NatRules for virtual network gateway.
  final List<VirtualNetworkGatewayNatRule>? natRules;
  /// Property to indicate if the Express Route Gateway has resiliency model of MultiHomed or SingleHomed
  final String? resiliencyModel;
  /// The reference to the VirtualNetworkGatewaySku resource which represents the SKU selected for Virtual network gateway.
  final VirtualNetworkGatewaySku? sku;
  /// Resource tags.
  final Map<String, String>? tags;
  /// Customer vnet resource id. VirtualNetworkGateway of type local gateway is associated with the customer vnet.
  final String? vNetExtendedLocationResourceId;
  /// The reference to the VirtualNetworkGatewayPolicyGroup resource which represents the available VirtualNetworkGatewayPolicyGroup for the gateway.
  final List<VirtualNetworkGatewayPolicyGroup>? virtualNetworkGatewayPolicyGroups;
  /// The reference to the VpnClientConfiguration resource which represents the P2S VpnClient configurations.
  final VpnClientConfiguration? vpnClientConfiguration;
  /// The generation for this VirtualNetworkGateway. Must be None if gatewayType is not VPN.
  final String? vpnGatewayGeneration;
  /// The type of this virtual network gateway.
  final String? vpnType;

  /// Creates a new [VirtualNetworkGateway].
  /// [activeActive] ActiveActive flag.
  /// [adminState] Property to indicate if the Express Route Gateway serves traffic when there are multiple Express Route Gateways in the vnet
  /// [allowRemoteVnetTraffic] Configure this gateway to accept traffic from other Azure Virtual Networks. This configuration does not support connectivity to Azure Virtual WAN.
  /// [allowVirtualWanTraffic] Configures this gateway to accept traffic from remote Virtual WAN networks.
  /// [autoScaleConfiguration] Autoscale configuration for virutal network gateway
  /// [bgpSettings] Virtual network gateway's BGP speaker settings.
  /// [customRoutes] The reference to the address space resource which represents the custom routes address space specified by the customer for virtual network gateway and VpnClient.
  /// [disableIPSecReplayProtection] disableIPSecReplayProtection flag.
  /// [enableBgp] Whether BGP is enabled for this virtual network gateway or not.
  /// [enableBgpRouteTranslationForNat] EnableBgpRouteTranslationForNat flag.
  /// [enableDnsForwarding] Whether dns forwarding is enabled or not.
  /// [enablePrivateIpAddress] Whether private IP needs to be enabled on this gateway for connections or not.
  /// [extendedLocation] The extended location of type local virtual network gateway.
  /// [gatewayDefaultSite] The reference to the LocalNetworkGateway resource which represents local network site having default routes. Assign Null value in case of removing existing default site setting.
  /// [gatewayType] The type of this virtual network gateway.
  /// [id] Resource ID.
  /// [identity] The identity of the virtual network gateway, if configured.
  /// [ipConfigurations] IP configurations for virtual network gateway.
  /// [location] Resource location.
  /// [natRules] NatRules for virtual network gateway.
  /// [resiliencyModel] Property to indicate if the Express Route Gateway has resiliency model of MultiHomed or SingleHomed
  /// [sku] The reference to the VirtualNetworkGatewaySku resource which represents the SKU selected for Virtual network gateway.
  /// [tags] Resource tags.
  /// [vNetExtendedLocationResourceId] Customer vnet resource id. VirtualNetworkGateway of type local gateway is associated with the customer vnet.
  /// [virtualNetworkGatewayPolicyGroups] The reference to the VirtualNetworkGatewayPolicyGroup resource which represents the available VirtualNetworkGatewayPolicyGroup for the gateway.
  /// [vpnClientConfiguration] The reference to the VpnClientConfiguration resource which represents the P2S VpnClient configurations.
  /// [vpnGatewayGeneration] The generation for this VirtualNetworkGateway. Must be None if gatewayType is not VPN.
  /// [vpnType] The type of this virtual network gateway.
  VirtualNetworkGateway({
    this.activeActive,
    this.adminState,
    this.allowRemoteVnetTraffic,
    this.allowVirtualWanTraffic,
    this.autoScaleConfiguration,
    this.bgpSettings,
    this.customRoutes,
    this.disableIPSecReplayProtection,
    this.enableBgp,
    this.enableBgpRouteTranslationForNat,
    this.enableDnsForwarding,
    this.enablePrivateIpAddress,
    this.extendedLocation,
    this.gatewayDefaultSite,
    this.gatewayType,
    this.id,
    this.identity,
    this.ipConfigurations,
    this.location,
    this.natRules,
    this.resiliencyModel,
    this.sku,
    this.tags,
    this.vNetExtendedLocationResourceId,
    this.virtualNetworkGatewayPolicyGroups,
    this.vpnClientConfiguration,
    this.vpnGatewayGeneration,
    this.vpnType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeActive': ?activeActive,
      'adminState': ?adminState,
      'allowRemoteVnetTraffic': ?allowRemoteVnetTraffic,
      'allowVirtualWanTraffic': ?allowVirtualWanTraffic,
      'autoScaleConfiguration': ?autoScaleConfiguration == null ? null : autoScaleConfiguration!.toMap(),
      'bgpSettings': ?bgpSettings == null ? null : bgpSettings!.toMap(),
      'customRoutes': ?customRoutes == null ? null : customRoutes!.toMap(),
      'disableIPSecReplayProtection': ?disableIPSecReplayProtection,
      'enableBgp': ?enableBgp,
      'enableBgpRouteTranslationForNat': ?enableBgpRouteTranslationForNat,
      'enableDnsForwarding': ?enableDnsForwarding,
      'enablePrivateIpAddress': ?enablePrivateIpAddress,
      'extendedLocation': ?extendedLocation == null ? null : extendedLocation!.toMap(),
      'gatewayDefaultSite': ?gatewayDefaultSite == null ? null : gatewayDefaultSite!.toMap(),
      'gatewayType': ?gatewayType,
      'id': ?id,
      'identity': ?identity == null ? null : identity!.toMap(),
      'ipConfigurations': ?ipConfigurations == null ? null : pulumi.Input.encodeList<VirtualNetworkGatewayIPConfiguration, Map<String, dynamic>>(ipConfigurations!, (value) => value.toMap()),
      'location': ?location,
      'natRules': ?natRules == null ? null : pulumi.Input.encodeList<VirtualNetworkGatewayNatRule, Map<String, dynamic>>(natRules!, (value) => value.toMap()),
      'resiliencyModel': ?resiliencyModel,
      'sku': ?sku == null ? null : sku!.toMap(),
      'tags': ?tags,
      'vNetExtendedLocationResourceId': ?vNetExtendedLocationResourceId,
      'virtualNetworkGatewayPolicyGroups': ?virtualNetworkGatewayPolicyGroups == null ? null : pulumi.Input.encodeList<VirtualNetworkGatewayPolicyGroup, Map<String, dynamic>>(virtualNetworkGatewayPolicyGroups!, (value) => value.toMap()),
      'vpnClientConfiguration': ?vpnClientConfiguration == null ? null : vpnClientConfiguration!.toMap(),
      'vpnGatewayGeneration': ?vpnGatewayGeneration,
      'vpnType': ?vpnType,
    };
  }

  factory VirtualNetworkGateway.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkGateway(
      activeActive: map['activeActive'] == null ? null : map['activeActive'] as bool,
      adminState: map['adminState'] == null ? null : map['adminState'] as String,
      allowRemoteVnetTraffic: map['allowRemoteVnetTraffic'] == null ? null : map['allowRemoteVnetTraffic'] as bool,
      allowVirtualWanTraffic: map['allowVirtualWanTraffic'] == null ? null : map['allowVirtualWanTraffic'] as bool,
      autoScaleConfiguration: map['autoScaleConfiguration'] == null ? null : VirtualNetworkGatewayAutoScaleConfiguration.fromMap((map['autoScaleConfiguration'] as Map).cast<String, dynamic>()),
      bgpSettings: map['bgpSettings'] == null ? null : BgpSettings.fromMap((map['bgpSettings'] as Map).cast<String, dynamic>()),
      customRoutes: map['customRoutes'] == null ? null : AddressSpace.fromMap((map['customRoutes'] as Map).cast<String, dynamic>()),
      disableIPSecReplayProtection: map['disableIPSecReplayProtection'] == null ? null : map['disableIPSecReplayProtection'] as bool,
      enableBgp: map['enableBgp'] == null ? null : map['enableBgp'] as bool,
      enableBgpRouteTranslationForNat: map['enableBgpRouteTranslationForNat'] == null ? null : map['enableBgpRouteTranslationForNat'] as bool,
      enableDnsForwarding: map['enableDnsForwarding'] == null ? null : map['enableDnsForwarding'] as bool,
      enablePrivateIpAddress: map['enablePrivateIpAddress'] == null ? null : map['enablePrivateIpAddress'] as bool,
      extendedLocation: map['extendedLocation'] == null ? null : ExtendedLocation.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>()),
      gatewayDefaultSite: map['gatewayDefaultSite'] == null ? null : SubResource.fromMap((map['gatewayDefaultSite'] as Map).cast<String, dynamic>()),
      gatewayType: map['gatewayType'] == null ? null : map['gatewayType'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      identity: map['identity'] == null ? null : ManagedServiceIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>()),
      ipConfigurations: map['ipConfigurations'] == null ? null : pulumi.Input.decodeList<VirtualNetworkGatewayIPConfiguration>(map['ipConfigurations'], (value) => VirtualNetworkGatewayIPConfiguration.fromMap((value as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : map['location'] as String,
      natRules: map['natRules'] == null ? null : pulumi.Input.decodeList<VirtualNetworkGatewayNatRule>(map['natRules'], (value) => VirtualNetworkGatewayNatRule.fromMap((value as Map).cast<String, dynamic>())),
      resiliencyModel: map['resiliencyModel'] == null ? null : map['resiliencyModel'] as String,
      sku: map['sku'] == null ? null : VirtualNetworkGatewaySku.fromMap((map['sku'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      vNetExtendedLocationResourceId: map['vNetExtendedLocationResourceId'] == null ? null : map['vNetExtendedLocationResourceId'] as String,
      virtualNetworkGatewayPolicyGroups: map['virtualNetworkGatewayPolicyGroups'] == null ? null : pulumi.Input.decodeList<VirtualNetworkGatewayPolicyGroup>(map['virtualNetworkGatewayPolicyGroups'], (value) => VirtualNetworkGatewayPolicyGroup.fromMap((value as Map).cast<String, dynamic>())),
      vpnClientConfiguration: map['vpnClientConfiguration'] == null ? null : VpnClientConfiguration.fromMap((map['vpnClientConfiguration'] as Map).cast<String, dynamic>()),
      vpnGatewayGeneration: map['vpnGatewayGeneration'] == null ? null : map['vpnGatewayGeneration'] as String,
      vpnType: map['vpnType'] == null ? null : map['vpnType'] as String,
    );
  }
}

