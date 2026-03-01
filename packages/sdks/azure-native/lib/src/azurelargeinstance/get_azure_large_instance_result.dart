// ignore_for_file: unused_element, unnecessary_cast

import 'hardware_profile_response.dart';
import 'network_profile_response.dart';
import 'os_profile_response.dart';
import 'storage_profile_response.dart';
import 'system_data_response.dart';

/// Result data returned by getAzureLargeInstance.
class GetAzureLargeInstanceResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Specifies the Azure Large Instance unique ID.
  final String? azureLargeInstanceId;
  /// Specifies the hardware settings for the Azure Large Instance.
  final HardwareProfileResponse? hardwareProfile;
  /// Hardware revision of an Azure Large Instance
  final String? hwRevision;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The geo-location where the resource lives
  final String location;
  /// The name of the resource
  final String name;
  /// Specifies the network settings for the Azure Large Instance.
  final NetworkProfileResponse? networkProfile;
  /// Specifies the operating system settings for the Azure Large Instance.
  final OsProfileResponse? osProfile;
  /// Resource power state
  final String? powerState;
  /// State of provisioning of the AzureLargeInstance
  final String provisioningState;
  /// Resource proximity placement group
  final String? proximityPlacementGroup;
  /// Specifies the storage settings for the Azure Large Instance disks.
  final StorageProfileResponse? storageProfile;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetAzureLargeInstanceResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [azureLargeInstanceId] Specifies the Azure Large Instance unique ID.
  /// [hardwareProfile] Specifies the hardware settings for the Azure Large Instance.
  /// [hwRevision] Hardware revision of an Azure Large Instance
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [networkProfile] Specifies the network settings for the Azure Large Instance.
  /// [osProfile] Specifies the operating system settings for the Azure Large Instance.
  /// [powerState] Resource power state
  /// [provisioningState] State of provisioning of the AzureLargeInstance
  /// [proximityPlacementGroup] Resource proximity placement group
  /// [storageProfile] Specifies the storage settings for the Azure Large Instance disks.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetAzureLargeInstanceResult({
    required this.azureApiVersion,
    this.azureLargeInstanceId,
    this.hardwareProfile,
    this.hwRevision,
    required this.id,
    required this.location,
    required this.name,
    this.networkProfile,
    this.osProfile,
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
      'azureLargeInstanceId': ?azureLargeInstanceId,
      'hardwareProfile': ?hardwareProfile == null ? null : hardwareProfile!.toMap(),
      'hwRevision': ?hwRevision,
      'id': id,
      'location': location,
      'name': name,
      'networkProfile': ?networkProfile == null ? null : networkProfile!.toMap(),
      'osProfile': ?osProfile == null ? null : osProfile!.toMap(),
      'powerState': ?powerState,
      'provisioningState': provisioningState,
      'proximityPlacementGroup': ?proximityPlacementGroup,
      'storageProfile': ?storageProfile == null ? null : storageProfile!.toMap(),
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetAzureLargeInstanceResult.fromMap(Map<String, dynamic> map) {
    return GetAzureLargeInstanceResult(
      azureApiVersion: map['azureApiVersion'] as String,
      azureLargeInstanceId: map['azureLargeInstanceId'] == null ? null : map['azureLargeInstanceId'] as String,
      hardwareProfile: map['hardwareProfile'] == null ? null : HardwareProfileResponse.fromMap((map['hardwareProfile'] as Map).cast<String, dynamic>()),
      hwRevision: map['hwRevision'] == null ? null : map['hwRevision'] as String,
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      networkProfile: map['networkProfile'] == null ? null : NetworkProfileResponse.fromMap((map['networkProfile'] as Map).cast<String, dynamic>()),
      osProfile: map['osProfile'] == null ? null : OsProfileResponse.fromMap((map['osProfile'] as Map).cast<String, dynamic>()),
      powerState: map['powerState'] == null ? null : map['powerState'] as String,
      provisioningState: map['provisioningState'] as String,
      proximityPlacementGroup: map['proximityPlacementGroup'] == null ? null : map['proximityPlacementGroup'] as String,
      storageProfile: map['storageProfile'] == null ? null : StorageProfileResponse.fromMap((map['storageProfile'] as Map).cast<String, dynamic>()),
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}

