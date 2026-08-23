// ignore_for_file: unused_element, unnecessary_cast

import 'secret_properties_response.dart';

/// Result data returned by getSecret.
class GetSecretResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Fully qualified identifier of the key vault resource.
  final String id;
  /// Azure location of the key vault resource.
  final String location;
  /// Name of the key vault resource.
  final String name;
  /// Properties of the secret
  final SecretPropertiesResponse properties;
  /// Tags assigned to the key vault resource.
  final Map<String, String> tags;
  /// Resource type of the key vault resource.
  final String type;

  /// Creates a new [GetSecretResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified identifier of the key vault resource.
  /// [location] Azure location of the key vault resource.
  /// [name] Name of the key vault resource.
  /// [properties] Properties of the secret
  /// [tags] Tags assigned to the key vault resource.
  /// [type] Resource type of the key vault resource.
  const GetSecretResult({
    required this.azureApiVersion,
    required this.id,
    required this.location,
    required this.name,
    required this.properties,
    required this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'location': location,
      'name': name,
      'properties': properties.toMap(),
      'tags': tags,
      'type': type,
    };
  }

  factory GetSecretResult.fromMap(Map<String, dynamic> map) {
    return GetSecretResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      properties: SecretPropertiesResponse.fromMap((map['properties']! as Map).cast<String, dynamic>()),
      tags: (map['tags'] as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}
