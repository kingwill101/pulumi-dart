// ignore_for_file: unused_element, unnecessary_cast

import 'fleetspace_properties_response_throughput_pool_configuration.dart';
import 'system_data_response.dart';

/// Result data returned by getFleetspace.
class GetFleetspaceResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// List of data regions assigned to the fleetspace. Eg [westus2]
  final List<String>? dataRegions;
  /// The kind of API this fleetspace belongs to. Acceptable values: 'NoSQL'
  final String? fleetspaceApiKind;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// The name of the resource
  final String? name;
  /// A provisioning state of the Fleetspace.
  final String? provisioningState;
  /// Service Tier for the fleetspace. GeneralPurpose types refers to single write region accounts that can be added to this fleetspace, whereas BusinessCritical refers to multi write region.
  final String? serviceTier;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Configuration for throughput pool in the fleetspace.
  final FleetspacePropertiesResponseThroughputPoolConfiguration? throughputPoolConfiguration;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetFleetspaceResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [dataRegions] List of data regions assigned to the fleetspace. Eg [westus2]
  /// [fleetspaceApiKind] The kind of API this fleetspace belongs to. Acceptable values: 'NoSQL'
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [name] The name of the resource
  /// [provisioningState] A provisioning state of the Fleetspace.
  /// [serviceTier] Service Tier for the fleetspace. GeneralPurpose types refers to single write region accounts that can be added to this fleetspace, whereas BusinessCritical refers to multi write region.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [throughputPoolConfiguration] Configuration for throughput pool in the fleetspace.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetFleetspaceResult({
    this.azureApiVersion,
    this.dataRegions,
    this.fleetspaceApiKind,
    this.id,
    this.name,
    this.provisioningState,
    this.serviceTier,
    this.systemData,
    this.throughputPoolConfiguration,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'dataRegions': ?dataRegions,
      'fleetspaceApiKind': ?fleetspaceApiKind,
      'id': ?id,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'serviceTier': ?serviceTier,
      'systemData': ?systemData?.toMap(),
      'throughputPoolConfiguration': ?throughputPoolConfiguration?.toMap(),
      'type': ?type,
    };
  }

  factory GetFleetspaceResult.fromMap(Map<String, dynamic> map) {
    return GetFleetspaceResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dataRegions: (() { final guardedValue = map['dataRegions']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      fleetspaceApiKind: (() { final guardedValue = map['fleetspaceApiKind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serviceTier: (() { final guardedValue = map['serviceTier']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      throughputPoolConfiguration: (() { final guardedValue = map['throughputPoolConfiguration']; if (guardedValue == null) return null; return FleetspacePropertiesResponseThroughputPoolConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
