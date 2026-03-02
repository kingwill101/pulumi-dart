// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hardware_profile.dart';
import 'network_profile.dart';
import 'os_profile.dart';
import 'storage_profile.dart';

/// {@template pulumi_azurelargeinstance_azure_large_instance_args_doc}
/// The set of arguments for AzureLargeInstance.
/// {@endtemplate}
/// {@macro pulumi_azurelargeinstance_azure_large_instance_args_doc}
class AzureLargeInstanceArgs {
  /// Specifies the Azure Large Instance unique ID.
  final pulumi.Input<String>? azureLargeInstanceId;
  /// Name of the AzureLargeInstance.
  final pulumi.Input<String>? azureLargeInstanceName;
  /// Specifies the hardware settings for the Azure Large Instance.
  final pulumi.Input<HardwareProfile>? hardwareProfile;
  /// Hardware revision of an Azure Large Instance
  final pulumi.Input<String>? hwRevision;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Specifies the network settings for the Azure Large Instance.
  final pulumi.Input<NetworkProfile>? networkProfile;
  /// Specifies the operating system settings for the Azure Large Instance.
  final pulumi.Input<OsProfile>? osProfile;
  /// Resource power state
  final pulumi.Input<String>? powerState;
  /// Resource proximity placement group
  final pulumi.Input<String>? proximityPlacementGroup;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Specifies the storage settings for the Azure Large Instance disks.
  final pulumi.Input<StorageProfile>? storageProfile;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [AzureLargeInstanceArgs].
  /// [azureLargeInstanceId] Specifies the Azure Large Instance unique ID.
  /// [azureLargeInstanceName] Name of the AzureLargeInstance.
  /// [hardwareProfile] Specifies the hardware settings for the Azure Large Instance.
  /// [hwRevision] Hardware revision of an Azure Large Instance
  /// [location] The geo-location where the resource lives
  /// [networkProfile] Specifies the network settings for the Azure Large Instance.
  /// [osProfile] Specifies the operating system settings for the Azure Large Instance.
  /// [powerState] Resource power state
  /// [proximityPlacementGroup] Resource proximity placement group
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [storageProfile] Specifies the storage settings for the Azure Large Instance disks.
  /// [tags] Resource tags.
  AzureLargeInstanceArgs({
    this.azureLargeInstanceId,
    this.azureLargeInstanceName,
    this.hardwareProfile,
    this.hwRevision,
    this.location,
    this.networkProfile,
    this.osProfile,
    this.powerState,
    this.proximityPlacementGroup,
    required this.resourceGroupName,
    this.storageProfile,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureLargeInstanceId': ?azureLargeInstanceId,
      'azureLargeInstanceName': ?azureLargeInstanceName,
      'hardwareProfile': ?pulumi.Input.mapOptionalInputValue<HardwareProfile, Map<String, dynamic>>(hardwareProfile, (value) => value.toMap()),
      'hwRevision': ?hwRevision,
      'location': ?location,
      'networkProfile': ?pulumi.Input.mapOptionalInputValue<NetworkProfile, Map<String, dynamic>>(networkProfile, (value) => value.toMap()),
      'osProfile': ?pulumi.Input.mapOptionalInputValue<OsProfile, Map<String, dynamic>>(osProfile, (value) => value.toMap()),
      'powerState': ?powerState,
      'proximityPlacementGroup': ?proximityPlacementGroup,
      'resourceGroupName': resourceGroupName,
      'storageProfile': ?pulumi.Input.mapOptionalInputValue<StorageProfile, Map<String, dynamic>>(storageProfile, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory AzureLargeInstanceArgs.fromMap(Map<String, dynamic> map) {
    return AzureLargeInstanceArgs(
      azureLargeInstanceId: map['azureLargeInstanceId'] == null ? null : (map['azureLargeInstanceId']! as String).input(),
      azureLargeInstanceName: map['azureLargeInstanceName'] == null ? null : (map['azureLargeInstanceName']! as String).input(),
      hardwareProfile: map['hardwareProfile'] == null ? null : (HardwareProfile.fromMap((map['hardwareProfile']! as Map).cast<String, dynamic>())).input(),
      hwRevision: map['hwRevision'] == null ? null : (map['hwRevision']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      networkProfile: map['networkProfile'] == null ? null : (NetworkProfile.fromMap((map['networkProfile']! as Map).cast<String, dynamic>())).input(),
      osProfile: map['osProfile'] == null ? null : (OsProfile.fromMap((map['osProfile']! as Map).cast<String, dynamic>())).input(),
      powerState: map['powerState'] == null ? null : (map['powerState']! as String).input(),
      proximityPlacementGroup: map['proximityPlacementGroup'] == null ? null : (map['proximityPlacementGroup']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      storageProfile: map['storageProfile'] == null ? null : (StorageProfile.fromMap((map['storageProfile']! as Map).cast<String, dynamic>())).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

