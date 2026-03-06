// ignore_for_file: unused_element, unnecessary_cast

import 'hardware_profile_response.dart';
import 'network_profile_response.dart';
import 'osprofile_response.dart';
import 'storage_profile_response.dart';
import 'system_data_response.dart';

/// Result data returned by getAzureBareMetalInstance.
class GetAzureBareMetalInstanceResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Specifies the Azure Bare Metal Instance unique ID.
  final String? azureBareMetalInstanceId;
  /// Specifies the hardware settings for the Azure Bare Metal Instance.
  final HardwareProfileResponse? hardwareProfile;
  /// Hardware revision of an Azure Bare Metal Instance
  final String? hwRevision;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The geo-location where the resource lives
  final String location;
  /// The name of the resource
  final String name;
  /// Specifies the network settings for the Azure Bare Metal Instance.
  final NetworkProfileResponse? networkProfile;
  /// Specifies the operating system settings for the Azure Bare Metal Instance.
  final OSProfileResponse? osProfile;
  /// ARM ID of another AzureBareMetalInstance that will share a network with this AzureBareMetalInstance
  final String? partnerNodeId;
  /// Resource power state
  final String? powerState;
  /// State of provisioning of the AzureBareMetalInstance
  final String provisioningState;
  /// Resource proximity placement group
  final String? proximityPlacementGroup;
  /// Specifies the storage settings for the Azure Bare Metal Instance disks.
  final StorageProfileResponse? storageProfile;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetAzureBareMetalInstanceResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [azureBareMetalInstanceId] Specifies the Azure Bare Metal Instance unique ID.
  /// [hardwareProfile] Specifies the hardware settings for the Azure Bare Metal Instance.
  /// [hwRevision] Hardware revision of an Azure Bare Metal Instance
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [networkProfile] Specifies the network settings for the Azure Bare Metal Instance.
  /// [osProfile] Specifies the operating system settings for the Azure Bare Metal Instance.
  /// [partnerNodeId] ARM ID of another AzureBareMetalInstance that will share a network with this AzureBareMetalInstance
  /// [powerState] Resource power state
  /// [provisioningState] State of provisioning of the AzureBareMetalInstance
  /// [proximityPlacementGroup] Resource proximity placement group
  /// [storageProfile] Specifies the storage settings for the Azure Bare Metal Instance disks.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetAzureBareMetalInstanceResult({
    required this.azureApiVersion,
    this.azureBareMetalInstanceId,
    this.hardwareProfile,
    this.hwRevision,
    required this.id,
    required this.location,
    required this.name,
    this.networkProfile,
    this.osProfile,
    this.partnerNodeId,
    this.powerState,
    required this.provisioningState,
    this.proximityPlacementGroup,
    this.storageProfile,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'azureBareMetalInstanceId': ?azureBareMetalInstanceId,
      'hardwareProfile': ?hardwareProfile?.toMap(),
      'hwRevision': ?hwRevision,
      'id': id,
      'location': location,
      'name': name,
      'networkProfile': ?networkProfile?.toMap(),
      'osProfile': ?osProfile?.toMap(),
      'partnerNodeId': ?partnerNodeId,
      'powerState': ?powerState,
      'provisioningState': provisioningState,
      'proximityPlacementGroup': ?proximityPlacementGroup,
      'storageProfile': ?storageProfile?.toMap(),
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetAzureBareMetalInstanceResult.fromMap(Map<String, dynamic> map) {
    return GetAzureBareMetalInstanceResult(
      azureApiVersion: map['azureApiVersion'] as String,
      azureBareMetalInstanceId: (() { final guardedValue = map['azureBareMetalInstanceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      hardwareProfile: (() { final guardedValue = map['hardwareProfile']; if (guardedValue == null) return null; return HardwareProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      hwRevision: (() { final guardedValue = map['hwRevision']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      networkProfile: (() { final guardedValue = map['networkProfile']; if (guardedValue == null) return null; return NetworkProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      osProfile: (() { final guardedValue = map['osProfile']; if (guardedValue == null) return null; return OSProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      partnerNodeId: (() { final guardedValue = map['partnerNodeId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      powerState: (() { final guardedValue = map['powerState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: map['provisioningState'] as String,
      proximityPlacementGroup: (() { final guardedValue = map['proximityPlacementGroup']; if (guardedValue == null) return null; return guardedValue as String; })(),
      storageProfile: (() { final guardedValue = map['storageProfile']; if (guardedValue == null) return null; return StorageProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
    );
  }
}

