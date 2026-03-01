// ignore_for_file: unused_element, unnecessary_cast

import 'metadata_entity_response.dart';

/// Record of the service account
class ServiceAccountRecordResponse {
  /// Description of the service account
  final String? description;
  /// Name of the service account
  final String? displayName;
  /// Id of the service account
  final String? id;
  /// Type of account
  final String? kind;
  /// Metadata of the record
  final MetadataEntityResponse? metadata;

  /// Creates a new [ServiceAccountRecordResponse].
  /// [description] Description of the service account
  /// [displayName] Name of the service account
  /// [id] Id of the service account
  /// [kind] Type of account
  /// [metadata] Metadata of the record
  ServiceAccountRecordResponse({
    this.description,
    this.displayName,
    this.id,
    this.kind,
    this.metadata,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayName': ?displayName,
      'id': ?id,
      'kind': ?kind,
      'metadata': ?metadata == null ? null : metadata!.toMap(),
    };
  }

  factory ServiceAccountRecordResponse.fromMap(Map<String, dynamic> map) {
    return ServiceAccountRecordResponse(
      description: map['description'] == null ? null : map['description'] as String,
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      kind: map['kind'] == null ? null : map['kind'] as String,
      metadata: map['metadata'] == null ? null : MetadataEntityResponse.fromMap((map['metadata'] as Map).cast<String, dynamic>()),
    );
  }
}

