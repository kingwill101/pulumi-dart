// ignore_for_file: unused_element, unnecessary_cast

import 'identity_response.dart';
import 'linked_service_props_response.dart';

/// Result data returned by getLinkedService.
class GetLinkedServiceResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// ResourceId of the link of the linked service.
  final String? id;
  /// Identity for the resource.
  final IdentityResponse? identity;
  /// location of the linked service.
  final String? location;
  /// Friendly name of the linked service.
  final String? name;
  /// LinkedService specific properties.
  final LinkedServicePropsResponse? properties;
  /// Resource type of linked service.
  final String? type;

  /// Creates a new [GetLinkedServiceResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] ResourceId of the link of the linked service.
  /// [identity] Identity for the resource.
  /// [location] location of the linked service.
  /// [name] Friendly name of the linked service.
  /// [properties] LinkedService specific properties.
  /// [type] Resource type of linked service.
  const GetLinkedServiceResult({
    this.azureApiVersion,
    this.id,
    this.identity,
    this.location,
    this.name,
    this.properties,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'id': ?id,
      'identity': ?identity?.toMap(),
      'location': ?location,
      'name': ?name,
      'properties': ?properties?.toMap(),
      'type': ?type,
    };
  }

  factory GetLinkedServiceResult.fromMap(Map<String, dynamic> map) {
    return GetLinkedServiceResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return IdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return LinkedServicePropsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
