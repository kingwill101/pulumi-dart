// ignore_for_file: unused_element, unnecessary_cast

import 'private_link_association_properties_expanded_response.dart';

/// Result data returned by getPrivateLinkAssociation.
class GetPrivateLinkAssociationResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The plaResourceID.
  final String? id;
  /// The pla name.
  final String? name;
  /// The private link association properties.
  final PrivateLinkAssociationPropertiesExpandedResponse? properties;
  /// The operation type.
  final String? type;

  /// Creates a new [GetPrivateLinkAssociationResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] The plaResourceID.
  /// [name] The pla name.
  /// [properties] The private link association properties.
  /// [type] The operation type.
  const GetPrivateLinkAssociationResult({
    this.azureApiVersion,
    this.id,
    this.name,
    this.properties,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'id': ?id,
      'name': ?name,
      'properties': ?properties?.toMap(),
      'type': ?type,
    };
  }

  factory GetPrivateLinkAssociationResult.fromMap(Map<String, dynamic> map) {
    return GetPrivateLinkAssociationResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return PrivateLinkAssociationPropertiesExpandedResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
