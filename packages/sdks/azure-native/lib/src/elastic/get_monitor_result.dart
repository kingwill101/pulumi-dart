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

  /// Identity properties of the monitor resource.
  final IdentityPropertiesResponse? identity;

  /// The location of the monitor resource
  final String location;

  /// Name of the monitor resource.
  final String name;

  /// Properties of the monitor resource.
  final MonitorPropertiesResponse properties;

  /// SKU of the monitor resource.
  final ResourceSkuResponse? sku;

  /// The system metadata relating to this resource
  final SystemDataResponse systemData;

  /// The tags of the monitor resource.
  final Map<String, String>? tags;

  /// The type of the monitor resource.
  final String type;

  /// Creates a new [GetMonitorResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] ARM id of the monitor resource.
  /// [identity] Identity properties of the monitor resource.
  /// [location] The location of the monitor resource
  /// [name] Name of the monitor resource.
  /// [properties] Properties of the monitor resource.
  /// [sku] SKU of the monitor resource.
  /// [systemData] The system metadata relating to this resource
  /// [tags] The tags of the monitor resource.
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
      'identity': ?identity?.toMap(),
      'location': location,
      'name': name,
      'properties': properties.toMap(),
      'sku': ?sku?.toMap(),
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetMonitorResult.fromMap(Map<String, dynamic> map) {
    return GetMonitorResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      identity: (() {
        final guardedValue = map['identity'];
        if (guardedValue == null) return null;
        return IdentityPropertiesResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      location: map['location'] as String,
      name: map['name'] as String,
      properties: MonitorPropertiesResponse.fromMap(
        (map['properties']! as Map).cast<String, dynamic>(),
      ),
      sku: (() {
        final guardedValue = map['sku'];
        if (guardedValue == null) return null;
        return ResourceSkuResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      systemData: SystemDataResponse.fromMap(
        (map['systemData']! as Map).cast<String, dynamic>(),
      ),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return (guardedValue as Map).cast<String, String>();
      })(),
      type: map['type'] as String,
    );
  }
}
