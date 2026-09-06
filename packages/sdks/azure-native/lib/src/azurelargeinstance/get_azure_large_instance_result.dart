// ignore_for_file: unused_element, unnecessary_cast

import 'hardware_profile_response.dart';
import 'network_profile_response.dart';
import 'os_profile_response.dart';
import 'storage_profile_response.dart';
import 'system_data_response.dart';

/// Result data returned by getAzureLargeInstance.
class GetAzureLargeInstanceResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Specifies the Azure Large Instance unique ID.
  final String? azureLargeInstanceId;
  /// Specifies the hardware settings for the Azure Large Instance.
  final HardwareProfileResponse? hardwareProfile;
  /// Hardware revision of an Azure Large Instance
  final String? hwRevision;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// The geo-location where the resource lives
  final String? location;
  /// The name of the resource
  final String? name;
  /// Specifies the network settings for the Azure Large Instance.
  final NetworkProfileResponse? networkProfile;
  /// Specifies the operating system settings for the Azure Large Instance.
  final OsProfileResponse? osProfile;
  /// Resource power state
  final String? powerState;
  /// State of provisioning of the AzureLargeInstance
  final String? provisioningState;
  /// Resource proximity placement group
  final String? proximityPlacementGroup;
  /// Specifies the storage settings for the Azure Large Instance disks.
  final StorageProfileResponse? storageProfile;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

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
  const GetAzureLargeInstanceResult({
    this.azureApiVersion,
    this.azureLargeInstanceId,
    this.hardwareProfile,
    this.hwRevision,
    this.id,
    this.location,
    this.name,
    this.networkProfile,
    this.osProfile,
    this.powerState,
    this.provisioningState,
    this.proximityPlacementGroup,
    this.storageProfile,
    this.systemData,
    this.tags,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'azureLargeInstanceId': ?azureLargeInstanceId,
      'hardwareProfile': ?hardwareProfile?.toMap(),
      'hwRevision': ?hwRevision,
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'networkProfile': ?networkProfile?.toMap(),
      'osProfile': ?osProfile?.toMap(),
      'powerState': ?powerState,
      'provisioningState': ?provisioningState,
      'proximityPlacementGroup': ?proximityPlacementGroup,
      'storageProfile': ?storageProfile?.toMap(),
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory GetAzureLargeInstanceResult.fromMap(Map<String, dynamic> map) {
    return GetAzureLargeInstanceResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      azureLargeInstanceId: (() { final guardedValue = map['azureLargeInstanceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      hardwareProfile: (() { final guardedValue = map['hardwareProfile']; if (guardedValue == null) return null; return HardwareProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      hwRevision: (() { final guardedValue = map['hwRevision']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      networkProfile: (() { final guardedValue = map['networkProfile']; if (guardedValue == null) return null; return NetworkProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      osProfile: (() { final guardedValue = map['osProfile']; if (guardedValue == null) return null; return OsProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      powerState: (() { final guardedValue = map['powerState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      proximityPlacementGroup: (() { final guardedValue = map['proximityPlacementGroup']; if (guardedValue == null) return null; return guardedValue as String; })(),
      storageProfile: (() { final guardedValue = map['storageProfile']; if (guardedValue == null) return null; return StorageProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
