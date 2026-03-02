// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'metadata_entity_response.dart';

/// Details about environment name, metadata and environment id of an environment
class EnvironmentRecordResponse {
  /// Display name of the user
  final pulumi.Input<String>? displayName;
  /// Id of the environment
  final pulumi.Input<String>? id;
  /// Type of environment
  final pulumi.Input<String>? kind;
  /// Metadata of the record
  final pulumi.Input<MetadataEntityResponse>? metadata;

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
      'metadata': ?pulumi.Input.mapOptionalInputValue<MetadataEntityResponse, Map<String, dynamic>>(metadata, (value) => value.toMap()),
    };
  }

  factory EnvironmentRecordResponse.fromMap(Map<String, dynamic> map) {
    return EnvironmentRecordResponse(
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      id: map['id'] == null ? null : (map['id']! as String).input(),
      kind: map['kind'] == null ? null : (map['kind']! as String).input(),
      metadata: map['metadata'] == null ? null : (MetadataEntityResponse.fromMap((map['metadata']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

