// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'metadata_entity_response.dart';

/// Record of the service account
class ServiceAccountRecordResponse {
  /// Description of the service account
  final pulumi.Input<String>? description;
  /// Name of the service account
  final pulumi.Input<String>? displayName;
  /// Id of the service account
  final pulumi.Input<String>? id;
  /// Type of account
  final pulumi.Input<String>? kind;
  /// Metadata of the record
  final pulumi.Input<MetadataEntityResponse>? metadata;

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
      'metadata': ?pulumi.Input.mapOptionalInputValue<MetadataEntityResponse, Map<String, dynamic>>(metadata, (value) => value.toMap()),
    };
  }

  factory ServiceAccountRecordResponse.fromMap(Map<String, dynamic> map) {
    return ServiceAccountRecordResponse(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MetadataEntityResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

