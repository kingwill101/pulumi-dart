// ignore_for_file: unused_element, unnecessary_cast

import 'hybrid_compute_private_link_scope_properties_response.dart';
import 'system_data_response.dart';

/// Result data returned by getPrivateLinkScope.
class GetPrivateLinkScopeResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Azure resource Id
  final String? id;
  /// Resource location
  final String? location;
  /// Azure resource name
  final String? name;
  /// Properties that define a Azure Arc PrivateLinkScope resource.
  final HybridComputePrivateLinkScopePropertiesResponse? properties;
  /// The system meta data relating to this resource.
  final SystemDataResponse? systemData;
  /// Resource tags
  final Map<String, String>? tags;
  /// Azure resource type
  final String? type;

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
    this.azureApiVersion,
    this.id,
    this.location,
    this.name,
    this.properties,
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
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory GetPrivateLinkScopeResult.fromMap(Map<String, dynamic> map) {
    return GetPrivateLinkScopeResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return HybridComputePrivateLinkScopePropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
