// ignore_for_file: unused_element, unnecessary_cast

import 'services_properties_response.dart';
import 'services_resource_response_identity.dart';
import 'system_data_response.dart';

/// Result data returned by getPrivateLinkServicesForM365SecurityCenter.
class GetPrivateLinkServicesForM365SecurityCenterResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// An etag associated with the resource, used for optimistic concurrency when editing it.
  final String? etag;
  /// The resource identifier.
  final String id;
  /// Setting indicating whether the service has a managed identity associated with it.
  final ServicesResourceResponseIdentity? identity;
  /// The kind of the service.
  final String kind;
  /// The resource location.
  final String location;
  /// The resource name.
  final String name;
  /// The common properties of a service.
  final ServicesPropertiesResponse properties;
  /// Required property for system data
  final SystemDataResponse systemData;
  /// The resource tags.
  final Map<String, String>? tags;
  /// The resource type.
  final String type;

  /// Creates a new [GetPrivateLinkServicesForM365SecurityCenterResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [etag] An etag associated with the resource, used for optimistic concurrency when editing it.
  /// [id] The resource identifier.
  /// [identity] Setting indicating whether the service has a managed identity associated with it.
  /// [kind] The kind of the service.
  /// [location] The resource location.
  /// [name] The resource name.
  /// [properties] The common properties of a service.
  /// [systemData] Required property for system data
  /// [tags] The resource tags.
  /// [type] The resource type.
  GetPrivateLinkServicesForM365SecurityCenterResult({
    required this.azureApiVersion,
    this.etag,
    required this.id,
    this.identity,
    required this.kind,
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
      'etag': ?etag,
      'id': id,
      'identity': ?identity == null ? null : identity!.toMap(),
      'kind': kind,
      'location': location,
      'name': name,
      'properties': properties.toMap(),
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetPrivateLinkServicesForM365SecurityCenterResult.fromMap(Map<String, dynamic> map) {
    return GetPrivateLinkServicesForM365SecurityCenterResult(
      azureApiVersion: map['azureApiVersion'] as String,
      etag: map['etag'] == null ? null : map['etag'] as String,
      id: map['id'] as String,
      identity: map['identity'] == null ? null : ServicesResourceResponseIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>()),
      kind: map['kind'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      properties: ServicesPropertiesResponse.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}

