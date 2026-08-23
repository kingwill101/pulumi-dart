// ignore_for_file: unused_element, unnecessary_cast

import 'integration_service_environment_properties_response.dart';
import 'integration_service_environment_sku_response.dart';
import 'managed_service_identity_response.dart';

/// Result data returned by getIntegrationServiceEnvironment.
class GetIntegrationServiceEnvironmentResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The resource id.
  final String id;
  /// Managed service identity properties.
  final ManagedServiceIdentityResponse? identity;
  /// The resource location.
  final String? location;
  /// Gets the resource name.
  final String name;
  /// The integration service environment properties.
  final IntegrationServiceEnvironmentPropertiesResponse properties;
  /// The sku.
  final IntegrationServiceEnvironmentSkuResponse? sku;
  /// The resource tags.
  final Map<String, String>? tags;
  /// Gets the resource type.
  final String type;

  /// Creates a new [GetIntegrationServiceEnvironmentResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] The resource id.
  /// [identity] Managed service identity properties.
  /// [location] The resource location.
  /// [name] Gets the resource name.
  /// [properties] The integration service environment properties.
  /// [sku] The sku.
  /// [tags] The resource tags.
  /// [type] Gets the resource type.
  const GetIntegrationServiceEnvironmentResult({
    required this.azureApiVersion,
    required this.id,
    this.identity,
    this.location,
    required this.name,
    required this.properties,
    this.sku,
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
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetIntegrationServiceEnvironmentResult.fromMap(Map<String, dynamic> map) {
    return GetIntegrationServiceEnvironmentResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return ManagedServiceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: map['name'] as String,
      properties: IntegrationServiceEnvironmentPropertiesResponse.fromMap((map['properties']! as Map).cast<String, dynamic>()),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return IntegrationServiceEnvironmentSkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
    );
  }
}
