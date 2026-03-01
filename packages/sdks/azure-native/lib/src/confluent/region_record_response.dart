// ignore_for_file: unused_element, unnecessary_cast

import 'region_spec_entity_response.dart';
import 'scmetadata_entity_response.dart';

/// Details of region record
class RegionRecordResponse {
  /// Id of the cluster
  final String? id;
  /// Kind of the cluster
  final String? kind;
  /// Metadata of the record
  final SCMetadataEntityResponse? metadata;
  /// Specification of the region
  final RegionSpecEntityResponse? spec;

  /// Creates a new [RegionRecordResponse].
  /// [id] Id of the cluster
  /// [kind] Kind of the cluster
  /// [metadata] Metadata of the record
  /// [spec] Specification of the region
  RegionRecordResponse({
    this.id,
    this.kind,
    this.metadata,
    this.spec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'kind': ?kind,
      'metadata': ?metadata == null ? null : metadata!.toMap(),
      'spec': ?spec == null ? null : spec!.toMap(),
    };
  }

  factory RegionRecordResponse.fromMap(Map<String, dynamic> map) {
    return RegionRecordResponse(
      id: map['id'] == null ? null : map['id'] as String,
      kind: map['kind'] == null ? null : map['kind'] as String,
      metadata: map['metadata'] == null ? null : SCMetadataEntityResponse.fromMap((map['metadata'] as Map).cast<String, dynamic>()),
      spec: map['spec'] == null ? null : RegionSpecEntityResponse.fromMap((map['spec'] as Map).cast<String, dynamic>()),
    );
  }
}

