// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'health_status_detail_response.dart';
import 'stop_on_disconnect_configuration_response.dart';
import 'system_data_response.dart';

/// Result data returned by getPool.
class GetPoolResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Indicates the number of provisioned Dev Boxes in this pool.
  final int? devBoxCount;
  /// Name of a Dev Box definition in parent Project of this Pool
  final String? devBoxDefinitionName;
  /// The display name of the pool.
  final String? displayName;
  /// Overall health status of the Pool. Indicates whether or not the Pool is available to create Dev Boxes.
  final String? healthStatus;
  /// Details on the Pool health status to help diagnose issues. This is only populated when the pool status indicates the pool is in a non-healthy state
  final List<HealthStatusDetailResponse>? healthStatusDetails;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// Specifies the license type indicating the caller has already acquired licenses for the Dev Boxes that will be created.
  final String? licenseType;
  /// Indicates whether owners of Dev Boxes in this pool are added as local administrators on the Dev Box.
  final String? localAdministrator;
  /// The geo-location where the resource lives
  final String? location;
  /// The regions of the managed virtual network (required when managedNetworkType is Managed).
  final List<String>? managedVirtualNetworkRegions;
  /// The name of the resource
  final String? name;
  /// Name of a Network Connection in parent Project of this Pool
  final String? networkConnectionName;
  /// The provisioning state of the resource.
  final String? provisioningState;
  /// Indicates whether Dev Boxes in this pool are created with single sign on enabled. The also requires that single sign on be enabled on the tenant.
  final String? singleSignOnStatus;
  /// Stop on disconnect configuration settings for Dev Boxes created in this pool.
  final StopOnDisconnectConfigurationResponse? stopOnDisconnect;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;
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
  const GetPoolResult({
    this.azureApiVersion,
    this.devBoxCount,
    this.devBoxDefinitionName,
    this.displayName,
    this.healthStatus,
    this.healthStatusDetails,
    this.id,
    this.licenseType,
    this.localAdministrator,
    this.location,
    this.managedVirtualNetworkRegions,
    this.name,
    this.networkConnectionName,
    this.provisioningState,
    this.singleSignOnStatus,
    this.stopOnDisconnect,
    this.systemData,
    this.tags,
    this.type,
    this.virtualNetworkType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'devBoxCount': ?devBoxCount,
      'devBoxDefinitionName': ?devBoxDefinitionName,
      'displayName': ?displayName,
      'healthStatus': ?healthStatus,
      'healthStatusDetails': ?(() { final guardedValue = healthStatusDetails; if (guardedValue == null) return null; return pulumi.Input.encodeList<HealthStatusDetailResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'licenseType': ?licenseType,
      'localAdministrator': ?localAdministrator,
      'location': ?location,
      'managedVirtualNetworkRegions': ?managedVirtualNetworkRegions,
      'name': ?name,
      'networkConnectionName': ?networkConnectionName,
      'provisioningState': ?provisioningState,
      'singleSignOnStatus': ?singleSignOnStatus,
      'stopOnDisconnect': ?stopOnDisconnect?.toMap(),
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'type': ?type,
      'virtualNetworkType': ?virtualNetworkType,
    };
  }

  factory GetPoolResult.fromMap(Map<String, dynamic> map) {
    return GetPoolResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      devBoxCount: (() { final guardedValue = map['devBoxCount']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      devBoxDefinitionName: (() { final guardedValue = map['devBoxDefinitionName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      healthStatus: (() { final guardedValue = map['healthStatus']; if (guardedValue == null) return null; return guardedValue as String; })(),
      healthStatusDetails: (() { final guardedValue = map['healthStatusDetails']; if (guardedValue == null) return null; return pulumi.Input.decodeList<HealthStatusDetailResponse>(guardedValue, (value) => HealthStatusDetailResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      licenseType: (() { final guardedValue = map['licenseType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      localAdministrator: (() { final guardedValue = map['localAdministrator']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      managedVirtualNetworkRegions: (() { final guardedValue = map['managedVirtualNetworkRegions']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      networkConnectionName: (() { final guardedValue = map['networkConnectionName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      singleSignOnStatus: (() { final guardedValue = map['singleSignOnStatus']; if (guardedValue == null) return null; return guardedValue as String; })(),
      stopOnDisconnect: (() { final guardedValue = map['stopOnDisconnect']; if (guardedValue == null) return null; return StopOnDisconnectConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      virtualNetworkType: (() { final guardedValue = map['virtualNetworkType']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
