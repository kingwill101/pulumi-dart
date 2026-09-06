// ignore_for_file: unused_element, unnecessary_cast

import 'cluster_resource_properties_response.dart';
import 'sku_response.dart';
import 'system_data_response.dart';

/// Result data returned by getService.
class GetServiceResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Fully qualified resource Id for the resource.
  final String? id;
  /// The GEO location of the resource.
  final String? location;
  /// The name of the resource.
  final String? name;
  /// Properties of the Service resource
  final ClusterResourcePropertiesResponse? properties;
  /// Sku of the Service resource
  final SkuResponse? sku;
  /// Metadata pertaining to creation and last modification of the resource.
  final SystemDataResponse? systemData;
  /// Tags of the service which is a list of key value pairs that describe the resource.
  final Map<String, String>? tags;
  /// The type of the resource.
  final String? type;

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
  const GetServiceResult({
    this.azureApiVersion,
    this.id,
    this.location,
    this.name,
    this.properties,
    this.sku,
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
      'properties': ?properties?.toMap(),
      'sku': ?sku?.toMap(),
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory GetServiceResult.fromMap(Map<String, dynamic> map) {
    return GetServiceResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return ClusterResourcePropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return SkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
