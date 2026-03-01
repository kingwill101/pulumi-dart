// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dataset_property_key_response.dart';
import 'extended_location_response.dart';
import 'system_data_response.dart';

/// Result data returned by getDataset.
class GetDatasetResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Detailed description of the Dataset.
  final String? description;
  /// Edge location of the resource.
  final ExtendedLocationResponse extendedLocation;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// List of keys that can be used for joining on enrich.
  final Map<String, DatasetPropertyKeyResponse>? keys;
  /// The geo-location where the resource lives
  final String location;
  /// The name of the resource
  final String name;
  /// Path to the payload in the message. Enrich will add only the payload to the enriched message, other fields will not be kept except for in the indexes.
  final String? payload;
  /// The status of the last operation.
  final String provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// Path to an RFC3339 timestamp in the message. If no path is provided, the ingestion time of the record is used for time-based joins.
  final String? timestamp;
  /// Time to live for individual records.
  final String? ttl;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetDatasetResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [description] Detailed description of the Dataset.
  /// [extendedLocation] Edge location of the resource.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [keys] List of keys that can be used for joining on enrich.
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [payload] Path to the payload in the message. Enrich will add only the payload to the enriched message, other fields will not be kept except for in the indexes.
  /// [provisioningState] The status of the last operation.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [timestamp] Path to an RFC3339 timestamp in the message. If no path is provided, the ingestion time of the record is used for time-based joins.
  /// [ttl] Time to live for individual records.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetDatasetResult({
    required this.azureApiVersion,
    this.description,
    required this.extendedLocation,
    required this.id,
    this.keys,
    required this.location,
    required this.name,
    this.payload,
    required this.provisioningState,
    required this.systemData,
    this.tags,
    this.timestamp,
    this.ttl,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'description': ?description,
      'extendedLocation': extendedLocation.toMap(),
      'id': id,
      'keys': ?keys == null ? null : pulumi.Input.encodeMapValues<DatasetPropertyKeyResponse, Map<String, dynamic>>(keys!, (value) => value.toMap()),
      'location': location,
      'name': name,
      'payload': ?payload,
      'provisioningState': provisioningState,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'timestamp': ?timestamp,
      'ttl': ?ttl,
      'type': type,
    };
  }

  factory GetDatasetResult.fromMap(Map<String, dynamic> map) {
    return GetDatasetResult(
      azureApiVersion: map['azureApiVersion'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      extendedLocation: ExtendedLocationResponse.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      keys: map['keys'] == null ? null : pulumi.Input.decodeMapValues<DatasetPropertyKeyResponse>(map['keys'], (value) => DatasetPropertyKeyResponse.fromMap((value as Map).cast<String, dynamic>())),
      location: map['location'] as String,
      name: map['name'] as String,
      payload: map['payload'] == null ? null : map['payload'] as String,
      provisioningState: map['provisioningState'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      timestamp: map['timestamp'] == null ? null : map['timestamp'] as String,
      ttl: map['ttl'] == null ? null : map['ttl'] as String,
      type: map['type'] as String,
    );
  }
}

