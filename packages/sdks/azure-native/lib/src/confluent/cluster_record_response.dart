// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_spec_entity_response.dart';
import 'cluster_status_entity_response.dart';
import 'metadata_entity_response.dart';

/// Details of cluster record
class ClusterRecordResponse {
  /// Display name of the cluster
  final pulumi.Input<String>? displayName;
  /// Id of the cluster
  final pulumi.Input<String>? id;
  /// Type of cluster
  final pulumi.Input<String>? kind;
  /// Metadata of the record
  final pulumi.Input<MetadataEntityResponse>? metadata;
  /// Specification of the cluster
  final pulumi.Input<ClusterSpecEntityResponse>? spec;
  /// Specification of the cluster
  final pulumi.Input<ClusterStatusEntityResponse>? status;

  /// Creates a new [ClusterRecordResponse].
  /// [displayName] Display name of the cluster
  /// [id] Id of the cluster
  /// [kind] Type of cluster
  /// [metadata] Metadata of the record
  /// [spec] Specification of the cluster
  /// [status] Specification of the cluster
  const ClusterRecordResponse({
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
      'metadata': ?pulumi.Input.mapOptionalInputValue<MetadataEntityResponse, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'spec': ?pulumi.Input.mapOptionalInputValue<ClusterSpecEntityResponse, Map<String, dynamic>>(spec, (value) => value.toMap()),
      'status': ?pulumi.Input.mapOptionalInputValue<ClusterStatusEntityResponse, Map<String, dynamic>>(status, (value) => value.toMap()),
    };
  }

  factory ClusterRecordResponse.fromMap(Map<String, dynamic> map) {
    return ClusterRecordResponse(
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MetadataEntityResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      spec: (() { final guardedValue = map['spec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterSpecEntityResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterStatusEntityResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
