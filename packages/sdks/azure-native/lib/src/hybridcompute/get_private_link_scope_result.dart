// ignore_for_file: unused_element, unnecessary_cast

import 'hybrid_compute_private_link_scope_properties_response.dart';
import 'system_data_response.dart';

/// Result data returned by getPrivateLinkScope.
class GetPrivateLinkScopeResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Azure resource Id
  final String id;
  /// Resource location
  final String location;
  /// Azure resource name
  final String name;
  /// Properties that define a Azure Arc PrivateLinkScope resource.
  final HybridComputePrivateLinkScopePropertiesResponse properties;
  /// The system meta data relating to this resource.
  final SystemDataResponse systemData;
  /// Resource tags
  final Map<String, String>? tags;
  /// Azure resource type
  final String type;

  /// Creates a new [GetPrivateLinkScopeResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Azure resource Id
  /// [location] Resource location
  /// [name] Azure resource name
  /// [properties] Properties that define a Azure Arc PrivateLinkScope resource.
  /// [systemData] The system meta data relating to this resource.
  /// [tags] Resource tags
  /// [type] Azure resource type
  const GetPrivateLinkScopeResult({
    required this.azureApiVersion,
    required this.id,
    required this.location,
    required this.name,
    required this.properties,
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
      'properties': properties.toMap(),
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetPrivateLinkScopeResult.fromMap(Map<String, dynamic> map) {
    return GetPrivateLinkScopeResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      properties: HybridComputePrivateLinkScopePropertiesResponse.fromMap((map['properties']! as Map).cast<String, dynamic>()),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
    );
  }
}
