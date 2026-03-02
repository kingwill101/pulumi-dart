// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_spec_entity_response.dart';
import 'scmetadata_entity_response.dart';

/// Details of region record
class RegionRecordResponse {
  /// Id of the cluster
  final pulumi.Input<String>? id;
  /// Kind of the cluster
  final pulumi.Input<String>? kind;
  /// Metadata of the record
  final pulumi.Input<SCMetadataEntityResponse>? metadata;
  /// Specification of the region
  final pulumi.Input<RegionSpecEntityResponse>? spec;

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
      'metadata': ?pulumi.Input.mapOptionalInputValue<SCMetadataEntityResponse, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'spec': ?pulumi.Input.mapOptionalInputValue<RegionSpecEntityResponse, Map<String, dynamic>>(spec, (value) => value.toMap()),
    };
  }

  factory RegionRecordResponse.fromMap(Map<String, dynamic> map) {
    return RegionRecordResponse(
      id: map['id'] == null ? null : (map['id'] as String).input(),
      kind: map['kind'] == null ? null : (map['kind'] as String).input(),
      metadata: map['metadata'] == null ? null : (SCMetadataEntityResponse.fromMap((map['metadata'] as Map).cast<String, dynamic>())).input(),
      spec: map['spec'] == null ? null : (RegionSpecEntityResponse.fromMap((map['spec'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

