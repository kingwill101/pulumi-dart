// ignore_for_file: unused_element, unnecessary_cast

import 'fleetspace_properties_response_throughput_pool_configuration.dart';
import 'system_data_response.dart';

/// Result data returned by getFleetspace.
class GetFleetspaceResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// List of data regions assigned to the fleetspace. Eg [westus2]
  final List<String>? dataRegions;
  /// The kind of API this fleetspace belongs to. Acceptable values: 'NoSQL'
  final String? fleetspaceApiKind;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The name of the resource
  final String name;
  /// A provisioning state of the Fleetspace.
  final String provisioningState;
  /// Service Tier for the fleetspace. GeneralPurpose types refers to single write region accounts that can be added to this fleetspace, whereas BusinessCritical refers to multi write region.
  final String? serviceTier;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Configuration for throughput pool in the fleetspace.
  final FleetspacePropertiesResponseThroughputPoolConfiguration? throughputPoolConfiguration;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

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
  GetFleetspaceResult({
    required this.azureApiVersion,
    this.dataRegions,
    this.fleetspaceApiKind,
    required this.id,
    required this.name,
    required this.provisioningState,
    this.serviceTier,
    required this.systemData,
    this.throughputPoolConfiguration,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'dataRegions': ?dataRegions,
      'fleetspaceApiKind': ?fleetspaceApiKind,
      'id': id,
      'name': name,
      'provisioningState': provisioningState,
      'serviceTier': ?serviceTier,
      'systemData': systemData.toMap(),
      'throughputPoolConfiguration': ?throughputPoolConfiguration == null ? null : throughputPoolConfiguration!.toMap(),
      'type': type,
    };
  }

  factory GetFleetspaceResult.fromMap(Map<String, dynamic> map) {
    return GetFleetspaceResult(
      azureApiVersion: map['azureApiVersion'] as String,
      dataRegions: map['dataRegions'] == null ? null : (map['dataRegions'] as List).cast<String>(),
      fleetspaceApiKind: map['fleetspaceApiKind'] == null ? null : map['fleetspaceApiKind'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      serviceTier: map['serviceTier'] == null ? null : map['serviceTier'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      throughputPoolConfiguration: map['throughputPoolConfiguration'] == null ? null : FleetspacePropertiesResponseThroughputPoolConfiguration.fromMap((map['throughputPoolConfiguration'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

