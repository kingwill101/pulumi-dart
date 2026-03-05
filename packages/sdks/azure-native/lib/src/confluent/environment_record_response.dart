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
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MetadataEntityResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

