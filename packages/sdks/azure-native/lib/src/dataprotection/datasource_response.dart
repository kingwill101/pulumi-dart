// ignore_for_file: unused_element, unnecessary_cast

import 'default_resource_properties_response.dart';

/// Datasource to be backed up
class DatasourceResponse {
  /// DatasourceType of the resource.
  final String? datasourceType;
  /// Type of Datasource object, used to initialize the right inherited type
  final String? objectType;
  /// Full ARM ID of the resource. For azure resources, this is ARM ID. For non azure resources, this will be the ID created by backup service via Fabric/Vault.
  final String resourceID;
  /// Location of datasource.
  final String? resourceLocation;
  /// Unique identifier of the resource in the context of parent.
  final String? resourceName;
  /// Properties specific to data source
  final DefaultResourcePropertiesResponse? resourceProperties;
  /// Resource Type of Datasource.
  final String? resourceType;
  /// Uri of the resource.
  final String? resourceUri;

  /// Creates a new [DatasourceResponse].
  /// [datasourceType] DatasourceType of the resource.
  /// [objectType] Type of Datasource object, used to initialize the right inherited type
  /// [resourceID] Full ARM ID of the resource. For azure resources, this is ARM ID. For non azure resources, this will be the ID created by backup service via Fabric/Vault.
  /// [resourceLocation] Location of datasource.
  /// [resourceName] Unique identifier of the resource in the context of parent.
  /// [resourceProperties] Properties specific to data source
  /// [resourceType] Resource Type of Datasource.
  /// [resourceUri] Uri of the resource.
  DatasourceResponse({
    this.datasourceType,
    this.objectType,
    required this.resourceID,
    this.resourceLocation,
    this.resourceName,
    this.resourceProperties,
    this.resourceType,
    this.resourceUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasourceType': ?datasourceType,
      'objectType': ?objectType,
      'resourceID': resourceID,
      'resourceLocation': ?resourceLocation,
      'resourceName': ?resourceName,
      'resourceProperties': ?resourceProperties == null ? null : resourceProperties!.toMap(),
      'resourceType': ?resourceType,
      'resourceUri': ?resourceUri,
    };
  }

  factory DatasourceResponse.fromMap(Map<String, dynamic> map) {
    return DatasourceResponse(
      datasourceType: map['datasourceType'] == null ? null : map['datasourceType'] as String,
      objectType: map['objectType'] == null ? null : map['objectType'] as String,
      resourceID: map['resourceID'] as String,
      resourceLocation: map['resourceLocation'] == null ? null : map['resourceLocation'] as String,
      resourceName: map['resourceName'] == null ? null : map['resourceName'] as String,
      resourceProperties: map['resourceProperties'] == null ? null : DefaultResourcePropertiesResponse.fromMap((map['resourceProperties'] as Map).cast<String, dynamic>()),
      resourceType: map['resourceType'] == null ? null : map['resourceType'] as String,
      resourceUri: map['resourceUri'] == null ? null : map['resourceUri'] as String,
    );
  }
}

