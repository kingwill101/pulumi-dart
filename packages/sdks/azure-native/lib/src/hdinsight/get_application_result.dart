// ignore_for_file: unused_element, unnecessary_cast

import 'application_properties_response.dart';
import 'system_data_response.dart';

/// Result data returned by getApplication.
class GetApplicationResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The ETag for the application
  final String? etag;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The name of the resource
  final String name;
  /// The properties of the application.
  final ApplicationPropertiesResponse properties;
  /// Metadata pertaining to creation and last modification of the resource.
  final SystemDataResponse systemData;
  /// The tags for the application.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetApplicationResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [etag] The ETag for the application
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [name] The name of the resource
  /// [properties] The properties of the application.
  /// [systemData] Metadata pertaining to creation and last modification of the resource.
  /// [tags] The tags for the application.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetApplicationResult({
    required this.azureApiVersion,
    this.etag,
    required this.id,
    required this.name,
    required this.properties,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'etag': ?etag,
      'id': id,
      'name': name,
      'properties': properties.toMap(),
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetApplicationResult.fromMap(Map<String, dynamic> map) {
    return GetApplicationResult(
      azureApiVersion: map['azureApiVersion'] as String,
      etag: map['etag'] == null ? null : map['etag']! as String,
      id: map['id'] as String,
      name: map['name'] as String,
      properties: ApplicationPropertiesResponse.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}

