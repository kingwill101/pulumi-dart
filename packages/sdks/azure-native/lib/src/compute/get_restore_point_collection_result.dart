// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'restore_point_collection_source_properties_response.dart';
import 'restore_point_response.dart';
import 'system_data_response.dart';

/// Result data returned by getRestorePointCollection.
class GetRestorePointCollectionResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String? id;
  /// The geo-location where the resource lives
  final String? location;
  /// The name of the resource
  final String? name;
  /// The provisioning state of the restore point collection.
  final String? provisioningState;
  /// The unique id of the restore point collection.
  final String? restorePointCollectionId;
  /// A list containing all restore points created under this restore point collection.
  final List<RestorePointResponse>? restorePoints;
  /// The properties of the source resource that this restore point collection is created from.
  final RestorePointCollectionSourcePropertiesResponse? source;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

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
    this.azureApiVersion,
    this.id,
    this.location,
    this.name,
    this.provisioningState,
    this.restorePointCollectionId,
    this.restorePoints,
    this.source,
    this.systemData,
    this.tags,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'restorePointCollectionId': ?restorePointCollectionId,
      'restorePoints': ?(() { final guardedValue = restorePoints; if (guardedValue == null) return null; return pulumi.Input.encodeList<RestorePointResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'source': ?source?.toMap(),
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory GetRestorePointCollectionResult.fromMap(Map<String, dynamic> map) {
    return GetRestorePointCollectionResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      restorePointCollectionId: (() { final guardedValue = map['restorePointCollectionId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      restorePoints: (() { final guardedValue = map['restorePoints']; if (guardedValue == null) return null; return pulumi.Input.decodeList<RestorePointResponse>(guardedValue, (value) => RestorePointResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return RestorePointCollectionSourcePropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
