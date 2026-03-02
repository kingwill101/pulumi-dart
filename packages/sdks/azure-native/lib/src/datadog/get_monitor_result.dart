// ignore_for_file: unused_element, unnecessary_cast

import 'identity_properties_response.dart';
import 'monitor_properties_response.dart';
import 'resource_sku_response.dart';
import 'system_data_response.dart';

/// Result data returned by getMonitor.
class GetMonitorResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// ARM id of the monitor resource.
  final String id;
  final IdentityPropertiesResponse? identity;
  final String location;
  /// Name of the monitor resource.
  final String name;
  /// Properties specific to the monitor resource.
  final MonitorPropertiesResponse properties;
  final ResourceSkuResponse? sku;
  /// Metadata pertaining to creation and last modification of the resource.
  final SystemDataResponse systemData;
  final Map<String, String>? tags;
  /// The type of the monitor resource.
  final String type;

  /// Creates a new [GetMonitorResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] ARM id of the monitor resource.
  /// [identity] Optional.
  /// [location] Required.
  /// [name] Name of the monitor resource.
  /// [properties] Properties specific to the monitor resource.
  /// [sku] Optional.
  /// [systemData] Metadata pertaining to creation and last modification of the resource.
  /// [tags] Optional.
  /// [type] The type of the monitor resource.
  GetMonitorResult({
    required this.azureApiVersion,
    required this.id,
    this.identity,
    required this.location,
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
      'location': location,
      'name': name,
      'properties': properties.toMap(),
      'sku': ?sku == null ? null : sku!.toMap(),
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetMonitorResult.fromMap(Map<String, dynamic> map) {
    return GetMonitorResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      identity: map['identity'] == null ? null : IdentityPropertiesResponse.fromMap((map['identity']! as Map).cast<String, dynamic>()),
      location: map['location'] as String,
      name: map['name'] as String,
      properties: MonitorPropertiesResponse.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      sku: map['sku'] == null ? null : ResourceSkuResponse.fromMap((map['sku']! as Map).cast<String, dynamic>()),
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}

