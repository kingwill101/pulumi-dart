// ignore_for_file: unused_element, unnecessary_cast

import 'identity_response.dart';
import 'linked_service_props_response.dart';

/// Result data returned by getLinkedService.
class GetLinkedServiceResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// ResourceId of the link of the linked service.
  final String id;
  /// Identity for the resource.
  final IdentityResponse? identity;
  /// location of the linked service.
  final String? location;
  /// Friendly name of the linked service.
  final String name;
  /// LinkedService specific properties.
  final LinkedServicePropsResponse properties;
  /// Resource type of linked service.
  final String type;

  /// Creates a new [GetLinkedServiceResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] ResourceId of the link of the linked service.
  /// [identity] Identity for the resource.
  /// [location] location of the linked service.
  /// [name] Friendly name of the linked service.
  /// [properties] LinkedService specific properties.
  /// [type] Resource type of linked service.
  GetLinkedServiceResult({
    required this.azureApiVersion,
    required this.id,
    this.identity,
    this.location,
    required this.name,
    required this.properties,
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
      'type': type,
    };
  }

  factory GetLinkedServiceResult.fromMap(Map<String, dynamic> map) {
    return GetLinkedServiceResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      identity: map['identity'] == null ? null : IdentityResponse.fromMap((map['identity'] as Map).cast<String, dynamic>()),
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] as String,
      properties: LinkedServicePropsResponse.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

