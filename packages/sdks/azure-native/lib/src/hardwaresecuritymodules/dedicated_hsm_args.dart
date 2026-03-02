// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_profile.dart';
import 'sku.dart';

/// {@template pulumi_hardwaresecuritymodules_dedicated_hsm_args_doc}
/// The set of arguments for DedicatedHsm.
/// {@endtemplate}
/// {@macro pulumi_hardwaresecuritymodules_dedicated_hsm_args_doc}
class DedicatedHsmArgs {
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Specifies the management network interfaces of the dedicated hsm.
  final pulumi.Input<NetworkProfile>? managementNetworkProfile;
  /// Name of the dedicated Hsm
  final pulumi.Input<String>? name;
  /// Specifies the network interfaces of the dedicated hsm.
  final pulumi.Input<NetworkProfile>? networkProfile;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// SKU details
  final pulumi.Input<Sku> sku;
  /// This field will be used when RP does not support Availability zones.
  final pulumi.Input<String>? stampId;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// The Dedicated Hsm zones.
  final pulumi.Input<List<String>>? zones;

  /// Creates a new [DedicatedHsmArgs].
  /// [location] The geo-location where the resource lives
  /// [managementNetworkProfile] Specifies the management network interfaces of the dedicated hsm.
  /// [name] Name of the dedicated Hsm
  /// [networkProfile] Specifies the network interfaces of the dedicated hsm.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sku] SKU details
  /// [stampId] This field will be used when RP does not support Availability zones.
  /// [tags] Resource tags.
  /// [zones] The Dedicated Hsm zones.
  DedicatedHsmArgs({
    this.location,
    this.managementNetworkProfile,
    this.name,
    this.networkProfile,
    required this.resourceGroupName,
    required this.sku,
    this.stampId,
    this.tags,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'managementNetworkProfile': ?pulumi.Input.mapOptionalInputValue<NetworkProfile, Map<String, dynamic>>(managementNetworkProfile, (value) => value.toMap()),
      'name': ?name,
      'networkProfile': ?pulumi.Input.mapOptionalInputValue<NetworkProfile, Map<String, dynamic>>(networkProfile, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'sku': pulumi.Input.mapInputValue<Sku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'stampId': ?stampId,
      'tags': ?tags,
      'zones': ?zones,
    };
  }

  factory DedicatedHsmArgs.fromMap(Map<String, dynamic> map) {
    return DedicatedHsmArgs(
      location: map['location'] == null ? null : (map['location'] as String).input(),
      managementNetworkProfile: map['managementNetworkProfile'] == null ? null : (NetworkProfile.fromMap((map['managementNetworkProfile'] as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      networkProfile: map['networkProfile'] == null ? null : (NetworkProfile.fromMap((map['networkProfile'] as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      sku: (Sku.fromMap((map['sku'] as Map).cast<String, dynamic>())).input(),
      stampId: map['stampId'] == null ? null : (map['stampId'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      zones: map['zones'] == null ? null : ((map['zones'] as List).cast<String>()).input(),
    );
  }
}

