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
  const AzureLargeInstanceArgs({
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
      azureLargeInstanceId: (() { final guardedValue = map['azureLargeInstanceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      azureLargeInstanceName: (() { final guardedValue = map['azureLargeInstanceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hardwareProfile: (() { final guardedValue = map['hardwareProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HardwareProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      hwRevision: (() { final guardedValue = map['hwRevision']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkProfile: (() { final guardedValue = map['networkProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NetworkProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      osProfile: (() { final guardedValue = map['osProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OsProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      powerState: (() { final guardedValue = map['powerState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      proximityPlacementGroup: (() { final guardedValue = map['proximityPlacementGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      storageProfile: (() { final guardedValue = map['storageProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StorageProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

