// ignore_for_file: unused_element, unnecessary_cast

import 'cluster_spec_entity_response.dart';
import 'cluster_status_entity_response.dart';
import 'metadata_entity_response.dart';

/// Details of cluster record
class ClusterRecordResponse {
  /// Display name of the cluster
  final String? displayName;
  /// Id of the cluster
  final String? id;
  /// Type of cluster
  final String? kind;
  /// Metadata of the record
  final MetadataEntityResponse? metadata;
  /// Specification of the cluster
  final ClusterSpecEntityResponse? spec;
  /// Specification of the cluster
  final ClusterStatusEntityResponse? status;

  /// Creates a new [ClusterRecordResponse].
  /// [displayName] Display name of the cluster
  /// [id] Id of the cluster
  /// [kind] Type of cluster
  /// [metadata] Metadata of the record
  /// [spec] Specification of the cluster
  /// [status] Specification of the cluster
  ClusterRecordResponse({
    this.displayName,
    this.id,
    this.kind,
    this.metadata,
    this.spec,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'id': ?id,
      'kind': ?kind,
      'metadata': ?metadata == null ? null : metadata!.toMap(),
      'spec': ?spec == null ? null : spec!.toMap(),
      'status': ?status == null ? null : status!.toMap(),
    };
  }

  factory ClusterRecordResponse.fromMap(Map<String, dynamic> map) {
    return ClusterRecordResponse(
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      kind: map['kind'] == null ? null : map['kind'] as String,
      metadata: map['metadata'] == null ? null : MetadataEntityResponse.fromMap((map['metadata'] as Map).cast<String, dynamic>()),
      spec: map['spec'] == null ? null : ClusterSpecEntityResponse.fromMap((map['spec'] as Map).cast<String, dynamic>()),
      status: map['status'] == null ? null : ClusterStatusEntityResponse.fromMap((map['status'] as Map).cast<String, dynamic>()),
    );
  }
}

