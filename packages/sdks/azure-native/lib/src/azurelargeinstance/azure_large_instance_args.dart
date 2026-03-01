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
    pulumi.Output<String>? azureLargeInstanceId,
    pulumi.Output<String>? azureLargeInstanceName,
    pulumi.Output<HardwareProfile>? hardwareProfile,
    pulumi.Output<String>? hwRevision,
    pulumi.Output<String>? location,
    pulumi.Output<NetworkProfile>? networkProfile,
    pulumi.Output<OsProfile>? osProfile,
    pulumi.Output<String>? powerState,
    pulumi.Output<String>? proximityPlacementGroup,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<StorageProfile>? storageProfile,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      azureLargeInstanceId = pulumi.Input.asOptionalInput<String>(azureLargeInstanceId),
      azureLargeInstanceName = pulumi.Input.asOptionalInput<String>(azureLargeInstanceName),
      hardwareProfile = pulumi.Input.asOptionalInput<HardwareProfile>(hardwareProfile),
      hwRevision = pulumi.Input.asOptionalInput<String>(hwRevision),
      location = pulumi.Input.asOptionalInput<String>(location),
      networkProfile = pulumi.Input.asOptionalInput<NetworkProfile>(networkProfile),
      osProfile = pulumi.Input.asOptionalInput<OsProfile>(osProfile),
      powerState = pulumi.Input.asOptionalInput<String>(powerState),
      proximityPlacementGroup = pulumi.Input.asOptionalInput<String>(proximityPlacementGroup),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      storageProfile = pulumi.Input.asOptionalInput<StorageProfile>(storageProfile),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      azureLargeInstanceId: map['azureLargeInstanceId'] == null ? null : pulumi.Output.create<String>(map['azureLargeInstanceId'] as String),
      azureLargeInstanceName: map['azureLargeInstanceName'] == null ? null : pulumi.Output.create<String>(map['azureLargeInstanceName'] as String),
      hardwareProfile: map['hardwareProfile'] == null ? null : pulumi.Output.create<HardwareProfile>(HardwareProfile.fromMap((map['hardwareProfile'] as Map).cast<String, dynamic>())),
      hwRevision: map['hwRevision'] == null ? null : pulumi.Output.create<String>(map['hwRevision'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      networkProfile: map['networkProfile'] == null ? null : pulumi.Output.create<NetworkProfile>(NetworkProfile.fromMap((map['networkProfile'] as Map).cast<String, dynamic>())),
      osProfile: map['osProfile'] == null ? null : pulumi.Output.create<OsProfile>(OsProfile.fromMap((map['osProfile'] as Map).cast<String, dynamic>())),
      powerState: map['powerState'] == null ? null : pulumi.Output.create<String>(map['powerState'] as String),
      proximityPlacementGroup: map['proximityPlacementGroup'] == null ? null : pulumi.Output.create<String>(map['proximityPlacementGroup'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      storageProfile: map['storageProfile'] == null ? null : pulumi.Output.create<StorageProfile>(StorageProfile.fromMap((map['storageProfile'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

