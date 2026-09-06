// ignore_for_file: unused_element, unnecessary_cast

import 'secret_properties_response.dart';

/// Result data returned by getSecret.
class GetSecretResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Fully qualified identifier of the key vault resource.
  final String? id;
  /// Azure location of the key vault resource.
  final String? location;
  /// Name of the key vault resource.
  final String? name;
  /// Properties of the secret
  final SecretPropertiesResponse? properties;
  /// Tags assigned to the key vault resource.
  final Map<String, String>? tags;
  /// Resource type of the key vault resource.
  final String? type;

  /// Creates a new [GetSecretResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified identifier of the key vault resource.
  /// [location] Azure location of the key vault resource.
  /// [name] Name of the key vault resource.
  /// [properties] Properties of the secret
  /// [tags] Tags assigned to the key vault resource.
  /// [type] Resource type of the key vault resource.
  const GetSecretResult({
    this.azureApiVersion,
    this.id,
    this.location,
    this.name,
    this.properties,
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
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory GetSecretResult.fromMap(Map<String, dynamic> map) {
    return GetSecretResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return SecretPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
