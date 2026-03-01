// ignore_for_file: unused_element, unnecessary_cast

import 'metadata_entity_response.dart';

/// Details about environment name, metadata and environment id of an environment
class EnvironmentRecordResponse {
  /// Display name of the user
  final String? displayName;
  /// Id of the environment
  final String? id;
  /// Type of environment
  final String? kind;
  /// Metadata of the record
  final MetadataEntityResponse? metadata;

  /// Creates a new [EnvironmentRecordResponse].
  /// [displayName] Display name of the user
  /// [id] Id of the environment
  /// [kind] Type of environment
  /// [metadata] Metadata of the record
  EnvironmentRecordResponse({
    this.displayName,
    this.id,
    this.kind,
    this.metadata,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'id': ?id,
      'kind': ?kind,
      'metadata': ?metadata == null ? null : metadata!.toMap(),
    };
  }

  factory EnvironmentRecordResponse.fromMap(Map<String, dynamic> map) {
    return EnvironmentRecordResponse(
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      kind: map['kind'] == null ? null : map['kind'] as String,
      metadata: map['metadata'] == null ? null : MetadataEntityResponse.fromMap((map['metadata'] as Map).cast<String, dynamic>()),
    );
  }
}

