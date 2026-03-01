// ignore_for_file: unused_element, unnecessary_cast

import 'application_artifact_type.dart';

/// Application definition artifact.
class ApplicationDefinitionArtifact {
  /// The managed application definition artifact name.
  final String name;
  /// The managed application definition artifact type.
  final ApplicationArtifactType type;
  /// The managed application definition artifact blob uri.
  final String uri;

  /// Creates a new [ApplicationDefinitionArtifact].
  /// [name] The managed application definition artifact name.
  /// [type] The managed application definition artifact type.
  /// [uri] The managed application definition artifact blob uri.
  ApplicationDefinitionArtifact({
    required this.name,
    required this.type,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'type': type.value,
      'uri': uri,
    };
  }

  factory ApplicationDefinitionArtifact.fromMap(Map<String, dynamic> map) {
    return ApplicationDefinitionArtifact(
      name: map['name'] as String,
      type: ApplicationArtifactType.fromValue(map['type'] as String),
      uri: map['uri'] as String,
    );
  }
}

