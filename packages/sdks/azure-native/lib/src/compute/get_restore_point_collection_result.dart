// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'restore_point_collection_source_properties_response.dart';
import 'restore_point_response.dart';
import 'system_data_response.dart';

/// Result data returned by getRestorePointCollection.
class GetRestorePointCollectionResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The geo-location where the resource lives
  final String location;
  /// The name of the resource
  final String name;
  /// The provisioning state of the restore point collection.
  final String provisioningState;
  /// The unique id of the restore point collection.
  final String restorePointCollectionId;
  /// A list containing all restore points created under this restore point collection.
  final List<RestorePointResponse> restorePoints;
  /// The properties of the source resource that this restore point collection is created from.
  final RestorePointCollectionSourcePropertiesResponse? source;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetRestorePointCollectionResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [provisioningState] The provisioning state of the restore point collection.
  /// [restorePointCollectionId] The unique id of the restore point collection.
  /// [restorePoints] A list containing all restore points created under this restore point collection.
  /// [source] The properties of the source resource that this restore point collection is created from.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetRestorePointCollectionResult({
    required this.azureApiVersion,
    required this.id,
    required this.location,
    required this.name,
    required this.provisioningState,
    required this.restorePointCollectionId,
    required this.restorePoints,
    this.source,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'location': location,
      'name': name,
      'provisioningState': provisioningState,
      'restorePointCollectionId': restorePointCollectionId,
      'restorePoints': pulumi.Input.encodeList<RestorePointResponse, Map<String, dynamic>>(restorePoints, (value) => value.toMap()),
      'source': ?source?.toMap(),
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetRestorePointCollectionResult.fromMap(Map<String, dynamic> map) {
    return GetRestorePointCollectionResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      restorePointCollectionId: map['restorePointCollectionId'] as String,
      restorePoints: pulumi.Input.decodeList<RestorePointResponse>(map['restorePoints']!, (value) => RestorePointResponse.fromMap((value as Map).cast<String, dynamic>())),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return RestorePointCollectionSourcePropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
    );
  }
}
