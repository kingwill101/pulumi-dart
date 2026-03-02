// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hardware_profile.dart';
import 'network_profile.dart';
import 'osprofile.dart';
import 'storage_profile.dart';

/// {@template pulumi_baremetalinfrastructure_azure_bare_metal_instance_args_doc}
/// The set of arguments for AzureBareMetalInstance.
/// {@endtemplate}
/// {@macro pulumi_baremetalinfrastructure_azure_bare_metal_instance_args_doc}
class AzureBareMetalInstanceArgs {
  /// Specifies the Azure Bare Metal Instance unique ID.
  final pulumi.Input<String>? azureBareMetalInstanceId;
  /// Name of the Azure Bare Metal Instance, also known as the ResourceName.
  final pulumi.Input<String>? azureBareMetalInstanceName;
  /// Specifies the hardware settings for the Azure Bare Metal Instance.
  final pulumi.Input<HardwareProfile>? hardwareProfile;
  /// Hardware revision of an Azure Bare Metal Instance
  final pulumi.Input<String>? hwRevision;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Specifies the network settings for the Azure Bare Metal Instance.
  final pulumi.Input<NetworkProfile>? networkProfile;
  /// Specifies the operating system settings for the Azure Bare Metal Instance.
  final pulumi.Input<OSProfile>? osProfile;
  /// ARM ID of another AzureBareMetalInstance that will share a network with this AzureBareMetalInstance
  final pulumi.Input<String>? partnerNodeId;
  /// Resource power state
  final pulumi.Input<String>? powerState;
  /// Resource proximity placement group
  final pulumi.Input<String>? proximityPlacementGroup;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Specifies the storage settings for the Azure Bare Metal Instance disks.
  final pulumi.Input<StorageProfile>? storageProfile;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [AzureBareMetalInstanceArgs].
  /// [azureBareMetalInstanceId] Specifies the Azure Bare Metal Instance unique ID.
  /// [azureBareMetalInstanceName] Name of the Azure Bare Metal Instance, also known as the ResourceName.
  /// [hardwareProfile] Specifies the hardware settings for the Azure Bare Metal Instance.
  /// [hwRevision] Hardware revision of an Azure Bare Metal Instance
  /// [location] The geo-location where the resource lives
  /// [networkProfile] Specifies the network settings for the Azure Bare Metal Instance.
  /// [osProfile] Specifies the operating system settings for the Azure Bare Metal Instance.
  /// [partnerNodeId] ARM ID of another AzureBareMetalInstance that will share a network with this AzureBareMetalInstance
  /// [powerState] Resource power state
  /// [proximityPlacementGroup] Resource proximity placement group
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [storageProfile] Specifies the storage settings for the Azure Bare Metal Instance disks.
  /// [tags] Resource tags.
  AzureBareMetalInstanceArgs({
    this.azureBareMetalInstanceId,
    this.azureBareMetalInstanceName,
    this.hardwareProfile,
    this.hwRevision,
    this.location,
    this.networkProfile,
    this.osProfile,
    this.partnerNodeId,
    this.powerState,
    this.proximityPlacementGroup,
    required this.resourceGroupName,
    this.storageProfile,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureBareMetalInstanceId': ?azureBareMetalInstanceId,
      'azureBareMetalInstanceName': ?azureBareMetalInstanceName,
      'hardwareProfile': ?pulumi.Input.mapOptionalInputValue<HardwareProfile, Map<String, dynamic>>(hardwareProfile, (value) => value.toMap()),
      'hwRevision': ?hwRevision,
      'location': ?location,
      'networkProfile': ?pulumi.Input.mapOptionalInputValue<NetworkProfile, Map<String, dynamic>>(networkProfile, (value) => value.toMap()),
      'osProfile': ?pulumi.Input.mapOptionalInputValue<OSProfile, Map<String, dynamic>>(osProfile, (value) => value.toMap()),
      'partnerNodeId': ?partnerNodeId,
      'powerState': ?powerState,
      'proximityPlacementGroup': ?proximityPlacementGroup,
      'resourceGroupName': resourceGroupName,
      'storageProfile': ?pulumi.Input.mapOptionalInputValue<StorageProfile, Map<String, dynamic>>(storageProfile, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory AzureBareMetalInstanceArgs.fromMap(Map<String, dynamic> map) {
    return AzureBareMetalInstanceArgs(
      azureBareMetalInstanceId: map['azureBareMetalInstanceId'] == null ? null : (map['azureBareMetalInstanceId'] as String).input(),
      azureBareMetalInstanceName: map['azureBareMetalInstanceName'] == null ? null : (map['azureBareMetalInstanceName'] as String).input(),
      hardwareProfile: map['hardwareProfile'] == null ? null : (HardwareProfile.fromMap((map['hardwareProfile'] as Map).cast<String, dynamic>())).input(),
      hwRevision: map['hwRevision'] == null ? null : (map['hwRevision'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      networkProfile: map['networkProfile'] == null ? null : (NetworkProfile.fromMap((map['networkProfile'] as Map).cast<String, dynamic>())).input(),
      osProfile: map['osProfile'] == null ? null : (OSProfile.fromMap((map['osProfile'] as Map).cast<String, dynamic>())).input(),
      partnerNodeId: map['partnerNodeId'] == null ? null : (map['partnerNodeId'] as String).input(),
      powerState: map['powerState'] == null ? null : (map['powerState'] as String).input(),
      proximityPlacementGroup: map['proximityPlacementGroup'] == null ? null : (map['proximityPlacementGroup'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      storageProfile: map['storageProfile'] == null ? null : (StorageProfile.fromMap((map['storageProfile'] as Map).cast<String, dynamic>())).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

