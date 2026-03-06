// ignore_for_file: unused_element, unnecessary_cast

import 'managed_grafana_properties_response.dart';
import 'managed_service_identity_response.dart';
import 'resource_sku_response.dart';
import 'system_data_response.dart';

/// Result data returned by getGrafana.
class GetGrafanaResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// ARM id of the grafana resource
  final String id;
  /// The managed identity of the grafana resource.
  final ManagedServiceIdentityResponse? identity;
  /// The geo-location where the grafana resource lives
  final String? location;
  /// Name of the grafana resource.
  final String name;
  /// Properties specific to the grafana resource.
  final ManagedGrafanaPropertiesResponse properties;
  /// The Sku of the grafana resource.
  final ResourceSkuResponse? sku;
  /// The system meta data relating to this grafana resource.
  final SystemDataResponse systemData;
  /// The tags for grafana resource.
  final Map<String, String>? tags;
  /// The type of the grafana resource.
  final String type;

  /// Creates a new [GetGrafanaResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] ARM id of the grafana resource
  /// [identity] The managed identity of the grafana resource.
  /// [location] The geo-location where the grafana resource lives
  /// [name] Name of the grafana resource.
  /// [properties] Properties specific to the grafana resource.
  /// [sku] The Sku of the grafana resource.
  /// [systemData] The system meta data relating to this grafana resource.
  /// [tags] The tags for grafana resource.
  /// [type] The type of the grafana resource.
  const GetGrafanaResult({
    required this.azureApiVersion,
    required this.id,
    this.identity,
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
      'identity': ?identity?.toMap(),
      'location': ?location,
      'name': name,
      'properties': properties.toMap(),
      'sku': ?sku?.toMap(),
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetGrafanaResult.fromMap(Map<String, dynamic> map) {
    return GetGrafanaResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return ManagedServiceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: map['name'] as String,
      properties: ManagedGrafanaPropertiesResponse.fromMap((map['properties']! as Map).cast<String, dynamic>()),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return ResourceSkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
    );
  }
}

