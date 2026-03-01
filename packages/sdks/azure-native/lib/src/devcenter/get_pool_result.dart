// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'health_status_detail_response.dart';
import 'stop_on_disconnect_configuration_response.dart';
import 'system_data_response.dart';

/// Result data returned by getPool.
class GetPoolResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Indicates the number of provisioned Dev Boxes in this pool.
  final int devBoxCount;
  /// Name of a Dev Box definition in parent Project of this Pool
  final String devBoxDefinitionName;
  /// The display name of the pool.
  final String? displayName;
  /// Overall health status of the Pool. Indicates whether or not the Pool is available to create Dev Boxes.
  final String healthStatus;
  /// Details on the Pool health status to help diagnose issues. This is only populated when the pool status indicates the pool is in a non-healthy state
  final List<HealthStatusDetailResponse> healthStatusDetails;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// Specifies the license type indicating the caller has already acquired licenses for the Dev Boxes that will be created.
  final String licenseType;
  /// Indicates whether owners of Dev Boxes in this pool are added as local administrators on the Dev Box.
  final String localAdministrator;
  /// The geo-location where the resource lives
  final String location;
  /// The regions of the managed virtual network (required when managedNetworkType is Managed).
  final List<String>? managedVirtualNetworkRegions;
  /// The name of the resource
  final String name;
  /// Name of a Network Connection in parent Project of this Pool
  final String networkConnectionName;
  /// The provisioning state of the resource.
  final String provisioningState;
  /// Indicates whether Dev Boxes in this pool are created with single sign on enabled. The also requires that single sign on be enabled on the tenant.
  final String? singleSignOnStatus;
  /// Stop on disconnect configuration settings for Dev Boxes created in this pool.
  final StopOnDisconnectConfigurationResponse? stopOnDisconnect;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// Indicates whether the pool uses a Virtual Network managed by Microsoft or a customer provided network.
  final String? virtualNetworkType;

  /// Creates a new [GetPoolResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [devBoxCount] Indicates the number of provisioned Dev Boxes in this pool.
  /// [devBoxDefinitionName] Name of a Dev Box definition in parent Project of this Pool
  /// [displayName] The display name of the pool.
  /// [healthStatus] Overall health status of the Pool. Indicates whether or not the Pool is available to create Dev Boxes.
  /// [healthStatusDetails] Details on the Pool health status to help diagnose issues. This is only populated when the pool status indicates the pool is in a non-healthy state
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [licenseType] Specifies the license type indicating the caller has already acquired licenses for the Dev Boxes that will be created.
  /// [localAdministrator] Indicates whether owners of Dev Boxes in this pool are added as local administrators on the Dev Box.
  /// [location] The geo-location where the resource lives
  /// [managedVirtualNetworkRegions] The regions of the managed virtual network (required when managedNetworkType is Managed).
  /// [name] The name of the resource
  /// [networkConnectionName] Name of a Network Connection in parent Project of this Pool
  /// [provisioningState] The provisioning state of the resource.
  /// [singleSignOnStatus] Indicates whether Dev Boxes in this pool are created with single sign on enabled. The also requires that single sign on be enabled on the tenant.
  /// [stopOnDisconnect] Stop on disconnect configuration settings for Dev Boxes created in this pool.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [virtualNetworkType] Indicates whether the pool uses a Virtual Network managed by Microsoft or a customer provided network.
  GetPoolResult({
    required this.azureApiVersion,
    required this.devBoxCount,
    required this.devBoxDefinitionName,
    this.displayName,
    required this.healthStatus,
    required this.healthStatusDetails,
    required this.id,
    required this.licenseType,
    required this.localAdministrator,
    required this.location,
    this.managedVirtualNetworkRegions,
    required this.name,
    required this.networkConnectionName,
    required this.provisioningState,
    this.singleSignOnStatus,
    this.stopOnDisconnect,
    required this.systemData,
    this.tags,
    required this.type,
    this.virtualNetworkType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'devBoxCount': devBoxCount,
      'devBoxDefinitionName': devBoxDefinitionName,
      'displayName': ?displayName,
      'healthStatus': healthStatus,
      'healthStatusDetails': pulumi.Input.encodeList<HealthStatusDetailResponse, Map<String, dynamic>>(healthStatusDetails, (value) => value.toMap()),
      'id': id,
      'licenseType': licenseType,
      'localAdministrator': localAdministrator,
      'location': location,
      'managedVirtualNetworkRegions': ?managedVirtualNetworkRegions,
      'name': name,
      'networkConnectionName': networkConnectionName,
      'provisioningState': provisioningState,
      'singleSignOnStatus': ?singleSignOnStatus,
      'stopOnDisconnect': ?stopOnDisconnect == null ? null : stopOnDisconnect!.toMap(),
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
      'virtualNetworkType': ?virtualNetworkType,
    };
  }

  factory GetPoolResult.fromMap(Map<String, dynamic> map) {
    return GetPoolResult(
      azureApiVersion: map['azureApiVersion'] as String,
      devBoxCount: map['devBoxCount'] as int,
      devBoxDefinitionName: map['devBoxDefinitionName'] as String,
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      healthStatus: map['healthStatus'] as String,
      healthStatusDetails: pulumi.Input.decodeList<HealthStatusDetailResponse>(map['healthStatusDetails'], (value) => HealthStatusDetailResponse.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      licenseType: map['licenseType'] as String,
      localAdministrator: map['localAdministrator'] as String,
      location: map['location'] as String,
      managedVirtualNetworkRegions: map['managedVirtualNetworkRegions'] == null ? null : (map['managedVirtualNetworkRegions'] as List).cast<String>(),
      name: map['name'] as String,
      networkConnectionName: map['networkConnectionName'] as String,
      provisioningState: map['provisioningState'] as String,
      singleSignOnStatus: map['singleSignOnStatus'] == null ? null : map['singleSignOnStatus'] as String,
      stopOnDisconnect: map['stopOnDisconnect'] == null ? null : StopOnDisconnectConfigurationResponse.fromMap((map['stopOnDisconnect'] as Map).cast<String, dynamic>()),
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      type: map['type'] as String,
      virtualNetworkType: map['virtualNetworkType'] == null ? null : map['virtualNetworkType'] as String,
    );
  }
}

