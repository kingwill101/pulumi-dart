// ignore_for_file: unused_element, unnecessary_cast

import 'services_properties_response.dart';
import 'services_resource_response_identity.dart';
import 'system_data_response.dart';

/// Result data returned by getPrivateLinkServicesForMIPPolicySync.
class GetPrivateLinkServicesForMIPPolicySyncResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// An etag associated with the resource, used for optimistic concurrency when editing it.
  final String? etag;
  /// The resource identifier.
  final String? id;
  /// Setting indicating whether the service has a managed identity associated with it.
  final ServicesResourceResponseIdentity? identity;
  /// The kind of the service.
  final String? kind;
  /// The resource location.
  final String? location;
  /// The resource name.
  final String? name;
  /// The common properties of a service.
  final ServicesPropertiesResponse? properties;
  /// Required property for system data
  final SystemDataResponse? systemData;
  /// The resource tags.
  final Map<String, String>? tags;
  /// The resource type.
  final String? type;

  /// Creates a new [GetPrivateLinkServicesForMIPPolicySyncResult].
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
  const GetPrivateLinkServicesForMIPPolicySyncResult({
    this.azureApiVersion,
    this.etag,
    this.id,
    this.identity,
    this.kind,
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
      'etag': ?etag,
      'id': ?id,
      'identity': ?identity?.toMap(),
      'kind': ?kind,
      'location': ?location,
      'name': ?name,
      'properties': ?properties?.toMap(),
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory GetPrivateLinkServicesForMIPPolicySyncResult.fromMap(Map<String, dynamic> map) {
    return GetPrivateLinkServicesForMIPPolicySyncResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return ServicesResourceResponseIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return ServicesPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
