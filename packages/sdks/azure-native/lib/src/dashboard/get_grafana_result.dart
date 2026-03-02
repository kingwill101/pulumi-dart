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
  GetGrafanaResult({
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
      'identity': ?identity == null ? null : identity!.toMap(),
      'location': ?location,
      'name': name,
      'properties': properties.toMap(),
      'sku': ?sku == null ? null : sku!.toMap(),
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetGrafanaResult.fromMap(Map<String, dynamic> map) {
    return GetGrafanaResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      identity: map['identity'] == null ? null : ManagedServiceIdentityResponse.fromMap((map['identity']! as Map).cast<String, dynamic>()),
      location: map['location'] == null ? null : map['location']! as String,
      name: map['name'] as String,
      properties: ManagedGrafanaPropertiesResponse.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      sku: map['sku'] == null ? null : ResourceSkuResponse.fromMap((map['sku']! as Map).cast<String, dynamic>()),
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}

