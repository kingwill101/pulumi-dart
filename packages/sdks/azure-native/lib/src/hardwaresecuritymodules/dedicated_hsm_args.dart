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
    pulumi.Output<String>? location,
    pulumi.Output<NetworkProfile>? managementNetworkProfile,
    pulumi.Output<String>? name,
    pulumi.Output<NetworkProfile>? networkProfile,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<Sku> sku,
    pulumi.Output<String>? stampId,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<List<String>>? zones,
  }) :
      location = pulumi.Input.asOptionalInput<String>(location),
      managementNetworkProfile = pulumi.Input.asOptionalInput<NetworkProfile>(managementNetworkProfile),
      name = pulumi.Input.asOptionalInput<String>(name),
      networkProfile = pulumi.Input.asOptionalInput<NetworkProfile>(networkProfile),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sku = pulumi.Input.asInput<Sku>(sku),
      stampId = pulumi.Input.asOptionalInput<String>(stampId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      zones = pulumi.Input.asOptionalInput<List<String>>(zones);

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
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      managementNetworkProfile: map['managementNetworkProfile'] == null ? null : pulumi.Output.create<NetworkProfile>(NetworkProfile.fromMap((map['managementNetworkProfile'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      networkProfile: map['networkProfile'] == null ? null : pulumi.Output.create<NetworkProfile>(NetworkProfile.fromMap((map['networkProfile'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      sku: pulumi.Output.create<Sku>(Sku.fromMap((map['sku'] as Map).cast<String, dynamic>())),
      stampId: map['stampId'] == null ? null : pulumi.Output.create<String>(map['stampId'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      zones: map['zones'] == null ? null : pulumi.Output.create<List<String>>((map['zones'] as List).cast<String>()),
    );
  }
}

