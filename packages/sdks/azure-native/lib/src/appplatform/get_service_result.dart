// ignore_for_file: unused_element, unnecessary_cast

import 'cluster_resource_properties_response.dart';
import 'sku_response.dart';
import 'system_data_response.dart';

/// Result data returned by getService.
class GetServiceResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Fully qualified resource Id for the resource.
  final String id;
  /// The GEO location of the resource.
  final String? location;
  /// The name of the resource.
  final String name;
  /// Properties of the Service resource
  final ClusterResourcePropertiesResponse properties;
  /// Sku of the Service resource
  final SkuResponse? sku;
  /// Metadata pertaining to creation and last modification of the resource.
  final SystemDataResponse systemData;
  /// Tags of the service which is a list of key value pairs that describe the resource.
  final Map<String, String>? tags;
  /// The type of the resource.
  final String type;

  /// Creates a new [GetServiceResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified resource Id for the resource.
  /// [location] The GEO location of the resource.
  /// [name] The name of the resource.
  /// [properties] Properties of the Service resource
  /// [sku] Sku of the Service resource
  /// [systemData] Metadata pertaining to creation and last modification of the resource.
  /// [tags] Tags of the service which is a list of key value pairs that describe the resource.
  /// [type] The type of the resource.
  GetServiceResult({
    required this.azureApiVersion,
    required this.id,
    this.location,
    required this.name,
    required this.properties,
    this.sku,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'location': ?location,
      'name': name,
      'properties': properties.toMap(),
      'sku': ?sku == null ? null : sku!.toMap(),
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetServiceResult.fromMap(Map<String, dynamic> map) {
    return GetServiceResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      location: map['location'] == null ? null : map['location']! as String,
      name: map['name'] as String,
      properties: ClusterResourcePropertiesResponse.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      sku: map['sku'] == null ? null : SkuResponse.fromMap((map['sku']! as Map).cast<String, dynamic>()),
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}

