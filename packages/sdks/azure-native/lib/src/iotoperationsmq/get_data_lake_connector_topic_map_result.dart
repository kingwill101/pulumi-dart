// ignore_for_file: unused_element, unnecessary_cast

import 'data_lake_connector_map_response.dart';
import 'extended_location_property_response.dart';
import 'system_data_response.dart';

/// Result data returned by getDataLakeConnectorTopicMap.
class GetDataLakeConnectorTopicMapResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// DataLake Connector CRD to use.
  final String dataLakeConnectorRef;
  /// Extended Location
  final ExtendedLocationPropertyResponse extendedLocation;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The geo-location where the resource lives
  final String location;
  /// TopicMap for DataLake connector.
  final DataLakeConnectorMapResponse mapping;
  /// The name of the resource
  final String name;
  /// The status of the last operation.
  final String provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetDataLakeConnectorTopicMapResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [dataLakeConnectorRef] DataLake Connector CRD to use.
  /// [extendedLocation] Extended Location
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [location] The geo-location where the resource lives
  /// [mapping] TopicMap for DataLake connector.
  /// [name] The name of the resource
  /// [provisioningState] The status of the last operation.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetDataLakeConnectorTopicMapResult({
    required this.azureApiVersion,
    required this.dataLakeConnectorRef,
    required this.extendedLocation,
    required this.id,
    required this.location,
    required this.mapping,
    required this.name,
    required this.provisioningState,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'dataLakeConnectorRef': dataLakeConnectorRef,
      'extendedLocation': extendedLocation.toMap(),
      'id': id,
      'location': location,
      'mapping': mapping.toMap(),
      'name': name,
      'provisioningState': provisioningState,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetDataLakeConnectorTopicMapResult.fromMap(Map<String, dynamic> map) {
    return GetDataLakeConnectorTopicMapResult(
      azureApiVersion: map['azureApiVersion'] as String,
      dataLakeConnectorRef: map['dataLakeConnectorRef'] as String,
      extendedLocation: ExtendedLocationPropertyResponse.fromMap((map['extendedLocation']! as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      location: map['location'] as String,
      mapping: DataLakeConnectorMapResponse.fromMap((map['mapping']! as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
    );
  }
}

