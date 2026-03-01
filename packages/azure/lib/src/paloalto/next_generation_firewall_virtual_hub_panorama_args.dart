// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'next_generation_firewall_virtual_hub_panorama_destination_nat.dart';
import 'next_generation_firewall_virtual_hub_panorama_dns_settings.dart';
import 'next_generation_firewall_virtual_hub_panorama_network_profile.dart';

/// {@template pulumi_paloalto_next_generation_firewall_virtual_hub_panorama_next_generation_firewall_virtual_hub_panorama_args_doc}
/// The set of arguments for NextGenerationFirewallVirtualHubPanorama.
/// {@endtemplate}
/// {@macro pulumi_paloalto_next_generation_firewall_virtual_hub_panorama_next_generation_firewall_virtual_hub_panorama_args_doc}
class NextGenerationFirewallVirtualHubPanoramaArgs {
  /// One or more `destination_nat` blocks as defined below.
  final pulumi.Input<List<NextGenerationFirewallVirtualHubPanoramaDestinationNat>>? destinationNats;
  /// A `dns_settings` block as defined below.
  final pulumi.Input<NextGenerationFirewallVirtualHubPanoramaDnsSettings>? dnsSettings;
  /// The Azure Region where the Palo Alto Next Generation Firewall VHub Panorama should exist. Changing this forces a new Palo Alto Next Generation Firewall VHub Panorama to be created.
  final pulumi.Input<String>? location;
  /// The marketplace offer ID. Defaults to `pan_swfw_cloud_ngfw`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? marketplaceOfferId;
  /// The name which should be used for this Palo Alto Next Generation Firewall VHub Panorama. Changing this forces a new Palo Alto Next Generation Firewall VHub Panorama to be created.
  final pulumi.Input<String>? name;
  /// A `network_profile` block as defined below.
  final pulumi.Input<NextGenerationFirewallVirtualHubPanoramaNetworkProfile> networkProfile;
  /// The Base64 Encoded configuration value for connecting to the Panorama Configuration server.
  final pulumi.Input<String> panoramaBase64Config;
  /// The billing plan ID as published by Liftr.PAN. Defaults to `panw-cloud-ngfw-payg`.
  ///
  /// > **Note:** The former `plan_id` `panw-cloud-ngfw-payg` is defined as stop sell, but has been set as the default to not break any existing resources that were originally provisioned with it. Users need to explicitly set `plan_id` to `panw-cngfw-payg` when creating new resources.
  final pulumi.Input<String>? planId;
  /// The name of the Resource Group where the Palo Alto Next Generation Firewall VHub Panorama should exist. Changing this forces a new Palo Alto Next Generation Firewall VHub Panorama to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A mapping of tags which should be assigned to the Palo Alto Next Generation Firewall VHub Panorama.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [NextGenerationFirewallVirtualHubPanoramaArgs].
  /// [destinationNats] One or more `destination_nat` blocks as defined below.
  /// [dnsSettings] A `dns_settings` block as defined below.
  /// [location] The Azure Region where the Palo Alto Next Generation Firewall VHub Panorama should exist. Changing this forces a new Palo Alto Next Generation Firewall VHub Panorama to be created.
  /// [marketplaceOfferId] The marketplace offer ID. Defaults to `pan_swfw_cloud_ngfw`. Changing this forces a new resource to be created.
  /// [name] The name which should be used for this Palo Alto Next Generation Firewall VHub Panorama. Changing this forces a new Palo Alto Next Generation Firewall VHub Panorama to be created.
  /// [networkProfile] A `network_profile` block as defined below.
  /// [panoramaBase64Config] The Base64 Encoded configuration value for connecting to the Panorama Configuration server.
  /// [planId] The billing plan ID as published by Liftr.PAN. Defaults to `panw-cloud-ngfw-payg`.
  /// [resourceGroupName] The name of the Resource Group where the Palo Alto Next Generation Firewall VHub Panorama should exist. Changing this forces a new Palo Alto Next Generation Firewall VHub Panorama to be created.
  /// [tags] A mapping of tags which should be assigned to the Palo Alto Next Generation Firewall VHub Panorama.
  NextGenerationFirewallVirtualHubPanoramaArgs({
    List<NextGenerationFirewallVirtualHubPanoramaDestinationNat>? destinationNats,
    NextGenerationFirewallVirtualHubPanoramaDnsSettings? dnsSettings,
    String? location,
    String? marketplaceOfferId,
    String? name,
    required NextGenerationFirewallVirtualHubPanoramaNetworkProfile networkProfile,
    required String panoramaBase64Config,
    String? planId,
    required String resourceGroupName,
    Map<String, String>? tags,
  }) :
      destinationNats = pulumi.Input.asOptionalInput<List<NextGenerationFirewallVirtualHubPanoramaDestinationNat>>(destinationNats),
      dnsSettings = pulumi.Input.asOptionalInput<NextGenerationFirewallVirtualHubPanoramaDnsSettings>(dnsSettings),
      location = pulumi.Input.asOptionalInput<String>(location),
      marketplaceOfferId = pulumi.Input.asOptionalInput<String>(marketplaceOfferId),
      name = pulumi.Input.asOptionalInput<String>(name),
      networkProfile = pulumi.Input.asInput<NextGenerationFirewallVirtualHubPanoramaNetworkProfile>(networkProfile),
      panoramaBase64Config = pulumi.Input.asInput<String>(panoramaBase64Config),
      planId = pulumi.Input.asOptionalInput<String>(planId),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationNats': ?pulumi.Input.mapOptionalInputValue<List<NextGenerationFirewallVirtualHubPanoramaDestinationNat>, List<Map<String, dynamic>>>(destinationNats, (value) => pulumi.Input.encodeList<NextGenerationFirewallVirtualHubPanoramaDestinationNat, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dnsSettings': ?pulumi.Input.mapOptionalInputValue<NextGenerationFirewallVirtualHubPanoramaDnsSettings, Map<String, dynamic>>(dnsSettings, (value) => value.toMap()),
      'location': ?location,
      'marketplaceOfferId': ?marketplaceOfferId,
      'name': ?name,
      'networkProfile': pulumi.Input.mapInputValue<NextGenerationFirewallVirtualHubPanoramaNetworkProfile, Map<String, dynamic>>(networkProfile, (value) => value.toMap()),
      'panoramaBase64Config': panoramaBase64Config,
      'planId': ?planId,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory NextGenerationFirewallVirtualHubPanoramaArgs.fromMap(Map<String, dynamic> map) {
    return NextGenerationFirewallVirtualHubPanoramaArgs(
      destinationNats: map['destinationNats'] == null ? null : pulumi.Input.decodeList<NextGenerationFirewallVirtualHubPanoramaDestinationNat>(map['destinationNats'], (value) => NextGenerationFirewallVirtualHubPanoramaDestinationNat.fromMap((value as Map).cast<String, dynamic>())),
      dnsSettings: map['dnsSettings'] == null ? null : NextGenerationFirewallVirtualHubPanoramaDnsSettings.fromMap((map['dnsSettings'] as Map).cast<String, dynamic>()),
      location: map['location'] == null ? null : map['location'] as String,
      marketplaceOfferId: map['marketplaceOfferId'] == null ? null : map['marketplaceOfferId'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      networkProfile: NextGenerationFirewallVirtualHubPanoramaNetworkProfile.fromMap((map['networkProfile'] as Map).cast<String, dynamic>()),
      panoramaBase64Config: map['panoramaBase64Config'] as String,
      planId: map['planId'] == null ? null : map['planId'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

