// ignore_for_file: unused_element, unnecessary_cast

import 'private_link_association_properties_expanded_response.dart';

/// Result data returned by getPrivateLinkAssociation.
class GetPrivateLinkAssociationResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The plaResourceID.
  final String id;
  /// The pla name.
  final String name;
  /// The private link association properties.
  final PrivateLinkAssociationPropertiesExpandedResponse properties;
  /// The operation type.
  final String type;

  /// Creates a new [GetPrivateLinkAssociationResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] The plaResourceID.
  /// [name] The pla name.
  /// [properties] The private link association properties.
  /// [type] The operation type.
  GetPrivateLinkAssociationResult({
    required this.azureApiVersion,
    required this.id,
    required this.name,
    required this.properties,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'name': name,
      'properties': properties.toMap(),
      'type': type,
    };
  }

  factory GetPrivateLinkAssociationResult.fromMap(Map<String, dynamic> map) {
    return GetPrivateLinkAssociationResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      properties: PrivateLinkAssociationPropertiesExpandedResponse.fromMap((map['properties']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

